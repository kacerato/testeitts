package org.apache.commons.lang3;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class SerializationUtils {

    public static class ClassLoaderAwareObjectInputStream extends ObjectInputStream {
        private static final Map<String, Class<?>> primitiveTypes;
        private final ClassLoader classLoader;

        static {
            HashMap hashMap = new HashMap();
            primitiveTypes = hashMap;
            hashMap.put("byte", Byte.TYPE);
            hashMap.put("short", Short.TYPE);
            hashMap.put("int", Integer.TYPE);
            hashMap.put("long", Long.TYPE);
            hashMap.put(TypedValues.Custom.S_FLOAT, Float.TYPE);
            hashMap.put("double", Double.TYPE);
            hashMap.put(TypedValues.Custom.S_BOOLEAN, Boolean.TYPE);
            hashMap.put("char", Character.TYPE);
            hashMap.put("void", Void.TYPE);
        }

        public ClassLoaderAwareObjectInputStream(InputStream inputStream, ClassLoader classLoader) throws IOException {
            super(inputStream);
            this.classLoader = classLoader;
        }

        @Override
        public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            String name = objectStreamClass.getName();
            try {
                try {
                    return Class.forName(name, false, this.classLoader);
                } catch (ClassNotFoundException e10) {
                    Class<?> cls = primitiveTypes.get(name);
                    if (cls != null) {
                        return cls;
                    }
                    throw e10;
                }
            } catch (ClassNotFoundException unused) {
                return Class.forName(name, false, Thread.currentThread().getContextClassLoader());
            }
        }
    }

    public static <T extends Serializable> T clone(T t10) {
        if (t10 == null) {
            return null;
        }
        try {
            ClassLoaderAwareObjectInputStream classLoaderAwareObjectInputStream = new ClassLoaderAwareObjectInputStream(new ByteArrayInputStream(serialize(t10)), t10.getClass().getClassLoader());
            try {
                T t11 = (T) classLoaderAwareObjectInputStream.readObject();
                classLoaderAwareObjectInputStream.close();
                return t11;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    try {
                        classLoaderAwareObjectInputStream.close();
                    } catch (Throwable th4) {
                        th2.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
        } catch (IOException e10) {
            throw new SerializationException("IOException while reading or closing cloned object data", e10);
        } catch (ClassNotFoundException e11) {
            throw new SerializationException("ClassNotFoundException while reading cloned object data", e11);
        }
    }

    public static <T> T deserialize(InputStream inputStream) {
        Validate.isTrue(inputStream != null, "The InputStream must not be null", new Object[0]);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(inputStream);
            try {
                T t10 = (T) objectInputStream.readObject();
                objectInputStream.close();
                return t10;
            } finally {
            }
        } catch (IOException | ClassNotFoundException e10) {
            throw new SerializationException(e10);
        }
    }

    public static <T extends Serializable> T roundtrip(T t10) {
        return (T) deserialize(serialize(t10));
    }

    public static void serialize(Serializable serializable, OutputStream outputStream) {
        Validate.isTrue(outputStream != null, "The OutputStream must not be null", new Object[0]);
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
            try {
                objectOutputStream.writeObject(serializable);
                objectOutputStream.close();
            } finally {
            }
        } catch (IOException e10) {
            throw new SerializationException(e10);
        }
    }

    public static <T> T deserialize(byte[] bArr) {
        Validate.isTrue(bArr != null, "The byte[] must not be null", new Object[0]);
        return (T) deserialize(new ByteArrayInputStream(bArr));
    }

    public static byte[] serialize(Serializable serializable) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        serialize(serializable, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
