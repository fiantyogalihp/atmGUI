/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package atmgui;

import java.sql.*;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;

/**
 *
 * @author fiyuu
 */
public class setor_tarik_kelipatan_50_page extends javax.swing.JFrame {

	private final String id;
	private final DBConnection con;
	public setor_tarik_kelipatan_50_page() {
		this.con = new DBConnection();
		this.id = session.getInstance().getUserId();
		initComponents();
		setModelList();
	}
	
/**
	 * Creates new form setor_tarik_page
	 */
	private void setModelList(){
		String[] items = {"Pilih jenis Transaksi",  "tarik", "setor"};
		
		jenis_comboBox.setModel(new DefaultComboBoxModel<>(items));	
	}

	/**
	 * This method is called from within the constructor to initialize the
	 * form. WARNING: Do NOT modify this code. The content of this method is
	 * always regenerated by the Form Editor.
	 */
	@SuppressWarnings("unchecked")
        // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
        private void initComponents() {

                jLabel1 = new javax.swing.JLabel();
                jenis_comboBox = new javax.swing.JComboBox<>();
                jLabel2 = new javax.swing.JLabel();
                jumlah_textfield = new javax.swing.JTextField();
                submit_button = new javax.swing.JButton();
                jLabel3 = new javax.swing.JLabel();
                jLabel4 = new javax.swing.JLabel();
                jLabel5 = new javax.swing.JLabel();
                back_button = new javax.swing.JButton();

                setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

                jLabel1.setText("Jenis");

                jenis_comboBox.addActionListener(new java.awt.event.ActionListener() {
                        public void actionPerformed(java.awt.event.ActionEvent evt) {
                                jenis_comboBoxActionPerformed(evt);
                        }
                });

                jLabel2.setText("Jumlah");

                submit_button.setText("Submit");
                submit_button.addActionListener(new java.awt.event.ActionListener() {
                        public void actionPerformed(java.awt.event.ActionEvent evt) {
                                submit_buttonActionPerformed(evt);
                        }
                });

                jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
                jLabel3.setText("Setor / Tarik tunai");

                jLabel4.setForeground(new java.awt.Color(255, 0, 0));
                jLabel4.setText("- JUMLAH TRANSAKSI HARUS KELIPATAN 50.000");

                jLabel5.setForeground(new java.awt.Color(255, 0, 0));
                jLabel5.setText("- JUMLAH HARUS SATUAN RIBU, RATUS, DLL");

                back_button.setText("Back");
                back_button.addActionListener(new java.awt.event.ActionListener() {
                        public void actionPerformed(java.awt.event.ActionEvent evt) {
                                back_buttonActionPerformed(evt);
                        }
                });

                javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
                getContentPane().setLayout(layout);
                layout.setHorizontalGroup(
                        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(layout.createSequentialGroup()
                                                .addGap(122, 122, 122)
                                                .addComponent(jLabel3))
                                        .addGroup(layout.createSequentialGroup()
                                                .addGap(18, 18, 18)
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                        .addComponent(submit_button)
                                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                                .addComponent(back_button)
                                                                .addGroup(layout.createSequentialGroup()
                                                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                                                .addComponent(jLabel2)
                                                                                .addComponent(jLabel1))
                                                                        .addGap(45, 45, 45)
                                                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                                                .addComponent(jLabel4)
                                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                                                        .addComponent(jenis_comboBox, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                                                        .addComponent(jumlah_textfield, javax.swing.GroupLayout.PREFERRED_SIZE, 153, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                                                .addComponent(jLabel5)))))))
                                .addContainerGap(42, Short.MAX_VALUE))
                );
                layout.setVerticalGroup(
                        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel3)
                                .addGap(29, 29, 29)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(jLabel1)
                                        .addComponent(jenis_comboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(jLabel2)
                                        .addComponent(jumlah_textfield, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel4)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel5)
                                .addGap(29, 29, 29)
                                .addComponent(submit_button)
                                .addGap(18, 18, 18)
                                .addComponent(back_button)
                                .addContainerGap(43, Short.MAX_VALUE))
                );

                pack();
        }// </editor-fold>//GEN-END:initComponents

        private void jenis_comboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jenis_comboBoxActionPerformed
                // TODO add your handling code here:
        }//GEN-LAST:event_jenis_comboBoxActionPerformed

        private void submit_buttonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_submit_buttonActionPerformed
                // TODO add your handling code here:
	String jenis = (String) jenis_comboBox.getSelectedItem();
	String jumlah_validation = jumlah_textfield.getText();
	
	if (jenis.equals("tarik") || jenis.equals("setor")) {
	} else {
		JOptionPane.showMessageDialog(null, "Mohon pilih jenis transaksi!");
		return;
	}
	
	if (jumlah_validation.equals("")) {
		JOptionPane.showMessageDialog(null, "Jumlah Setor / Tarik Tunai tidak boleh kosong");
		return;
	}
	
	Integer jumlah = Integer.valueOf(jumlah_validation);

	if (jumlah % 50000 != 0) {
		JOptionPane.showMessageDialog(null, "Jumlah Setor / Tarik Tunai harus Kelipatan 50!");
		return;
	}
	
	String insert_transaksi = "INSERT INTO setor_tarik_tunai SET user_id = ?, jenis = ?, jumlah = ?, sisa_saldo = ?, tgl = NOW()";
	String select_user = "SELECT * FROM user WHERE id = ?";
	
	String update_user = "UPDATE user SET jumlah_saldo = ? WHERE id = ?";
	
	try {
		PreparedStatement user = con.connect().prepareStatement(select_user);
		user.setString(1, id);
		
		ResultSet user_result = user.executeQuery();
		 
		Integer sisa_saldo = 0;
		if (user_result.next()) {
			sisa_saldo = user_result.getInt("jumlah_saldo");
			if (jenis.equals("tarik")) {
				
				if ( jumlah % 50000 == 0 && sisa_saldo - jumlah < 50000) {
					JOptionPane.showMessageDialog(null, "Minimal batas sisa saldo anda harus 50.000, anda tidak bisa melakukan penarikan dengan jumlah sisa saldo dibawah 50.000");
					return;
				}
				sisa_saldo -=  jumlah;
			} else if(jenis.equals("setor") && jumlah % 50000 == 0){
				sisa_saldo += jumlah;
			}
		
			PreparedStatement transaksi = con.connect().prepareStatement(insert_transaksi);
			transaksi.setString(1, id);
			transaksi.setString(2, jenis);
			transaksi.setInt(3, jumlah);
			transaksi.setInt(4, sisa_saldo);

			PreparedStatement update_saldo = con.connect().prepareStatement(update_user);
			update_saldo.setInt(1, sisa_saldo);
			update_saldo.setString(2, id);

			int result_transaksi = transaksi.executeUpdate();
			int result_saldo = update_saldo.executeUpdate();

			if (result_transaksi > 0 && result_saldo > 0) {
				JOptionPane.showMessageDialog(this, jenis + " anda berhasil!!");

				session.getInstance().setUserId(id);

				dashboard_page dashbooard = new dashboard_page();
				dashbooard.setLocationRelativeTo(null);
				dashbooard.setVisible(true);
				dispose();
			} else {
				JOptionPane.showMessageDialog(null, jenis + "anda gagal!!");
				return;
			}
			
			transaksi.close();
			update_saldo.close();
		}
		
		user.close();
		user_result.close();
		con.connect().close();

	} catch (SQLException e) {
		e.printStackTrace();
	}
	
        }//GEN-LAST:event_submit_buttonActionPerformed

        private void back_buttonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_back_buttonActionPerformed
                // TODO add your handling code here:
                session.getInstance().setUserId(id);

                dashboard_page dashboard = new dashboard_page();
                dashboard.setLocationRelativeTo(null);
                dashboard.setVisible(true);
                dispose();
        }//GEN-LAST:event_back_buttonActionPerformed

	/**
	 * @param args the command line arguments
	 */
	public static void main(String args[]) {
		/* Set the Nimbus look and feel */
		//<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
		/* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
		 */
		try {
			for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
				if ("Nimbus".equals(info.getName())) {
					javax.swing.UIManager.setLookAndFeel(info.getClassName());
					break;
				}
			}
		} catch (ClassNotFoundException ex) {
			java.util.logging.Logger.getLogger(setor_tarik_kelipatan_50_page.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
		} catch (InstantiationException ex) {
			java.util.logging.Logger.getLogger(setor_tarik_kelipatan_50_page.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
		} catch (IllegalAccessException ex) {
			java.util.logging.Logger.getLogger(setor_tarik_kelipatan_50_page.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
		} catch (javax.swing.UnsupportedLookAndFeelException ex) {
			java.util.logging.Logger.getLogger(setor_tarik_kelipatan_50_page.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
		}
		//</editor-fold>
		//</editor-fold>

		/* Create and display the form */
		java.awt.EventQueue.invokeLater(new Runnable() {
			@Override
			public void run() {
				new setor_tarik_kelipatan_50_page().setVisible(true);
			}
		});
	}

        // Variables declaration - do not modify//GEN-BEGIN:variables
        private javax.swing.JButton back_button;
        private javax.swing.JLabel jLabel1;
        private javax.swing.JLabel jLabel2;
        private javax.swing.JLabel jLabel3;
        private javax.swing.JLabel jLabel4;
        private javax.swing.JLabel jLabel5;
        private javax.swing.JComboBox<String> jenis_comboBox;
        private javax.swing.JTextField jumlah_textfield;
        private javax.swing.JButton submit_button;
        // End of variables declaration//GEN-END:variables
}
