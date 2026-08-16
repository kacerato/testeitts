package java.sql;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/ResultSetMetaData.class
 */
public interface ResultSetMetaData extends Wrapper {
    public static final int columnNoNulls = 0;
    public static final int columnNullable = 1;
    public static final int columnNullableUnknown = 2;

    int getColumnCount() throws SQLException;

    boolean isAutoIncrement(int i10) throws SQLException;

    boolean isCaseSensitive(int i10) throws SQLException;

    boolean isSearchable(int i10) throws SQLException;

    boolean isCurrency(int i10) throws SQLException;

    int isNullable(int i10) throws SQLException;

    boolean isSigned(int i10) throws SQLException;

    int getColumnDisplaySize(int i10) throws SQLException;

    String getColumnLabel(int i10) throws SQLException;

    String getColumnName(int i10) throws SQLException;

    String getSchemaName(int i10) throws SQLException;

    int getPrecision(int i10) throws SQLException;

    int getScale(int i10) throws SQLException;

    String getTableName(int i10) throws SQLException;

    String getCatalogName(int i10) throws SQLException;

    int getColumnType(int i10) throws SQLException;

    String getColumnTypeName(int i10) throws SQLException;

    boolean isReadOnly(int i10) throws SQLException;

    boolean isWritable(int i10) throws SQLException;

    boolean isDefinitelyWritable(int i10) throws SQLException;

    String getColumnClassName(int i10) throws SQLException;
}
