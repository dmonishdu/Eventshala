
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Event {
   
 public static int Query(String name, String email, String msg) throws SQLException {
        Connection conn = database.getConn();
        String sql = "INSERT INTO Queries(name,email,message) VALUES ('" + name + "','" + email + "','" + msg + "')";
        int result = database.MyexecuteUpdate(conn, sql);
        database.CloseConnection(conn);
        return result;

    }
    public static int Register(String userName, String email, String password) throws SQLException {
        Connection conn = database.getConn();
        password = database.md5Map(password);
        String sql = "INSERT INTO users(userName,email,password)VALUES ('" + userName + "','" + email + "','" + password + "')";
        int result = database.MyexecuteUpdate(conn, sql);
        database.CloseConnection(conn);
        return result;
    }

    public static boolean Login(String userName, String password) throws SQLException {
        String Username = null;
        String Password = null;
        Connection conn = database.getConn();
        password = database.md5Map(password);
        String sql = "SELECT userName, password FROM users WHERE userName='" + userName + "'" + "AND password='" + password + "'";
        ResultSet rs = database.MyexecuteQuery(conn, sql);
        if (rs.next()) {
            Username = rs.getString("userName");
            Password = rs.getString("password");
        }
        if (Username != null && Password != null && userName.equals(Username) && password.equals(Password)) {
               database.CloseConnection(conn);
            return true;
        } else {
               database.CloseConnection(conn);
            return false;
        }
   
    }

    public static int PostEvent(String userName, String eventName, String eventDate, String eventDec, String eventPhoto, String url) throws SQLException {
        Connection conn = database.getConn();
        String sql = "INSERT INTO postevent(userName,eventName,eventDate,eventDec,eventPhoto,eventTitle) VALUES ('" + userName + "','" + eventName + "','" + eventDate + "','" + eventDec + "','" + eventPhoto + "','" + url + "')";
        int result = database.MyexecuteUpdate(conn, sql);
           database.CloseConnection(conn);
        return result;

    }

    public static int RegisterforEvent(String Name, String Mobile, String Email, String Parent, String eventId) throws SQLException {
        Connection conn = database.getConn();
        String sql = "INSERT INTO registration(name,mobile,email,eventId,parent)VALUES ('" + Name + "','" + Mobile + "','" + Email + "','" + Parent + "','" + eventId + "')";
        int result = database.MyexecuteUpdate(conn, sql);
           database.CloseConnection(conn);
        return result;
    }

    public static int updateEvent(String updateName, String updateDate, String Dec, String Title, String id) throws SQLException {
        Connection conn = database.getConn();
        String sql = "UPDATE postevent SET eventName=" + "'" + updateName + "'," + "eventDate=" + "'" + updateDate + "'," + "eventDec=" + "'" + Dec + "'," + "eventTitle=" + "'" + Title + "' WHERE id='" + id + "'";
        int result = database.MyexecuteUpdate(conn, sql);
           database.CloseConnection(conn);
        return result;
    }

    public static int ApproveEvent(String id) throws SQLException {
        Connection conn = database.getConn();
        String sql = "UPDATE postevent SET status=" + "'Active' WHERE id='" + id + "'";
        int result = database.MyexecuteUpdate(conn, sql);
           database.CloseConnection(conn);
        return result;
    }

    public static int DeactivateEvent(String id) throws SQLException {
        Connection conn = database.getConn();
        String sql = "UPDATE postevent SET status=" + "'Deactivated' WHERE id='" + id + "'";
        int result = database.MyexecuteUpdate(conn, sql);
           database.CloseConnection(conn);
        return result;
    }
public static int deleteQyery(String id) throws SQLException {
        Connection conn = database.getConn();
        String sql = "DELETE  FROM queries  WHERE id='" + id + "'";
        int result = database.MyexecuteUpdate(conn, sql);
           database.CloseConnection(conn);
        return result;
    }
public static int updatestatus(String id) throws SQLException{
     Connection conn = database.getConn();
     String status="Rejected";
        String sql = "UPDATE postevent SET status=" + "'" + status + "' WHERE id='" + id + "'";
        int result = database.MyexecuteUpdate(conn, sql);
           database.CloseConnection(conn);
        return result;
}
    static int PostEvent(String userName, String eventName, String eventDate, String eventDec, String[] eventPhoto, String title) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
