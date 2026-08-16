package java.lang;

import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class ProcessEnvironment {
    private static final HashMap<Variable, Value> theEnvironment;
    private static final Map<String, String> theUnmodifiableEnvironment;
    static final int MIN_NAME_LENGTH = 0;

    private static native byte[][] environ();

    static {
        byte[][] environ = environ();
        theEnvironment = new HashMap<>((environ.length / 2) + 3);
        for (int i10 = environ.length - 1; i10 > 0; i10 -= 2) {
            theEnvironment.put(Variable.valueOf(environ[i10 - 1]), Value.valueOf(environ[i10]));
        }
        theUnmodifiableEnvironment = Collections.unmodifiableMap(new StringEnvironment(theEnvironment));
    }

    public static String getenv(String name) {
        return theUnmodifiableEnvironment.get(name);
    }

    public static Map<String, String> getenv() {
        return theUnmodifiableEnvironment;
    }

    public static Map<String, String> environment() {
        return new StringEnvironment((Map) theEnvironment.clone());
    }

    public static Map<String, String> emptyEnvironment(int capacity) {
        return new StringEnvironment(new HashMap(capacity));
    }

    private ProcessEnvironment() {
    }

    private static void validateVariable(String name) {
        if (name.indexOf(61) != -1 || name.indexOf(0) != -1) {
            throw new IllegalArgumentException("Invalid environment variable name: \"" + name + JavadocConstants.ANCHOR_PREFIX_END);
        }
    }

    private static void validateValue(String value) {
        if (value.indexOf(0) != -1) {
            throw new IllegalArgumentException("Invalid environment variable value: \"" + value + JavadocConstants.ANCHOR_PREFIX_END);
        }
    }

    public static abstract class ExternalData {
        protected final String str;
        protected final byte[] bytes;

        protected ExternalData(String str, byte[] bytes) {
            this.str = str;
            this.bytes = bytes;
        }

        public byte[] getBytes() {
            return this.bytes;
        }

        public String toString() {
            return this.str;
        }

        public boolean equals(Object o10) {
            return (o10 instanceof ExternalData) && Arrays.equals(getBytes(), ((ExternalData) o10).getBytes());
        }

        public int hashCode() {
            return Arrays.hashCode(getBytes());
        }
    }

    public static class Variable extends ExternalData implements Comparable<Variable> {
        protected Variable(String str, byte[] bytes) {
            super(str, bytes);
        }

        public static Variable valueOfQueryOnly(Object str) {
            return valueOfQueryOnly((String) str);
        }

        public static Variable valueOfQueryOnly(String str) {
            return new Variable(str, str.getBytes(ProcessImpl.JNU_CHARSET));
        }

        public static Variable valueOf(String str) {
            ProcessEnvironment.validateVariable(str);
            return valueOfQueryOnly(str);
        }

        public static Variable valueOf(byte[] bytes) {
            return new Variable(new String(bytes, ProcessImpl.JNU_CHARSET), bytes);
        }

        @Override
        public int compareTo(Variable variable) {
            return Arrays.compare(getBytes(), variable.getBytes());
        }

        @Override
        public boolean equals(Object o10) {
            return (o10 instanceof Variable) && super.equals(o10);
        }
    }

    public static class Value extends ExternalData implements Comparable<Value> {
        protected Value(String str, byte[] bytes) {
            super(str, bytes);
        }

        public static Value valueOfQueryOnly(Object str) {
            return valueOfQueryOnly((String) str);
        }

        public static Value valueOfQueryOnly(String str) {
            return new Value(str, str.getBytes(ProcessImpl.JNU_CHARSET));
        }

        public static Value valueOf(String str) {
            ProcessEnvironment.validateValue(str);
            return valueOfQueryOnly(str);
        }

        public static Value valueOf(byte[] bytes) {
            return new Value(new String(bytes, ProcessImpl.JNU_CHARSET), bytes);
        }

        @Override
        public int compareTo(Value value) {
            return Arrays.compare(getBytes(), value.getBytes());
        }

        @Override
        public boolean equals(Object o10) {
            return (o10 instanceof Value) && super.equals(o10);
        }
    }

    public static class StringEnvironment extends AbstractMap<String, String> {

        private Map<Variable, Value> f92792m;

        private static String toString(Value v10) {
            if (v10 == null) {
                return null;
            }
            return v10.toString();
        }

        public StringEnvironment(Map<Variable, Value> m10) {
            this.f92792m = m10;
        }

        @Override
        public int size() {
            return this.f92792m.size();
        }

        @Override
        public boolean isEmpty() {
            return this.f92792m.isEmpty();
        }

        @Override
        public void clear() {
            this.f92792m.clear();
        }

        @Override
        public boolean containsKey(Object key) {
            return this.f92792m.containsKey(Variable.valueOfQueryOnly(key));
        }

        @Override
        public boolean containsValue(Object value) {
            return this.f92792m.containsValue(Value.valueOfQueryOnly(value));
        }

        @Override
        public String get(Object key) {
            return toString(this.f92792m.get(Variable.valueOfQueryOnly(key)));
        }

        @Override
        public String put(String key, String value) {
            return toString(this.f92792m.put(Variable.valueOf(key), Value.valueOf(value)));
        }

        @Override
        public String remove(Object key) {
            return toString(this.f92792m.remove(Variable.valueOfQueryOnly(key)));
        }

        @Override
        public Set<String> o() {
            return new StringKeySet(this.f92792m.o());
        }

        @Override
        public Set<Map.Entry<String, String>> entrySet() {
            return new StringEntrySet(this.f92792m.entrySet());
        }

        @Override
        public Collection<String> values() {
            return new StringValues(this.f92792m.values());
        }

        public byte[] toEnvironmentBlock(int[] envc) {
            int count = this.f92792m.size() * 2;
            for (Map.Entry<Variable, Value> entry : this.f92792m.entrySet()) {
                count = count + entry.getKey().getBytes().length + entry.getValue().getBytes().length;
            }
            byte[] block = new byte[count];
            int i10 = 0;
            for (Map.Entry<Variable, Value> entry2 : this.f92792m.entrySet()) {
                byte[] key = entry2.getKey().getBytes();
                byte[] value = entry2.getValue().getBytes();
                System.arraycopy(key, 0, block, i10, key.length);
                int i11 = i10 + key.length;
                int i12 = i11 + 1;
                block[i11] = 61;
                System.arraycopy(value, 0, block, i12, value.length);
                i10 = i12 + value.length + 1;
            }
            envc[0] = this.f92792m.size();
            return block;
        }
    }

    public static byte[] toEnvironmentBlock(Map<String, String> map, int[] envc) {
        if (map == null) {
            return null;
        }
        return ((StringEnvironment) map).toEnvironmentBlock(envc);
    }

    public static class StringEntry implements Map.Entry<String, String> {

        private final Map.Entry<Variable, Value> f92789e;

        public StringEntry(Map.Entry<Variable, Value> e10) {
            this.f92789e = e10;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public String getKey() {
            return this.f92789e.getKey().toString();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public String getValue() {
            return this.f92789e.getValue().toString();
        }

        @Override
        public String setValue(String newValue) {
            return this.f92789e.setValue(Value.valueOf(newValue)).toString();
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }

        @Override
        public boolean equals(Object o10) {
            return (o10 instanceof StringEntry) && this.f92789e.equals(((StringEntry) o10).f92789e);
        }

        @Override
        public int hashCode() {
            return this.f92789e.hashCode();
        }
    }

    private static class StringEntrySet extends AbstractSet<Map.Entry<String, String>> {

        private final Set<Map.Entry<Variable, Value>> f92790s;

        public StringEntrySet(Set<Map.Entry<Variable, Value>> s10) {
            this.f92790s = s10;
        }

        @Override
        public int size() {
            return this.f92790s.size();
        }

        @Override
        public boolean isEmpty() {
            return this.f92790s.isEmpty();
        }

        @Override
        public void clear() {
            this.f92790s.clear();
        }

        @Override
        public Iterator<Map.Entry<String, String>> iterator() {
            return new Iterator<Map.Entry<String, String>>(this) {

                Iterator<Map.Entry<Variable, Value>> f92791i;
                final StringEntrySet this$0;

                {
                    Objects.requireNonNull(this);
                    this.this$0 = this;
                    this.f92791i = this.this$0.f92790s.iterator();
                }

                @Override
                public boolean hasNext() {
                    return this.f92791i.hasNext();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Map.Entry<String, String> next() {
                    return new StringEntry(this.f92791i.next());
                }

                @Override
                public void remove() {
                    this.f92791i.remove();
                }
            };
        }

        private static Map.Entry<Variable, Value> vvEntry(final Object o10) {
            if (o10 instanceof StringEntry) {
                return ((StringEntry) o10).f92789e;
            }
            return new Map.Entry<Variable, Value>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Variable getKey() {
                    return Variable.valueOfQueryOnly(((Map.Entry) Object.this).getKey());
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Value getValue() {
                    return Value.valueOfQueryOnly(((Map.Entry) Object.this).getValue());
                }

                @Override
                public Value setValue(Value value) {
                    throw new UnsupportedOperationException();
                }
            };
        }

        @Override
        public boolean contains(Object o10) {
            return this.f92790s.contains(vvEntry(o10));
        }

        @Override
        public boolean remove(Object o10) {
            return this.f92790s.remove(vvEntry(o10));
        }

        @Override
        public boolean equals(Object o10) {
            return (o10 instanceof StringEntrySet) && this.f92790s.equals(((StringEntrySet) o10).f92790s);
        }

        @Override
        public int hashCode() {
            return this.f92790s.hashCode();
        }
    }

    private static class StringValues extends AbstractCollection<String> {

        private final Collection<Value> f92795c;

        public StringValues(Collection<Value> c10) {
            this.f92795c = c10;
        }

        @Override
        public int size() {
            return this.f92795c.size();
        }

        @Override
        public boolean isEmpty() {
            return this.f92795c.isEmpty();
        }

        @Override
        public void clear() {
            this.f92795c.clear();
        }

        @Override
        public Iterator<String> iterator() {
            return new Iterator<String>(this) {

                Iterator<Value> f92796i;
                final StringValues this$0;

                {
                    Objects.requireNonNull(this);
                    this.this$0 = this;
                    this.f92796i = this.this$0.f92795c.iterator();
                }

                @Override
                public boolean hasNext() {
                    return this.f92796i.hasNext();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public String next() {
                    return this.f92796i.next().toString();
                }

                @Override
                public void remove() {
                    this.f92796i.remove();
                }
            };
        }

        @Override
        public boolean contains(Object o10) {
            return this.f92795c.contains(Value.valueOfQueryOnly(o10));
        }

        @Override
        public boolean remove(Object o10) {
            return this.f92795c.remove(Value.valueOfQueryOnly(o10));
        }

        @Override
        public boolean equals(Object o10) {
            return (o10 instanceof StringValues) && this.f92795c.equals(((StringValues) o10).f92795c);
        }

        @Override
        public int hashCode() {
            return this.f92795c.hashCode();
        }
    }

    private static class StringKeySet extends AbstractSet<String> {

        private final Set<Variable> f92793s;

        public StringKeySet(Set<Variable> s10) {
            this.f92793s = s10;
        }

        @Override
        public int size() {
            return this.f92793s.size();
        }

        @Override
        public boolean isEmpty() {
            return this.f92793s.isEmpty();
        }

        @Override
        public void clear() {
            this.f92793s.clear();
        }

        @Override
        public Iterator<String> iterator() {
            return new Iterator<String>(this) {

                Iterator<Variable> f92794i;
                final StringKeySet this$0;

                {
                    Objects.requireNonNull(this);
                    this.this$0 = this;
                    this.f92794i = this.this$0.f92793s.iterator();
                }

                @Override
                public boolean hasNext() {
                    return this.f92794i.hasNext();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public String next() {
                    return this.f92794i.next().toString();
                }

                @Override
                public void remove() {
                    this.f92794i.remove();
                }
            };
        }

        @Override
        public boolean contains(Object o10) {
            return this.f92793s.contains(Variable.valueOfQueryOnly(o10));
        }

        @Override
        public boolean remove(Object o10) {
            return this.f92793s.remove(Variable.valueOfQueryOnly(o10));
        }
    }
}
