package java.sql;

import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/sql/SQLException.class
 */
public class SQLException extends Exception implements Iterable<Throwable> {
    public SQLException(String reason, String SQLState, int vendorCode) {
        throw new RuntimeException("Stub!");
    }

    public SQLException(String reason, String SQLState) {
        throw new RuntimeException("Stub!");
    }

    public SQLException(String reason) {
        throw new RuntimeException("Stub!");
    }

    public SQLException() {
        throw new RuntimeException("Stub!");
    }

    public SQLException(Throwable cause) {
        throw new RuntimeException("Stub!");
    }

    public SQLException(String reason, Throwable cause) {
        throw new RuntimeException("Stub!");
    }

    public SQLException(String reason, String sqlState, Throwable cause) {
        throw new RuntimeException("Stub!");
    }

    public SQLException(String reason, String sqlState, int vendorCode, Throwable cause) {
        throw new RuntimeException("Stub!");
    }

    public String getSQLState() {
        throw new RuntimeException("Stub!");
    }

    public int getErrorCode() {
        throw new RuntimeException("Stub!");
    }

    public SQLException getNextException() {
        throw new RuntimeException("Stub!");
    }

    public void setNextException(SQLException ex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Iterator<Throwable> iterator() {
        throw new RuntimeException("Stub!");
    }
}
