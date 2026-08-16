package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavaElement;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class JsonTreeReader extends JsonReader {
    private static final Reader UNREADABLE_READER = new Reader() {
        @Override
        public int read(char[] buffer, int offset, int count) throws IOException {
            throw new AssertionError();
        }

        @Override
        public void close() throws IOException {
            throw new AssertionError();
        }
    };
    private static final Object SENTINEL_CLOSED = new Object();
    private Object[] stack;
    private int stackSize;
    private String[] pathNames;
    private int[] pathIndices;

    public JsonTreeReader(JsonElement element) {
        super(UNREADABLE_READER);
        this.stack = new Object[32];
        this.stackSize = 0;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        push(element);
    }

    @Override
    public void beginArray() throws IOException {
        expect(JsonToken.BEGIN_ARRAY);
        JsonArray array = (JsonArray) peekStack();
        push(array.iterator());
        this.pathIndices[this.stackSize - 1] = 0;
    }

    @Override
    public void endArray() throws IOException {
        expect(JsonToken.END_ARRAY);
        popStack();
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
        }
    }

    @Override
    public void beginObject() throws IOException {
        expect(JsonToken.BEGIN_OBJECT);
        JsonObject object = (JsonObject) peekStack();
        push(object.entrySet().iterator());
    }

    @Override
    public void endObject() throws IOException {
        expect(JsonToken.END_OBJECT);
        popStack();
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
        }
    }

    @Override
    public boolean hasNext() throws IOException {
        JsonToken token = peek();
        return (token == JsonToken.END_OBJECT || token == JsonToken.END_ARRAY) ? false : true;
    }

    @Override
    public JsonToken peek() throws IOException {
        if (this.stackSize == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object o10 = peekStack();
        if (o10 instanceof Iterator) {
            boolean isObject = this.stack[this.stackSize - 2] instanceof JsonObject;
            Iterator<?> iterator = (Iterator) o10;
            if (!iterator.hasNext()) {
                return isObject ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (isObject) {
                return JsonToken.NAME;
            }
            push(iterator.next());
            return peek();
        }
        if (o10 instanceof JsonObject) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (o10 instanceof JsonArray) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (o10 instanceof JsonPrimitive) {
            JsonPrimitive primitive = (JsonPrimitive) o10;
            if (primitive.isString()) {
                return JsonToken.STRING;
            }
            if (primitive.isBoolean()) {
                return JsonToken.BOOLEAN;
            }
            if (primitive.isNumber()) {
                return JsonToken.NUMBER;
            }
            throw new AssertionError();
        }
        if (o10 instanceof JsonNull) {
            return JsonToken.NULL;
        }
        if (o10 == SENTINEL_CLOSED) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new AssertionError();
    }

    private Object peekStack() {
        return this.stack[this.stackSize - 1];
    }

    private Object popStack() {
        Object[] objArr = this.stack;
        int i10 = this.stackSize - 1;
        this.stackSize = i10;
        Object result = objArr[i10];
        this.stack[this.stackSize] = null;
        return result;
    }

    private void expect(JsonToken expected) throws IOException {
        if (peek() != expected) {
            throw new IllegalStateException("Expected " + ((Object) expected) + " but was " + ((Object) peek()) + locationString());
        }
    }

    @Override
    public String nextName() throws IOException {
        expect(JsonToken.NAME);
        Iterator<?> i10 = (Iterator) peekStack();
        Map.Entry<?, ?> entry = (Map.Entry) i10.next();
        String result = (String) entry.getKey();
        this.pathNames[this.stackSize - 1] = result;
        push(entry.getValue());
        return result;
    }

    @Override
    public String nextString() throws IOException {
        JsonToken token = peek();
        if (token != JsonToken.STRING && token != JsonToken.NUMBER) {
            throw new IllegalStateException("Expected " + ((Object) JsonToken.STRING) + " but was " + ((Object) token) + locationString());
        }
        String result = ((JsonPrimitive) popStack()).getAsString();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
        }
        return result;
    }

    @Override
    public boolean nextBoolean() throws IOException {
        expect(JsonToken.BOOLEAN);
        boolean result = ((JsonPrimitive) popStack()).getAsBoolean();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
        }
        return result;
    }

    @Override
    public void nextNull() throws IOException {
        expect(JsonToken.NULL);
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
        }
    }

    @Override
    public double nextDouble() throws IOException {
        JsonToken token = peek();
        if (token != JsonToken.NUMBER && token != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + ((Object) JsonToken.NUMBER) + " but was " + ((Object) token) + locationString());
        }
        double result = ((JsonPrimitive) peekStack()).getAsDouble();
        if (!isLenient() && (Double.isNaN(result) || Double.isInfinite(result))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + result);
        }
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
        }
        return result;
    }

    @Override
    public long nextLong() throws IOException {
        JsonToken token = peek();
        if (token != JsonToken.NUMBER && token != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + ((Object) JsonToken.NUMBER) + " but was " + ((Object) token) + locationString());
        }
        long result = ((JsonPrimitive) peekStack()).getAsLong();
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
        }
        return result;
    }

    @Override
    public int nextInt() throws IOException {
        JsonToken token = peek();
        if (token != JsonToken.NUMBER && token != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + ((Object) JsonToken.NUMBER) + " but was " + ((Object) token) + locationString());
        }
        int result = ((JsonPrimitive) peekStack()).getAsInt();
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
        }
        return result;
    }

    @Override
    public void close() throws IOException {
        this.stack = new Object[]{SENTINEL_CLOSED};
        this.stackSize = 1;
    }

    @Override
    public void skipValue() throws IOException {
        if (peek() == JsonToken.NAME) {
            nextName();
            this.pathNames[this.stackSize - 2] = "null";
        } else {
            popStack();
            if (this.stackSize > 0) {
                this.pathNames[this.stackSize - 1] = "null";
            }
        }
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
        }
    }

    @Override
    public String toString() {
        return getClass().getSimpleName();
    }

    public void promoteNameToValue() throws IOException {
        expect(JsonToken.NAME);
        Iterator<?> i10 = (Iterator) peekStack();
        Map.Entry<?, ?> entry = (Map.Entry) i10.next();
        push(entry.getValue());
        push(new JsonPrimitive((String) entry.getKey()));
    }

    private void push(Object newTop) {
        if (this.stackSize == this.stack.length) {
            int newLength = this.stackSize * 2;
            this.stack = Arrays.copyOf(this.stack, newLength);
            this.pathIndices = Arrays.copyOf(this.pathIndices, newLength);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, newLength);
        }
        Object[] objArr = this.stack;
        int i10 = this.stackSize;
        this.stackSize = i10 + 1;
        objArr[i10] = newTop;
    }

    @Override
    public String getPath() {
        StringBuilder result = new StringBuilder().append('$');
        int i10 = 0;
        while (i10 < this.stackSize) {
            if (this.stack[i10] instanceof JsonArray) {
                i10++;
                if (this.stack[i10] instanceof Iterator) {
                    result.append('[').append(this.pathIndices[i10]).append(JavaElement.JEM_TYPE_PARAMETER);
                }
            } else if (this.stack[i10] instanceof JsonObject) {
                i10++;
                if (this.stack[i10] instanceof Iterator) {
                    result.append('.');
                    if (this.pathNames[i10] != null) {
                        result.append(this.pathNames[i10]);
                    }
                }
            }
            i10++;
        }
        return result.toString();
    }

    private String locationString() {
        return " at path " + getPath();
    }
}
