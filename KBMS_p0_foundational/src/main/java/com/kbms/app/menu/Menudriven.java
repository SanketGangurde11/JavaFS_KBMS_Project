package com.kbms.app.menu;
import java.awt.Menu;
//import java.io.IOException;
import com.kbms.dao.AdminDaoImpl;
//import com.kbms.configuration.DatabaseConnection;
//import java.awt.*;
//import com.kbms.configuration.QueryUtil;
import com.kbms.constant.Constants;
//import com.kbms.model.*;
//import java.sql.*;
import java.util.Scanner;
//import com.kbms.model.Admin;
import org.apache.log4j.Logger;
//import java.util.*;

public class Menudriven {
	static AdminDaoImpl ad=new AdminDaoImpl();
	private static final Logger log=Logger.getLogger(Menu.class);	
		public static void showMenu() throws Exception {
			log.info(Constants.WELCOME_MESSAGE);
			log.info(Constants.SIGN_IN);
			log.info("Enter 1 to Login ");	
			char choice = 'y';
			do {
				
				Scanner choiceScan = new Scanner(System.in);
				choice = choiceScan.next().charAt(0);
				switch (choice) {
				case '1':
					ad.login();
				break;
				default:
					log.info("\t\t\tWrong option selected!");
				}
				
			} while (choice !='n');
		}

		public static void signIn() throws Exception {
			do {
				
				String ch;
				int choice = 0;
				Scanner sc = new Scanner(System.in);
				log.info("===============================================================");
				log.info("\t1. Add Products\n\t2. Delete Products\n\t3. Update Products\n\t4. Show Existing Product\n\t5. Exit");
				System.out.print("\n\tEnter choice :\t");
				ch = sc.nextLine();
				try {
					choice = Integer.parseInt(ch);

				} catch (Exception e) {
					choice = 4;
				}

				switch (choice) {
				case 1:
					
					ad.addProduct();
					break;
				case 2:

					ad.removeProduct();
					break;
				case 3:
					Scanner input=new Scanner(System.in);
					log.info("Enter the Product id");
					int id=input.nextInt();
					ad.getProductById(id);
					ad.updateProduct(id);
					break;
				case 4:
					ad.getAllProducts();
					return;
				case 5:
					log.info("Thank you");
				case 6:
					
				default:
					log.info("\t"+Constants.wrongInput+"\n\n");
				}
			} while (true);
		}
}