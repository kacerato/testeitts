package java.security;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/Provider.class
 */
public abstract class Provider extends Properties {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/Provider$Service.class
 */
    public static class Service {
        public Service(Provider provider, String type, String algorithm, String className, List<String> aliases, Map<String, String> attributes) {
            throw new RuntimeException("Stub!");
        }

        public final String getType() {
            throw new RuntimeException("Stub!");
        }

        public final String getAlgorithm() {
            throw new RuntimeException("Stub!");
        }

        public final Provider getProvider() {
            throw new RuntimeException("Stub!");
        }

        public final String getClassName() {
            throw new RuntimeException("Stub!");
        }

        public final String getAttribute(String name) {
            throw new RuntimeException("Stub!");
        }

        public Object newInstance(Object constructorParameter) throws NoSuchAlgorithmException {
            throw new RuntimeException("Stub!");
        }

        public boolean supportsParameter(Object parameter) {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    public Provider(String name, double version, String info) {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public double getVersion() {
        throw new RuntimeException("Stub!");
    }

    public String getInfo() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void clear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void load(InputStream inStream) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void putAll(Map<?, ?> t10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Set<Map.Entry<Object, Object>> entrySet() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Set<Object> o() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Collection<Object> values() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object put(Object key, Object value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object putIfAbsent(Object key, Object value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object remove(Object key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean remove(Object key, Object value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean replace(Object key, Object oldValue, Object newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object replace(Object key, Object value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void replaceAll(BiFunction<? super Object, ? super Object, ? extends Object> function) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object compute(Object key, BiFunction<? super Object, ? super Object, ? extends Object> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object computeIfAbsent(Object key, Function<? super Object, ? extends Object> mappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object computeIfPresent(Object key, BiFunction<? super Object, ? super Object, ? extends Object> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object merge(Object key, Object value, BiFunction<? super Object, ? super Object, ? extends Object> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object get(Object key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object getOrDefault(Object key, Object defaultValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void forEach(BiConsumer<? super Object, ? super Object> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Enumeration<Object> keys() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Enumeration<Object> elements() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getProperty(String key) {
        throw new RuntimeException("Stub!");
    }

    public synchronized Service getService(String type, String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public synchronized Set<Service> getServices() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void putService(Service s10) {
        throw new RuntimeException("Stub!");
    }

    protected synchronized void removeService(Service s10) {
        throw new RuntimeException("Stub!");
    }
}
