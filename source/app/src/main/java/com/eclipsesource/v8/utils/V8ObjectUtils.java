package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8ArrayBuffer;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8TypedArray;
import com.eclipsesource.v8.V8Value;
import com.eclipsesource.v8.utils.typedarrays.ArrayBuffer;
import com.eclipsesource.v8.utils.typedarrays.Float32Array;
import com.eclipsesource.v8.utils.typedarrays.Float64Array;
import com.eclipsesource.v8.utils.typedarrays.Int16Array;
import com.eclipsesource.v8.utils.typedarrays.Int32Array;
import com.eclipsesource.v8.utils.typedarrays.Int8Array;
import com.eclipsesource.v8.utils.typedarrays.TypedArray;
import com.eclipsesource.v8.utils.typedarrays.UInt16Array;
import com.eclipsesource.v8.utils.typedarrays.UInt32Array;
import com.eclipsesource.v8.utils.typedarrays.UInt8Array;
import com.eclipsesource.v8.utils.typedarrays.UInt8ClampedArray;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

public class V8ObjectUtils {
    private static final Object IGNORE = new Object();
    private static final TypeAdapter DEFAULT_TYPE_ADAPTER = new DefaultTypeAdapter();

    public static Object getValue(Object v8Object) {
        return getValue(v8Object, DEFAULT_TYPE_ADAPTER);
    }

    public static Object getValue(Object v8Object, TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<>();
        try {
            if (v8Object instanceof V8Value) {
                int type = ((V8Value) v8Object).getV8Type();
                Object value = getValue(v8Object, type, cache, adapter);
                cache.release();
                return value;
            }
            return v8Object;
        } finally {
            cache.release();
        }
    }

    public static Map<String, ? super Object> toMap(V8Object object) {
        return toMap(object, DEFAULT_TYPE_ADAPTER);
    }

    public static Map<String, ? super Object> toMap(V8Object object, TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<>();
        try {
            Map<String, ? super Object> map = toMap(object, cache, adapter);
            cache.release();
            return map;
        } catch (Throwable th2) {
            cache.release();
            throw th2;
        }
    }

    public static List<? super Object> toList(V8Array array) {
        return toList(array, DEFAULT_TYPE_ADAPTER);
    }

    public static List<? super Object> toList(V8Array array, TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<>();
        try {
            List<? super Object> list = toList(array, cache, adapter);
            cache.release();
            return list;
        } catch (Throwable th2) {
            cache.release();
            throw th2;
        }
    }

    public static Object getTypedArray(V8Array array, int arrayType, Object result) {
        int length = array.length();
        if (arrayType == 1) {
            int[] intArray = (int[]) result;
            if (intArray == null || intArray.length < length) {
                intArray = new int[length];
            }
            array.getIntegers(0, length, intArray);
            return intArray;
        }
        if (arrayType == 2) {
            double[] doubleArray = (double[]) result;
            if (doubleArray == null || doubleArray.length < length) {
                doubleArray = new double[length];
            }
            array.getDoubles(0, length, doubleArray);
            return doubleArray;
        }
        if (arrayType == 3) {
            boolean[] booleanArray = (boolean[]) result;
            if (booleanArray == null || booleanArray.length < length) {
                booleanArray = new boolean[length];
            }
            array.getBooleans(0, length, booleanArray);
            return booleanArray;
        }
        if (arrayType == 4) {
            String[] stringArray = (String[]) result;
            if (stringArray == null || stringArray.length < length) {
                stringArray = new String[length];
            }
            array.getStrings(0, length, stringArray);
            return stringArray;
        }
        if (arrayType == 9) {
            byte[] byteArray = (byte[]) result;
            if (byteArray == null || byteArray.length < length) {
                byteArray = new byte[length];
            }
            array.getBytes(0, length, byteArray);
            return byteArray;
        }
        throw new RuntimeException("Unsupported bulk load type: " + arrayType);
    }

    public static Object getTypedArray(V8Array array, int arrayType) {
        int length = array.length();
        if (arrayType == 1) {
            return array.getIntegers(0, length);
        }
        if (arrayType == 2) {
            return array.getDoubles(0, length);
        }
        if (arrayType == 3) {
            return array.getBooleans(0, length);
        }
        if (arrayType == 4) {
            return array.getStrings(0, length);
        }
        throw new RuntimeException("Unsupported bulk load type: " + arrayType);
    }

    public static V8Object toV8Object(V8 v82, Map<String, ? extends Object> map) {
        Map<Object, V8Value> cache = new Hashtable<>();
        try {
            V8Object twin = toV8Object(v82, map, cache).twin();
            for (V8Value v8Object : cache.values()) {
                v8Object.release();
            }
            return twin;
        } catch (Throwable th2) {
            for (V8Value v8Object2 : cache.values()) {
                v8Object2.release();
            }
            throw th2;
        }
    }

    public static V8Array toV8Array(V8 v82, List<? extends Object> list) {
        Map<Object, V8Value> cache = new Hashtable<>();
        try {
            V8Array twin = toV8Array(v82, list, cache).twin();
            for (V8Value v8Object : cache.values()) {
                v8Object.release();
            }
            return twin;
        } catch (Throwable th2) {
            for (V8Value v8Object2 : cache.values()) {
                v8Object2.release();
            }
            throw th2;
        }
    }

    public static Object getV8Result(V8 v82, Object value) {
        if (value == null) {
            return null;
        }
        Map<Object, V8Value> cache = new Hashtable<>();
        try {
            Object result = getV8Result(v82, value, cache);
            if (result instanceof V8Value) {
                V8Value twin = ((V8Value) result).twin();
                for (V8Value v8Object : cache.values()) {
                    v8Object.release();
                }
                return twin;
            }
            return result;
        } finally {
            for (V8Value v8Object2 : cache.values()) {
                v8Object2.release();
            }
        }
    }

    public static void pushValue(V8 v82, V8Array array, Object value) {
        Map<Object, V8Value> cache = new Hashtable<>();
        try {
            pushValue(v82, array, value, cache);
            for (V8Value v8Object : cache.values()) {
                v8Object.release();
            }
        } catch (Throwable th2) {
            for (V8Value v8Object2 : cache.values()) {
                v8Object2.release();
            }
            throw th2;
        }
    }

    public static Object getValue(V8Array array, int index) {
        V8Map<Object> cache = new V8Map<>();
        Object object = null;
        try {
            object = array.get(index);
            int type = array.getType(index);
            Object value = getValue(object, type, cache, DEFAULT_TYPE_ADAPTER);
            if (object instanceof Releasable) {
                ((Releasable) object).release();
            }
            cache.release();
            return value;
        } catch (Throwable th2) {
            if (object instanceof Releasable) {
                ((Releasable) object).release();
            }
            cache.release();
            throw th2;
        }
    }

    public static Object getValue(V8Array array, int index, TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<>();
        Object object = null;
        try {
            object = array.get(index);
            int type = array.getType(index);
            Object value = getValue(object, type, cache, adapter);
            if (object instanceof Releasable) {
                ((Releasable) object).release();
            }
            cache.release();
            return value;
        } catch (Throwable th2) {
            if (object instanceof Releasable) {
                ((Releasable) object).release();
            }
            cache.release();
            throw th2;
        }
    }

    public static Object getValue(V8Object object, String key) {
        return getValue(object, key, DEFAULT_TYPE_ADAPTER);
    }

    public static Object getValue(V8Object v8Object, String key, TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<>();
        Object object = null;
        try {
            object = v8Object.get(key);
            int type = v8Object.getType(key);
            Object value = getValue(object, type, cache, adapter);
            if (object instanceof Releasable) {
                ((Releasable) object).release();
            }
            cache.release();
            return value;
        } catch (Throwable th2) {
            if (object instanceof Releasable) {
                ((Releasable) object).release();
            }
            cache.release();
            throw th2;
        }
    }

    private static Map<String, ? super Object> toMap(V8Object v8Object, V8Map<Object> cache, TypeAdapter adapter) {
        if (v8Object == null) {
            return Collections.emptyMap();
        }
        if (cache.containsKey(v8Object)) {
            return (Map) cache.get(v8Object);
        }
        Map<String, ? super Object> result = new V8PropertyMap<>();
        cache.put((V8Value) v8Object, (V8Object) result);
        String[] keys = v8Object.getKeys();
        for (String key : keys) {
            Object object = null;
            try {
                object = v8Object.get(key);
                int type = v8Object.getType(key);
                Object value = getValue(object, type, cache, adapter);
                if (value != IGNORE) {
                    result.put(key, value);
                }
                if (object instanceof Releasable) {
                    ((Releasable) object).release();
                }
            } catch (Throwable th2) {
                if (object instanceof Releasable) {
                    ((Releasable) object).release();
                }
                throw th2;
            }
        }
        return result;
    }

    private static List<? super Object> toList(V8Array array, V8Map<Object> cache, TypeAdapter adapter) {
        if (array == null) {
            return Collections.emptyList();
        }
        if (cache.containsKey(array)) {
            return (List) cache.get(array);
        }
        List<? super Object> result = new ArrayList<>();
        cache.put((V8Value) array, (V8Array) result);
        for (int i10 = 0; i10 < array.length(); i10++) {
            Object object = null;
            try {
                object = array.get(i10);
                int type = array.getType(i10);
                Object value = getValue(object, type, cache, adapter);
                if (value != IGNORE) {
                    result.add(value);
                }
                if (object instanceof Releasable) {
                    ((Releasable) object).release();
                }
            } catch (Throwable th2) {
                if (object instanceof Releasable) {
                    ((Releasable) object).release();
                }
                throw th2;
            }
        }
        return result;
    }

    private static V8Object toV8Object(V8 v82, Map<String, ? extends Object> map, Map<Object, V8Value> cache) {
        if (cache.containsKey(map)) {
            return (V8Object) cache.get(map);
        }
        V8Object result = new V8Object(v82);
        cache.put(map, result);
        try {
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                setValue(v82, result, entry.getKey(), entry.getValue(), cache);
            }
            return result;
        } catch (IllegalStateException e10) {
            result.release();
            throw e10;
        }
    }

    private static V8Array toV8Array(V8 v82, List<? extends Object> list, Map<Object, V8Value> cache) {
        if (cache.containsKey(new ListWrapper(list))) {
            return (V8Array) cache.get(new ListWrapper(list));
        }
        V8Array result = new V8Array(v82);
        cache.put(new ListWrapper(list), result);
        for (int i10 = 0; i10 < list.size(); i10++) {
            try {
                Object value = list.get(i10);
                pushValue(v82, result, value, cache);
            } catch (IllegalStateException e10) {
                result.release();
                throw e10;
            }
        }
        return result;
    }

    private static V8ArrayBuffer toV8ArrayBuffer(V8 v82, ArrayBuffer arrayBuffer, Map<Object, V8Value> cache) {
        if (cache.containsKey(arrayBuffer)) {
            return (V8ArrayBuffer) cache.get(arrayBuffer);
        }
        V8ArrayBuffer result = new V8ArrayBuffer(v82, arrayBuffer.getByteBuffer());
        cache.put(arrayBuffer, result);
        return result;
    }

    private static V8TypedArray toV8TypedArray(V8 v82, TypedArray typedArray, Map<Object, V8Value> cache) {
        if (cache.containsKey(typedArray)) {
            return (V8TypedArray) cache.get(typedArray);
        }
        V8ArrayBuffer arrayBuffer = new V8ArrayBuffer(v82, typedArray.getByteBuffer());
        try {
            V8TypedArray result = new V8TypedArray(v82, arrayBuffer, typedArray.getType(), 0, typedArray.length());
            cache.put(typedArray, result);
            arrayBuffer.release();
            return result;
        } catch (Throwable th2) {
            arrayBuffer.release();
            throw th2;
        }
    }

    private static Object getV8Result(V8 v82, Object value, Map<Object, V8Value> cache) {
        if (cache.containsKey(value)) {
            return cache.get(value);
        }
        if (value instanceof Map) {
            return toV8Object(v82, (Map) value, cache);
        }
        if (value instanceof List) {
            return toV8Array(v82, (List) value, cache);
        }
        if (value instanceof TypedArray) {
            return toV8TypedArray(v82, (TypedArray) value, cache);
        }
        if (value instanceof ArrayBuffer) {
            return toV8ArrayBuffer(v82, (ArrayBuffer) value, cache);
        }
        return value;
    }

    private static void pushValue(V8 v82, V8Array result, Object value, Map<Object, V8Value> cache) {
        if (value == null) {
            result.pushUndefined();
            return;
        }
        if (value instanceof Integer) {
            result.push(value);
            return;
        }
        if (value instanceof Long) {
            result.push(new Double(((Long) value).longValue()));
            return;
        }
        if (value instanceof Double) {
            result.push(value);
            return;
        }
        if (value instanceof Float) {
            result.push(value);
            return;
        }
        if (value instanceof String) {
            result.push((String) value);
            return;
        }
        if (value instanceof Boolean) {
            result.push(value);
            return;
        }
        if (value instanceof V8Object) {
            result.push((V8Value) value);
            return;
        }
        if (value instanceof TypedArray) {
            V8TypedArray v8TypedArray = toV8TypedArray(v82, (TypedArray) value, cache);
            result.push((V8Value) v8TypedArray);
            return;
        }
        if (value instanceof ArrayBuffer) {
            V8ArrayBuffer v8ArrayBuffer = toV8ArrayBuffer(v82, (ArrayBuffer) value, cache);
            result.push((V8Value) v8ArrayBuffer);
        } else if (value instanceof Map) {
            V8Object object = toV8Object(v82, (Map) value, cache);
            result.push((V8Value) object);
        } else {
            if (value instanceof List) {
                V8Array array = toV8Array(v82, (List) value, cache);
                result.push((V8Value) array);
                return;
            }
            throw new IllegalStateException("Unsupported Object of type: " + ((Object) value.getClass()));
        }
    }

    private static void setValue(V8 v82, V8Object result, String key, Object value, Map<Object, V8Value> cache) {
        if (value == null) {
            result.addUndefined(key);
            return;
        }
        if (value instanceof Integer) {
            result.add(key, ((Integer) value).intValue());
            return;
        }
        if (value instanceof Long) {
            result.add(key, ((Long) value).longValue());
            return;
        }
        if (value instanceof Double) {
            result.add(key, ((Double) value).doubleValue());
            return;
        }
        if (value instanceof Float) {
            result.add(key, ((Float) value).floatValue());
            return;
        }
        if (value instanceof String) {
            result.add(key, (String) value);
            return;
        }
        if (value instanceof Boolean) {
            result.add(key, ((Boolean) value).booleanValue());
            return;
        }
        if (value instanceof V8Object) {
            result.add(key, (V8Object) value);
            return;
        }
        if (value instanceof TypedArray) {
            V8TypedArray typedArray = toV8TypedArray(v82, (TypedArray) value, cache);
            result.add(key, typedArray);
            return;
        }
        if (value instanceof ArrayBuffer) {
            V8ArrayBuffer v8ArrayBuffer = toV8ArrayBuffer(v82, (ArrayBuffer) value, cache);
            result.add(key, v8ArrayBuffer);
        } else if (value instanceof Map) {
            V8Object object = toV8Object(v82, (Map) value, cache);
            result.add(key, object);
        } else {
            if (value instanceof List) {
                V8Array array = toV8Array(v82, (List) value, cache);
                result.add(key, array);
                return;
            }
            throw new IllegalStateException("Unsupported Object of type: " + ((Object) value.getClass()));
        }
    }

    private static Object getValue(Object value, int valueType, V8Map<Object> cache, TypeAdapter adapter) {
        Object adapterResult = adapter.adapt(valueType, value);
        if (TypeAdapter.DEFAULT != adapterResult) {
            return adapterResult;
        }
        switch (valueType) {
            case 0:
                return null;
            case 1:
            case 2:
            case 3:
            case 4:
                return value;
            case 5:
                return toList((V8Array) value, cache, adapter);
            case 6:
                return toMap((V8Object) value, cache, adapter);
            case 7:
                return IGNORE;
            case 8:
                return toTypedArray((V8Array) value);
            case 10:
                return new ArrayBuffer(((V8ArrayBuffer) value).getBackingStore());
            case 99:
                return V8.getUndefined();
            default:
                throw new IllegalStateException("Cannot convert type " + V8Value.getStringRepresentation(valueType));
        }
    }

    private static Object toTypedArray(V8Array typedArray) {
        int arrayType = typedArray.getType();
        ByteBuffer buffer = ((V8TypedArray) typedArray).getByteBuffer();
        switch (arrayType) {
            case 1:
                return new Int32Array(buffer);
            case 2:
                return new Float64Array(buffer);
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            default:
                throw new IllegalStateException("Known Typed Array type: " + V8Value.getStringRepresentation(arrayType));
            case 9:
                return new Int8Array(buffer);
            case 11:
                return new UInt8Array(buffer);
            case 12:
                return new UInt8ClampedArray(buffer);
            case 13:
                return new Int16Array(buffer);
            case 14:
                return new UInt16Array(buffer);
            case 15:
                return new UInt32Array(buffer);
            case 16:
                return new Float32Array(buffer);
        }
    }

    private V8ObjectUtils() {
    }

    static class DefaultTypeAdapter implements TypeAdapter {
        DefaultTypeAdapter() {
        }

        @Override
        public Object adapt(int type, Object value) {
            return TypeAdapter.DEFAULT;
        }
    }

    public static class ListWrapper {
        private List<? extends Object> list;

        public ListWrapper(List<? extends Object> list) {
            this.list = list;
        }

        public boolean equals(Object obj) {
            return (obj instanceof ListWrapper) && ((ListWrapper) obj).list == this.list;
        }

        public int hashCode() {
            return System.identityHashCode(this.list);
        }
    }
}
