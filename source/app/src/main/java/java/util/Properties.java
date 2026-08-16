package java.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Properties.class
 */
public class Properties extends Hashtable<Object, Object> {
    protected Properties defaults;

    public Properties() {
        throw new RuntimeException("Stub!");
    }

    public Properties(Properties defaults) {
        throw new RuntimeException("Stub!");
    }

    public synchronized Object setProperty(String key, String value) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void load(Reader reader) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void load(InputStream inStream) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void save(OutputStream out, String comments) {
        throw new RuntimeException("Stub!");
    }

    public void store(Writer writer, String comments) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void store(OutputStream out, String comments) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void loadFromXML(InputStream in2) throws IOException, InvalidPropertiesFormatException {
        throw new RuntimeException("Stub!");
    }

    public void storeToXML(OutputStream os, String comment) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void storeToXML(OutputStream os, String comment, String encoding) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public String getProperty(String key) {
        throw new RuntimeException("Stub!");
    }

    public String getProperty(String key, String defaultValue) {
        throw new RuntimeException("Stub!");
    }

    public Enumeration<?> propertyNames() {
        throw new RuntimeException("Stub!");
    }

    public Set<String> stringPropertyNames() {
        throw new RuntimeException("Stub!");
    }

    public void list(PrintStream out) {
        throw new RuntimeException("Stub!");
    }

    public void list(PrintWriter out) {
        throw new RuntimeException("Stub!");
    }
}
