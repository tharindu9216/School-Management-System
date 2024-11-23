package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.customer;
import utils.DBConnect;

public class customerService {

	public void regCustomer(customer cus) {
		
		try {
			String query = "insert into customer values ('"+cus.getEmail()+"','"+cus.getFull_name()+"','"+cus.getAddress()+"','"+cus.getCity()+"','"+cus.getState()+"','"+cus.getZip_code()+"','"+cus.getCredit_card_number()+"','"+cus.getExp_month()+"','"+cus.getCvv()+"','"+cus.getAmount()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<customer> getAllCustomer(){
		
		try {
			ArrayList<customer> listCus = new ArrayList<customer>();
			
			String query = "select * from customer";
			
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				customer cus = new customer();
				cus.setEmail(rs.getString("email"));
				cus.setFull_name(rs.getString("full_name"));
				cus.setAddress(rs.getString("address"));
				cus.setCity(rs.getString("city"));
				cus.setState(rs.getString("state"));
				cus.setZip_code(rs.getString("zip_code"));
				cus.setCredit_card_number(rs.getString("credit_card_number"));
				cus.setExp_month(rs.getString("exp_month"));
				cus.setCvv(rs.getString("exp_month"));
				cus.setAmount(rs.getString("amount"));
				listCus.add(cus);
				
			}
			
			return listCus;
			
		}catch (Exception e) {
			
			e.printStackTrace();
			return null;
			
		}
		
	}
	
	public customer singleDataButton(customer cus) {
		try {
			String query = "select * from customer where email = '"+cus.getEmail()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				cus.setEmail(rs.getString("email"));
				cus.setFull_name(rs.getString("full_name"));
				cus.setAddress(rs.getString("address"));
				cus.setCity(rs.getString("city"));
				cus.setState(rs.getString("state"));
				cus.setZip_code(rs.getString("zip_code"));
				cus.setCredit_card_number(rs.getString("credit_card_number"));
				cus.setExp_month(rs.getString("exp_month"));
				cus.setCvv(rs.getString("exp_month"));
				cus.setAmount(rs.getString("amount"));
				return cus;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public void updateCustomer(customer customer) {
		try {
			
			String query = "update customer SET email= '"+customer.getEmail()+"',full_name= '"+customer.getFull_name()+"',address= '"+customer.getAddress()+"',city= '"+customer.getCity()+"',state= '"+customer.getState()+"',zip_code= '"+customer.getZip_code()+"',credit_card_number= '"+customer.getCredit_card_number()+"',exp_month='"+customer.getExp_month()+"',cvv= '"+customer.getCvv()+"',amount= '"+customer.getAmount()+"' Where email='"+customer.getEmail()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteCustomer(customer cus) {
		try {
			String query = "Delete from customer where email = '"+cus.getEmail()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
} 
