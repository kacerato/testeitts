package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class ArrayTypeAdapter<E> extends TypeAdapter<Object> {
    public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() {
        @Override
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            Type type = typeToken.getType();
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type componentType = C$Gson$Types.getArrayComponentType(type);
            return new ArrayTypeAdapter(gson, gson.getAdapter(TypeToken.get(componentType)), C$Gson$Types.getRawType(componentType));
        }
    };
    private final Class<E> componentType;
    private final TypeAdapter<E> componentTypeAdapter;

    public ArrayTypeAdapter(Gson context, TypeAdapter<E> componentTypeAdapter, Class<E> componentType) {
        this.componentTypeAdapter = new TypeAdapterRuntimeTypeWrapper(context, componentTypeAdapter, componentType);
        this.componentType = componentType;
    }

    @Override
    public Object read2(JsonReader in2) throws IOException {
        if (in2.peek() == JsonToken.NULL) {
            in2.nextNull();
            return null;
        }
        List<E> list = new ArrayList<>();
        in2.beginArray();
        while (in2.hasNext()) {
            E instance = this.componentTypeAdapter.read2(in2);
            list.add(instance);
        }
        in2.endArray();
        int size = list.size();
        Object array = Array.newInstance((Class<?>) this.componentType, size);
        for (int i10 = 0; i10 < size; i10++) {
            Array.set(array, i10, list.get(i10));
        }
        return array;
    }

    @Override
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.componentTypeAdapter.write(jsonWriter, Array.get(obj, i10));
        }
        jsonWriter.endArray();
    }
}
