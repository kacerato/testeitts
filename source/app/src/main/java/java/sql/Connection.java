package java.sql;

import java.util.Map;
import java.util.Properties;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/Connection.class
 */
public interface Connection extends Wrapper, AutoCloseable {
    public static final int TRANSACTION_NONE = 0;
    public static final int TRANSACTION_READ_COMMITTED = 2;
    public static final int TRANSACTION_READ_UNCOMMITTED = 1;
    public static final int TRANSACTION_REPEATABLE_READ = 4;
    public static final int TRANSACTION_SERIALIZABLE = 8;

    Statement createStatement() throws SQLException;

    PreparedStatement prepareStatement(String str) throws SQLException;

    CallableStatement prepareCall(String str) throws SQLException;

    String nativeSQL(String str) throws SQLException;

    void setAutoCommit(boolean z10) throws SQLException;

    boolean getAutoCommit() throws SQLException;

    void commit() throws SQLException;

    void rollback() throws SQLException;

    @Override
    void close() throws SQLException;

    boolean isClosed() throws SQLException;

    DatabaseMetaData getMetaData() throws SQLException;

    void setReadOnly(boolean z10) throws SQLException;

    boolean isReadOnly() throws SQLException;

    void setCatalog(String str) throws SQLException;

    String getCatalog() throws SQLException;

    void setTransactionIsolation(int i10) throws SQLException;

    int getTransactionIsolation() throws SQLException;

    SQLWarning getWarnings() throws SQLException;

    void clearWarnings() throws SQLException;

    Statement createStatement(int i10, int i11) throws SQLException;

    PreparedStatement prepareStatement(String str, int i10, int i11) throws SQLException;

    CallableStatement prepareCall(String str, int i10, int i11) throws SQLException;

    Map<String, Class<?>> getTypeMap() throws SQLException;

    void setTypeMap(Map<String, Class<?>> map) throws SQLException;

    void setHoldability(int i10) throws SQLException;

    int getHoldability() throws SQLException;

    Savepoint setSavepoint() throws SQLException;

    Savepoint setSavepoint(String str) throws SQLException;

    void rollback(Savepoint savepoint) throws SQLException;

    void releaseSavepoint(Savepoint savepoint) throws SQLException;

    Statement createStatement(int i10, int i11, int i12) throws SQLException;

    PreparedStatement prepareStatement(String str, int i10, int i11, int i12) throws SQLException;

    CallableStatement prepareCall(String str, int i10, int i11, int i12) throws SQLException;

    PreparedStatement prepareStatement(String str, int i10) throws SQLException;

    PreparedStatement prepareStatement(String str, int[] iArr) throws SQLException;

    PreparedStatement prepareStatement(String str, String[] strArr) throws SQLException;

    Clob createClob() throws SQLException;

    Blob createBlob() throws SQLException;

    NClob createNClob() throws SQLException;

    SQLXML createSQLXML() throws SQLException;

    boolean isValid(int i10) throws SQLException;

    void setClientInfo(String str, String str2) throws SQLClientInfoException;

    void setClientInfo(Properties properties) throws SQLClientInfoException;

    String getClientInfo(String str) throws SQLException;

    Properties getClientInfo() throws SQLException;

    Array createArrayOf(String str, Object[] objArr) throws SQLException;

    Struct createStruct(String str, Object[] objArr) throws SQLException;
}
