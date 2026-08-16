package javax.sql;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.EventObject;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/StatementEvent.class
 */
public class StatementEvent extends EventObject {
    public StatementEvent(PooledConnection con, PreparedStatement statement) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public StatementEvent(PooledConnection con, PreparedStatement statement, SQLException exception) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public PreparedStatement getStatement() {
        throw new RuntimeException("Stub!");
    }

    public SQLException getSQLException() {
        throw new RuntimeException("Stub!");
    }
}
