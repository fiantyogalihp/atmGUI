/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package atmgui;

/**
 *
 * @author fiyuu
 */
public class AtmGUI {

	/**
	 * @param args the command line arguments
	 */
	public static void main(String[] args) {
		login_page login = new login_page();
		login.setDefaultCloseOperation(login_page.EXIT_ON_CLOSE);
		login.setLocationRelativeTo(null);
		login.setVisible(true);
	}
	
}
