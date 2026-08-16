package java.sql;

import java.io.InputStream;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/Blob.class
 */
public interface Blob {
    long length() throws SQLException;

    byte[] getBytes(long j10, int i10) throws SQLException;

    InputStream getBinaryStream() throws SQLException;

    long position(byte[] bArr, long j10) throws SQLException;

    long position(Blob blob, long j10) throws SQLException;

    int setBytes(long j10, byte[] bArr) throws SQLException;

    int setBytes(long j10, byte[] bArr, int i10, int i11) throws SQLException;

    OutputStream setBinaryStream(long j10) throws SQLException;

    void truncate(long j10) throws SQLException;

    void free() throws SQLException;

    InputStream getBinaryStream(long j10, long j11) throws SQLException;
}
