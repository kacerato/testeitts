package java.sql;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/Statement.class
 */
public interface Statement extends Wrapper, AutoCloseable {
    public static final int CLOSE_ALL_RESULTS = 3;
    public static final int CLOSE_CURRENT_RESULT = 1;
    public static final int EXECUTE_FAILED = -3;
    public static final int KEEP_CURRENT_RESULT = 2;
    public static final int NO_GENERATED_KEYS = 2;
    public static final int RETURN_GENERATED_KEYS = 1;
    public static final int SUCCESS_NO_INFO = -2;

    ResultSet executeQuery(String str) throws SQLException;

    int executeUpdate(String str) throws SQLException;

    @Override
    void close() throws SQLException;

    int getMaxFieldSize() throws SQLException;

    void setMaxFieldSize(int i10) throws SQLException;

    int getMaxRows() throws SQLException;

    void setMaxRows(int i10) throws SQLException;

    void setEscapeProcessing(boolean z10) throws SQLException;

    int getQueryTimeout() throws SQLException;

    void setQueryTimeout(int i10) throws SQLException;

    void cancel() throws SQLException;

    SQLWarning getWarnings() throws SQLException;

    void clearWarnings() throws SQLException;

    void setCursorName(String str) throws SQLException;

    boolean execute(String str) throws SQLException;

    ResultSet getResultSet() throws SQLException;

    int getUpdateCount() throws SQLException;

    boolean getMoreResults() throws SQLException;

    void setFetchDirection(int i10) throws SQLException;

    int getFetchDirection() throws SQLException;

    void setFetchSize(int i10) throws SQLException;

    int getFetchSize() throws SQLException;

    int getResultSetConcurrency() throws SQLException;

    int getResultSetType() throws SQLException;

    void addBatch(String str) throws SQLException;

    void clearBatch() throws SQLException;

    int[] executeBatch() throws SQLException;

    Connection getConnection() throws SQLException;

    boolean getMoreResults(int i10) throws SQLException;

    ResultSet getGeneratedKeys() throws SQLException;

    int executeUpdate(String str, int i10) throws SQLException;

    int executeUpdate(String str, int[] iArr) throws SQLException;

    int executeUpdate(String str, String[] strArr) throws SQLException;

    boolean execute(String str, int i10) throws SQLException;

    boolean execute(String str, int[] iArr) throws SQLException;

    boolean execute(String str, String[] strArr) throws SQLException;

    int getResultSetHoldability() throws SQLException;

    boolean isClosed() throws SQLException;

    void setPoolable(boolean z10) throws SQLException;

    boolean isPoolable() throws SQLException;
}
