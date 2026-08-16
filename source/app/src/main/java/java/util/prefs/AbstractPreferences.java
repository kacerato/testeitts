package java.util.prefs;

import java.io.IOException;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/prefs/AbstractPreferences.class
 */
public abstract class AbstractPreferences extends Preferences {
    protected final Object lock;
    protected boolean newNode;

    protected abstract void putSpi(String str, String str2);

    protected abstract String getSpi(String str);

    protected abstract void removeSpi(String str);

    protected abstract void removeNodeSpi() throws BackingStoreException;

    protected abstract String[] keysSpi() throws BackingStoreException;

    protected abstract String[] childrenNamesSpi() throws BackingStoreException;

    protected abstract AbstractPreferences childSpi(String str);

    protected abstract void syncSpi() throws BackingStoreException;

    protected abstract void flushSpi() throws BackingStoreException;

    protected AbstractPreferences(AbstractPreferences parent, String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void put(String key, String value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String get(String key, String def) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void remove(String key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clear() throws BackingStoreException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void putInt(String key, int value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getInt(String key, int def) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void putLong(String key, long value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getLong(String key, long def) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void putBoolean(String key, boolean value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getBoolean(String key, boolean def) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void putFloat(String key, float value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getFloat(String key, float def) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void putDouble(String key, double value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public double getDouble(String key, double def) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void putByteArray(String key, byte[] value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public byte[] getByteArray(String key, byte[] def) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] keys() throws BackingStoreException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] childrenNames() throws BackingStoreException {
        throw new RuntimeException("Stub!");
    }

    protected final AbstractPreferences[] cachedChildren() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Preferences parent() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Preferences node(String path) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean nodeExists(String path) throws BackingStoreException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removeNode() throws BackingStoreException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String name() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String absolutePath() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isUserNode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addPreferenceChangeListener(PreferenceChangeListener pcl) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removePreferenceChangeListener(PreferenceChangeListener pcl) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addNodeChangeListener(NodeChangeListener ncl) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removeNodeChangeListener(NodeChangeListener ncl) {
        throw new RuntimeException("Stub!");
    }

    protected AbstractPreferences getChild(String nodeName) throws BackingStoreException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sync() throws BackingStoreException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void flush() throws BackingStoreException {
        throw new RuntimeException("Stub!");
    }

    protected boolean isRemoved() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void exportNode(OutputStream os) throws IOException, BackingStoreException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void exportSubtree(OutputStream os) throws IOException, BackingStoreException {
        throw new RuntimeException("Stub!");
    }
}
