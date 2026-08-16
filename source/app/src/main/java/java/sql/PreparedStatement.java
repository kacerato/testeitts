package java.sql;

import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.util.Calendar;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/PreparedStatement.class
 */
public interface PreparedStatement extends Statement {
    ResultSet executeQuery() throws SQLException;

    int executeUpdate() throws SQLException;

    void setNull(int i10, int i11) throws SQLException;

    void setBoolean(int i10, boolean z10) throws SQLException;

    void setByte(int i10, byte b10) throws SQLException;

    void setShort(int i10, short s10) throws SQLException;

    void setInt(int i10, int i11) throws SQLException;

    void setLong(int i10, long j10) throws SQLException;

    void setFloat(int i10, float f10) throws SQLException;

    void setDouble(int i10, double d10) throws SQLException;

    void setBigDecimal(int i10, BigDecimal bigDecimal) throws SQLException;

    void setString(int i10, String str) throws SQLException;

    void setBytes(int i10, byte[] bArr) throws SQLException;

    void setDate(int i10, Date date) throws SQLException;

    void setTime(int i10, Time time) throws SQLException;

    void setTimestamp(int i10, Timestamp timestamp) throws SQLException;

    void setAsciiStream(int i10, InputStream inputStream, int i11) throws SQLException;

    @Deprecated
    void setUnicodeStream(int i10, InputStream inputStream, int i11) throws SQLException;

    void setBinaryStream(int i10, InputStream inputStream, int i11) throws SQLException;

    void clearParameters() throws SQLException;

    void setObject(int i10, Object obj, int i11) throws SQLException;

    void setObject(int i10, Object obj) throws SQLException;

    boolean execute() throws SQLException;

    void addBatch() throws SQLException;

    void setCharacterStream(int i10, Reader reader, int i11) throws SQLException;

    void setRef(int i10, Ref ref) throws SQLException;

    void setBlob(int i10, Blob blob) throws SQLException;

    void setClob(int i10, Clob clob) throws SQLException;

    void setArray(int i10, Array array) throws SQLException;

    ResultSetMetaData getMetaData() throws SQLException;

    void setDate(int i10, Date date, Calendar calendar) throws SQLException;

    void setTime(int i10, Time time, Calendar calendar) throws SQLException;

    void setTimestamp(int i10, Timestamp timestamp, Calendar calendar) throws SQLException;

    void setNull(int i10, int i11, String str) throws SQLException;

    void setURL(int i10, URL url) throws SQLException;

    ParameterMetaData getParameterMetaData() throws SQLException;

    void setRowId(int i10, RowId rowId) throws SQLException;

    void setNString(int i10, String str) throws SQLException;

    void setNCharacterStream(int i10, Reader reader, long j10) throws SQLException;

    void setNClob(int i10, NClob nClob) throws SQLException;

    void setClob(int i10, Reader reader, long j10) throws SQLException;

    void setBlob(int i10, InputStream inputStream, long j10) throws SQLException;

    void setNClob(int i10, Reader reader, long j10) throws SQLException;

    void setSQLXML(int i10, SQLXML sqlxml) throws SQLException;

    void setObject(int i10, Object obj, int i11, int i12) throws SQLException;

    void setAsciiStream(int i10, InputStream inputStream, long j10) throws SQLException;

    void setBinaryStream(int i10, InputStream inputStream, long j10) throws SQLException;

    void setCharacterStream(int i10, Reader reader, long j10) throws SQLException;

    void setAsciiStream(int i10, InputStream inputStream) throws SQLException;

    void setBinaryStream(int i10, InputStream inputStream) throws SQLException;

    void setCharacterStream(int i10, Reader reader) throws SQLException;

    void setNCharacterStream(int i10, Reader reader) throws SQLException;

    void setClob(int i10, Reader reader) throws SQLException;

    void setBlob(int i10, InputStream inputStream) throws SQLException;

    void setNClob(int i10, Reader reader) throws SQLException;
}
