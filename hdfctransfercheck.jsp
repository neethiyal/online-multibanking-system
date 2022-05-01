<%-- 
    Document   : hdfctransfercheck
    Created on : Jan 17, 2022, 4:27:37 PM
    Author     : JAVA
--%>
<%@page import="java.util.Date"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
<%@page import="java.sql.ResultSet"%>
 <%
    String iname=""+session.getAttribute("iname");
    String acno = ""+session.getAttribute("iacc");

    String cash = request.getParameter("cash");
    String accno=request.getParameter("accountno");
    //String bank=request.getParameter("bank");
    //JOptionPane.showMessageDialog(null, acno);

    String atmpin=request.getParameter("pin");
//JOptionPane.showMessageDialog(null, atmpin);
    int cas=Integer.parseInt(cash);
    
    String query1=("select * from bankdetails where name='"+iname+"' and pin='"+atmpin+"'  ");
    PreparedStatement ps1 = Database.con().prepareStatement(query1);
    ResultSet rs=ps1.executeQuery();
    if(rs.next()){
    //String uname=rs.getString("name");
    String bl=rs.getString("balance"); 
    int b=Integer.parseInt(bl);
    	 if( b>=cas ){
             
        
    		 PreparedStatement pst = Database.con().prepareStatement("update bankdetails set balance =balance+"+cash+" where accountno = '"+accno+"' ");
    		 //pst.setString(1,cash);
    		 //pst.setString(2,accno);
    		 //System.out.println("update::"+pst);
    		 pst.executeUpdate();
        
                 
                 
                 PreparedStatement ps = Database.con().prepareStatement("update bankdetails set balance =balance-? where accountno = ?");
    		 ps.setString(1,cash);
    		 ps.setString(2,acno);
    		 //System.out.println("update::"+ps);
    		 ps.executeUpdate();
    		 
                 
                 
                  PreparedStatement p = Database.con().prepareStatement("insert into transactn_histroy(accno,name,receiver,cash,time)values(?,?,?,?,?)");
    		 p.setString(1,acno);
    		 p.setString(2,iname);
    		 p.setString(3,accno);
                 p.setString(4,cash);
                 p.setString(5,new Date().toLocaleString());
    		// System.out.println("update::"+p);
    		 p.executeUpdate();
    		
    		 
    		 JOptionPane.showMessageDialog(null, "Transaction success");
    	    	response.sendRedirect("hdfctransfer.jsp");
    		
         }
         
          else{
             JOptionPane.showMessageDialog(null, "Insufficient Balance");
    	response.sendRedirect("hdfctransfer.jsp");
         }
         
    }
        
    else{
             JOptionPane.showMessageDialog(null, " Enter Valid Pin");
    	response.sendRedirect("hdfctransfer.jsp");
         }
    
    
    
    
    
    %> 
