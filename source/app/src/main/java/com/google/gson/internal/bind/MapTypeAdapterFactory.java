package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class MapTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    final boolean complexMapKeySerialization;

    public MapTypeAdapterFactory(ConstructorConstructor constructorConstructor, boolean complexMapKeySerialization) {
        this.constructorConstructor = constructorConstructor;
        this.complexMapKeySerialization = complexMapKeySerialization;
    }

    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        if (!Map.class.isAssignableFrom(rawType)) {
            return null;
        }
        Class<?> rawTypeOfSrc = C$Gson$Types.getRawType(type);
        Type[] keyAndValueTypes = C$Gson$Types.getMapKeyAndValueTypes(type, rawTypeOfSrc);
        TypeAdapter<?> keyAdapter = getKeyAdapter(gson, keyAndValueTypes[0]);
        TypeAdapter<T> adapter = gson.getAdapter(TypeToken.get(keyAndValueTypes[1]));
        ObjectConstructor<T> constructor = this.constructorConstructor.get(typeToken);
        TypeAdapter<T> result = new Adapter<>(gson, keyAndValueTypes[0], keyAdapter, keyAndValueTypes[1], adapter, constructor);
        return result;
    }

    private TypeAdapter<?> getKeyAdapter(Gson context, Type keyType) {
        if (keyType == Boolean.TYPE || keyType == Boolean.class) {
            return TypeAdapters.BOOLEAN_AS_STRING;
        }
        return context.getAdapter(TypeToken.get(keyType));
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    private final class Adapter<K, V> extends TypeAdapter<Map<K, V>> {
        private final TypeAdapter<K> keyTypeAdapter;
        private final TypeAdapter<V> valueTypeAdapter;
        private final ObjectConstructor<? extends Map<K, V>> constructor;

        public Adapter(Gson context, Type keyType, TypeAdapter<K> keyTypeAdapter, Type valueType, TypeAdapter<V> valueTypeAdapter, ObjectConstructor<? extends Map<K, V>> constructor) {
            this.keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(context, keyTypeAdapter, keyType);
            this.valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(context, valueTypeAdapter, valueType);
            this.constructor = constructor;
        }

        @Override
        public Map<K, V> read2(JsonReader in2) throws IOException {
            JsonToken peek = in2.peek();
            if (peek == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            Map<K, V> map = this.constructor.construct();
            if (peek == JsonToken.BEGIN_ARRAY) {
                in2.beginArray();
                while (in2.hasNext()) {
                    in2.beginArray();
                    K key = this.keyTypeAdapter.read2(in2);
                    V value = this.valueTypeAdapter.read2(in2);
                    V replaced = map.put(key, value);
                    if (replaced != null) {
                        throw new JsonSyntaxException("duplicate key: " + ((Object) key));
                    }
                    in2.endArray();
                }
                in2.endArray();
            } else {
                in2.beginObject();
                while (in2.hasNext()) {
                    JsonReaderInternalAccess.INSTANCE.promoteNameToValue(in2);
                    K key2 = this.keyTypeAdapter.read2(in2);
                    V value2 = this.valueTypeAdapter.read2(in2);
                    V replaced2 = map.put(key2, value2);
                    if (replaced2 != null) {
                        throw new JsonSyntaxException("duplicate key: " + ((Object) key2));
                    }
                }
                in2.endObject();
            }
            return map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void write(JsonWriter jsonWriter, Map<K, V> map) throws IOException {
            if (map == null) {
                jsonWriter.nullValue();
                return;
            }
            if (!MapTypeAdapterFactory.this.complexMapKeySerialization) {
                jsonWriter.beginObject();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    jsonWriter.name(String.valueOf(entry.getKey()));
                    this.valueTypeAdapter.write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
                return;
            }
            boolean z10 = false;
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                JsonElement jsonTree = this.keyTypeAdapter.toJsonTree(entry2.getKey());
                arrayList.add(jsonTree);
                arrayList2.add(entry2.getValue());
                z10 |= jsonTree.isJsonArray() || jsonTree.isJsonObject();
            }
            if (z10) {
                jsonWriter.beginArray();
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    jsonWriter.beginArray();
                    Streams.write((JsonElement) arrayList.get(i10), jsonWriter);
                    this.valueTypeAdapter.write(jsonWriter, arrayList2.get(i10));
                    jsonWriter.endArray();
                }
                jsonWriter.endArray();
                return;
            }
            jsonWriter.beginObject();
            int size2 = arrayList.size();
            for (int i11 = 0; i11 < size2; i11++) {
                jsonWriter.name(keyToString((JsonElement) arrayList.get(i11)));
                this.valueTypeAdapter.write(jsonWriter, arrayList2.get(i11));
            }
            jsonWriter.endObject();
        }

        private String keyToString(JsonElement keyElement) {
            if (keyElement.isJsonPrimitive()) {
                JsonPrimitive primitive = keyElement.getAsJsonPrimitive();
                if (primitive.isNumber()) {
                    return String.valueOf(primitive.getAsNumber());
                }
                if (primitive.isBoolean()) {
                    return Boolean.toString(primitive.getAsBoolean());
                }
                if (primitive.isString()) {
                    return primitive.getAsString();
                }
                throw new AssertionError();
            }
            if (keyElement.isJsonNull()) {
                return "null";
            }
            throw new AssertionError();
        }
    }
}
