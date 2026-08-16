package javax.sql;

import java.sql.Connection;
import java.sql.SQLException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/PooledConnection.class
 */
public interface PooledConnection {
    Connection getConnection() throws SQLException;

    void close() throws SQLException;

    void addConnectionEventListener(ConnectionEventListener connectionEventListener);

    void removeConnectionEventListener(ConnectionEventListener connectionEventListener);

    void addStatementEventListener(StatementEventListener statementEventListener);

    void removeStatementEventListener(StatementEventListener statementEventListener);
}
