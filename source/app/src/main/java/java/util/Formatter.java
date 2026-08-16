package java.util;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Formatter.class
 */
public final class Formatter implements Closeable, Flushable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Formatter$BigDecimalLayoutForm.class
 */
    public enum BigDecimalLayoutForm {
        DECIMAL_FLOAT,
        SCIENTIFIC
    }

    public Formatter() {
        throw new RuntimeException("Stub!");
    }

    public Formatter(Appendable a10) {
        throw new RuntimeException("Stub!");
    }

    public Formatter(Locale l10) {
        throw new RuntimeException("Stub!");
    }

    public Formatter(Appendable a10, Locale l10) {
        throw new RuntimeException("Stub!");
    }

    public Formatter(String fileName) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public Formatter(String fileName, String csn) throws FileNotFoundException, UnsupportedEncodingException {
        throw new RuntimeException("Stub!");
    }

    public Formatter(String fileName, String csn, Locale l10) throws FileNotFoundException, UnsupportedEncodingException {
        throw new RuntimeException("Stub!");
    }

    public Formatter(File file) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public Formatter(File file, String csn) throws FileNotFoundException, UnsupportedEncodingException {
        throw new RuntimeException("Stub!");
    }

    public Formatter(File file, String csn, Locale l10) throws FileNotFoundException, UnsupportedEncodingException {
        throw new RuntimeException("Stub!");
    }

    public Formatter(PrintStream ps) {
        throw new RuntimeException("Stub!");
    }

    public Formatter(OutputStream os) {
        throw new RuntimeException("Stub!");
    }

    public Formatter(OutputStream os, String csn) throws UnsupportedEncodingException {
        throw new RuntimeException("Stub!");
    }

    public Formatter(OutputStream os, String csn, Locale l10) throws UnsupportedEncodingException {
        throw new RuntimeException("Stub!");
    }

    public Locale locale() {
        throw new RuntimeException("Stub!");
    }

    public Appendable out() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void flush() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    public IOException ioException() {
        throw new RuntimeException("Stub!");
    }

    public Formatter format(String format, Object... args) {
        throw new RuntimeException("Stub!");
    }

    public Formatter format(Locale l10, String format, Object... args) {
        throw new RuntimeException("Stub!");
    }
}
