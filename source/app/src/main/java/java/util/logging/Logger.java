package java.util.logging;

import java.util.ResourceBundle;
import java.util.function.Supplier;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/logging/Logger.class
 */
public class Logger {
    public static final String GLOBAL_LOGGER_NAME = "global";

    @Deprecated
    public static final Logger global = null;

    protected Logger(String name, String resourceBundleName) {
        throw new RuntimeException("Stub!");
    }

    public static final Logger getGlobal() {
        throw new RuntimeException("Stub!");
    }

    public static Logger getLogger(String name) {
        throw new RuntimeException("Stub!");
    }

    public static Logger getLogger(String name, String resourceBundleName) {
        throw new RuntimeException("Stub!");
    }

    public static Logger getAnonymousLogger() {
        throw new RuntimeException("Stub!");
    }

    public static Logger getAnonymousLogger(String resourceBundleName) {
        throw new RuntimeException("Stub!");
    }

    public ResourceBundle getResourceBundle() {
        throw new RuntimeException("Stub!");
    }

    public String getResourceBundleName() {
        throw new RuntimeException("Stub!");
    }

    public void setFilter(Filter newFilter) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public Filter getFilter() {
        throw new RuntimeException("Stub!");
    }

    public void log(LogRecord record) {
        throw new RuntimeException("Stub!");
    }

    public void log(Level level, String msg) {
        throw new RuntimeException("Stub!");
    }

    public void log(Level level, Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void log(Level level, String msg, Object param1) {
        throw new RuntimeException("Stub!");
    }

    public void log(Level level, String msg, Object[] params) {
        throw new RuntimeException("Stub!");
    }

    public void log(Level level, String msg, Throwable thrown) {
        throw new RuntimeException("Stub!");
    }

    public void log(Level level, Throwable thrown, Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void logp(Level level, String sourceClass, String sourceMethod, String msg) {
        throw new RuntimeException("Stub!");
    }

    public void logp(Level level, String sourceClass, String sourceMethod, Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void logp(Level level, String sourceClass, String sourceMethod, String msg, Object param1) {
        throw new RuntimeException("Stub!");
    }

    public void logp(Level level, String sourceClass, String sourceMethod, String msg, Object[] params) {
        throw new RuntimeException("Stub!");
    }

    public void logp(Level level, String sourceClass, String sourceMethod, String msg, Throwable thrown) {
        throw new RuntimeException("Stub!");
    }

    public void logp(Level level, String sourceClass, String sourceMethod, Throwable thrown, Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void logrb(Level level, String sourceClass, String sourceMethod, String bundleName, String msg) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void logrb(Level level, String sourceClass, String sourceMethod, String bundleName, String msg, Object param1) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void logrb(Level level, String sourceClass, String sourceMethod, String bundleName, String msg, Object[] params) {
        throw new RuntimeException("Stub!");
    }

    public void logrb(Level level, String sourceClass, String sourceMethod, ResourceBundle bundle, String msg, Object... params) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void logrb(Level level, String sourceClass, String sourceMethod, String bundleName, String msg, Throwable thrown) {
        throw new RuntimeException("Stub!");
    }

    public void logrb(Level level, String sourceClass, String sourceMethod, ResourceBundle bundle, String msg, Throwable thrown) {
        throw new RuntimeException("Stub!");
    }

    public void entering(String sourceClass, String sourceMethod) {
        throw new RuntimeException("Stub!");
    }

    public void entering(String sourceClass, String sourceMethod, Object param1) {
        throw new RuntimeException("Stub!");
    }

    public void entering(String sourceClass, String sourceMethod, Object[] params) {
        throw new RuntimeException("Stub!");
    }

    public void exiting(String sourceClass, String sourceMethod) {
        throw new RuntimeException("Stub!");
    }

    public void exiting(String sourceClass, String sourceMethod, Object result) {
        throw new RuntimeException("Stub!");
    }

    public void throwing(String sourceClass, String sourceMethod, Throwable thrown) {
        throw new RuntimeException("Stub!");
    }

    public void severe(String msg) {
        throw new RuntimeException("Stub!");
    }

    public void warning(String msg) {
        throw new RuntimeException("Stub!");
    }

    public void info(String msg) {
        throw new RuntimeException("Stub!");
    }

    public void config(String msg) {
        throw new RuntimeException("Stub!");
    }

    public void fine(String msg) {
        throw new RuntimeException("Stub!");
    }

    public void finer(String msg) {
        throw new RuntimeException("Stub!");
    }

    public void finest(String msg) {
        throw new RuntimeException("Stub!");
    }

    public void severe(Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void warning(Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void info(Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void config(Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void fine(Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void finer(Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void finest(Supplier<String> msgSupplier) {
        throw new RuntimeException("Stub!");
    }

    public void setLevel(Level newLevel) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public Level getLevel() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLoggable(Level level) {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public void addHandler(Handler handler) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public void removeHandler(Handler handler) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public Handler[] getHandlers() {
        throw new RuntimeException("Stub!");
    }

    public void setUseParentHandlers(boolean useParentHandlers) {
        throw new RuntimeException("Stub!");
    }

    public boolean getUseParentHandlers() {
        throw new RuntimeException("Stub!");
    }

    public void setResourceBundle(ResourceBundle bundle) {
        throw new RuntimeException("Stub!");
    }

    public Logger getParent() {
        throw new RuntimeException("Stub!");
    }

    public void setParent(Logger parent) {
        throw new RuntimeException("Stub!");
    }
}
