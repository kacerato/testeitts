package com.google.gson;

import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public abstract class TypeAdapter<T> {
    public abstract void write(JsonWriter jsonWriter, T t10) throws IOException;

    public abstract T read2(JsonReader jsonReader) throws IOException;

    public final void toJson(Writer out, T value) throws IOException {
        JsonWriter writer = new JsonWriter(out);
        write(writer, value);
    }

    public final TypeAdapter<T> nullSafe() {
        return new TypeAdapter<T>() {
            @Override
            public void write(JsonWriter out, T value) throws IOException {
                if (value == null) {
                    out.nullValue();
                } else {
                    TypeAdapter.this.write(out, value);
                }
            }

            @Override
            public T read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return (T) TypeAdapter.this.read2(jsonReader);
            }
        };
    }

    public final String toJson(T value) {
        StringWriter stringWriter = new StringWriter();
        try {
            toJson(stringWriter, value);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public final JsonElement toJsonTree(T value) {
        try {
            JsonTreeWriter jsonWriter = new JsonTreeWriter();
            write(jsonWriter, value);
            return jsonWriter.get();
        } catch (IOException e10) {
            throw new JsonIOException(e10);
        }
    }

    public final T fromJson(Reader in2) throws IOException {
        JsonReader reader = new JsonReader(in2);
        return read2(reader);
    }

    public final T fromJson(String json) throws IOException {
        return fromJson(new StringReader(json));
    }

    public final T fromJsonTree(JsonElement jsonTree) {
        try {
            JsonReader jsonReader = new JsonTreeReader(jsonTree);
            return read2(jsonReader);
        } catch (IOException e10) {
            throw new JsonIOException(e10);
        }
    }
}
