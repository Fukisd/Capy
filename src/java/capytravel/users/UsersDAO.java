/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package capytravel.users;

import capytravel.utils.DBUtils;
import static com.sun.corba.se.impl.util.Utility.printStackTrace;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author a
 */
public class UsersDAO {

    private Connection con = null;
    private PreparedStatement pstm = null;
    private ResultSet rs = null;

    public boolean checkLogin(String name, String password) throws SQLException {

        try {
            // ket noi database
            con = DBUtils.getConnection();

            if (con != null) {

                // set cau truy van
                String sql = "SELECT username "
                        + "FROM Users "
                        + "WHERE userName = ? AND  password = ? ";

                //prepare cau truy van
                pstm = con.prepareCall(sql);

                pstm.setString(1, name);
                pstm.setString(2, password);

                //execute truy van
                rs = pstm.executeQuery();

                if (rs.next()) {
                    return true;
                }
            }

        } catch (SQLException e) {
            printStackTrace();
        } finally {

            //dong resultset
            if (rs != null) {
                rs.close();
            }

            //dong prepare statement
            if (pstm != null) {
                pstm.close();
            }

            //dong connection
            if (con != null) {
                con.close();
            }
        }
        return false;
    }

    private ArrayList<UsersDTO> UserList;

    //ham nay dung de in ra danh sach User(hien tai se in ra bao gom ca tai khoan admin)
    public ArrayList<UsersDTO> read() throws SQLException {

        try {
            // ket noi database
            con = DBUtils.getConnection();

            if (con != null) {

                // set cau truy van
                String sql = "SELECT username, password "
                        + "FROM Users ";

                //prepare cau truy van
                pstm = con.prepareCall(sql);

                //execute truy van
                rs = pstm.executeQuery();

                while (rs.next()) {

                    if (UserList == null) {
                        UserList = new ArrayList<>();
                    }

                    String username = rs.getString("username");
                    String password = rs.getString("password");

                    UsersDTO user = new UsersDTO();
                    user.setUserName(username);
                    user.setPassword(password);

                    UserList.add(user);
                }
            }

        } catch (SQLException e) {
            printStackTrace();
        } finally {

            //dong resultset
            if (rs != null) {
                rs.close();
            }

            //dong prepare statement
            if (pstm != null) {
                pstm.close();
            }

            //dong connection
            if (con != null) {
                con.close();
            }
        }

        return UserList;

    }
}
