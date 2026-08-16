package javax.sql;

import java.sql.SQLException;
import java.util.EventObject;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/ConnectionEvent.class
 */
public class ConnectionEvent extends EventObject {
    public ConnectionEvent(PooledConnection con) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public ConnectionEvent(PooledConnection con, SQLException ex) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public SQLException getSQLException() {
        throw new RuntimeException("Stub!");
    }
}
