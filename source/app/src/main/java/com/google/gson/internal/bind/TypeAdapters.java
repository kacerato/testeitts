package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class TypeAdapters {
    public static final TypeAdapter<Class> CLASS = new TypeAdapter<Class>() {
        @Override
        public void write(JsonWriter out, Class value) throws IOException {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + value.getName() + ". Forgot to register a type adapter?");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Class read2(JsonReader in2) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    }.nullSafe();
    public static final TypeAdapterFactory CLASS_FACTORY = newFactory(Class.class, CLASS);
    public static final TypeAdapter<BitSet> BIT_SET = new TypeAdapter<BitSet>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public BitSet read2(JsonReader in2) throws IOException {
            boolean set;
            BitSet bitset = new BitSet();
            in2.beginArray();
            int i10 = 0;
            JsonToken peek = in2.peek();
            while (true) {
                JsonToken tokenType = peek;
                if (tokenType != JsonToken.END_ARRAY) {
                    switch (AnonymousClass36.$SwitchMap$com$google$gson$stream$JsonToken[tokenType.ordinal()]) {
                        case 1:
                            set = in2.nextInt() != 0;
                            break;
                        case 2:
                            set = in2.nextBoolean();
                            break;
                        case 3:
                            String stringValue = in2.nextString();
                            try {
                                set = Integer.parseInt(stringValue) != 0;
                                break;
                            } catch (NumberFormatException e10) {
                                throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + stringValue);
                            }
                        default:
                            throw new JsonSyntaxException("Invalid bitset value type: " + ((Object) tokenType));
                    }
                    if (set) {
                        bitset.set(i10);
                    }
                    i10++;
                    peek = in2.peek();
                } else {
                    in2.endArray();
                    return bitset;
                }
            }
        }

        @Override
        public void write(JsonWriter out, BitSet src) throws IOException {
            out.beginArray();
            int length = src.length();
            for (int i10 = 0; i10 < length; i10++) {
                int value = src.get(i10) ? 1 : 0;
                out.value(value);
            }
            out.endArray();
        }
    }.nullSafe();
    public static final TypeAdapterFactory BIT_SET_FACTORY = newFactory(BitSet.class, BIT_SET);
    public static final TypeAdapter<Boolean> BOOLEAN = new TypeAdapter<Boolean>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Boolean read2(JsonReader in2) throws IOException {
            JsonToken peek = in2.peek();
            if (peek == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            if (peek == JsonToken.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(in2.nextString()));
            }
            return Boolean.valueOf(in2.nextBoolean());
        }

        @Override
        public void write(JsonWriter out, Boolean value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapter<Boolean> BOOLEAN_AS_STRING = new TypeAdapter<Boolean>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Boolean read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            return Boolean.valueOf(in2.nextString());
        }

        @Override
        public void write(JsonWriter out, Boolean value) throws IOException {
            out.value(value == null ? "null" : value.toString());
        }
    };
    public static final TypeAdapterFactory BOOLEAN_FACTORY = newFactory(Boolean.TYPE, Boolean.class, BOOLEAN);
    public static final TypeAdapter<Number> BYTE = new TypeAdapter<Number>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Number read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            try {
                int intValue = in2.nextInt();
                return Byte.valueOf((byte) intValue);
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override
        public void write(JsonWriter out, Number value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapterFactory BYTE_FACTORY = newFactory(Byte.TYPE, Byte.class, BYTE);
    public static final TypeAdapter<Number> SHORT = new TypeAdapter<Number>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Number read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            try {
                return Short.valueOf((short) in2.nextInt());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override
        public void write(JsonWriter out, Number value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapterFactory SHORT_FACTORY = newFactory(Short.TYPE, Short.class, SHORT);
    public static final TypeAdapter<Number> INTEGER = new TypeAdapter<Number>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Number read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            try {
                return Integer.valueOf(in2.nextInt());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override
        public void write(JsonWriter out, Number value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapterFactory INTEGER_FACTORY = newFactory(Integer.TYPE, Integer.class, INTEGER);
    public static final TypeAdapter<AtomicInteger> ATOMIC_INTEGER = new TypeAdapter<AtomicInteger>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AtomicInteger read2(JsonReader in2) throws IOException {
            try {
                return new AtomicInteger(in2.nextInt());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override
        public void write(JsonWriter out, AtomicInteger value) throws IOException {
            out.value(value.get());
        }
    }.nullSafe();
    public static final TypeAdapterFactory ATOMIC_INTEGER_FACTORY = newFactory(AtomicInteger.class, ATOMIC_INTEGER);
    public static final TypeAdapter<AtomicBoolean> ATOMIC_BOOLEAN = new TypeAdapter<AtomicBoolean>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AtomicBoolean read2(JsonReader in2) throws IOException {
            return new AtomicBoolean(in2.nextBoolean());
        }

        @Override
        public void write(JsonWriter out, AtomicBoolean value) throws IOException {
            out.value(value.get());
        }
    }.nullSafe();
    public static final TypeAdapterFactory ATOMIC_BOOLEAN_FACTORY = newFactory(AtomicBoolean.class, ATOMIC_BOOLEAN);
    public static final TypeAdapter<AtomicIntegerArray> ATOMIC_INTEGER_ARRAY = new TypeAdapter<AtomicIntegerArray>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AtomicIntegerArray read2(JsonReader in2) throws IOException {
            List<Integer> list = new ArrayList<>();
            in2.beginArray();
            while (in2.hasNext()) {
                try {
                    int integer = in2.nextInt();
                    list.add(Integer.valueOf(integer));
                } catch (NumberFormatException e10) {
                    throw new JsonSyntaxException(e10);
                }
            }
            in2.endArray();
            int length = list.size();
            AtomicIntegerArray array = new AtomicIntegerArray(length);
            for (int i10 = 0; i10 < length; i10++) {
                array.set(i10, list.get(i10).intValue());
            }
            return array;
        }

        @Override
        public void write(JsonWriter out, AtomicIntegerArray value) throws IOException {
            out.beginArray();
            int length = value.length();
            for (int i10 = 0; i10 < length; i10++) {
                out.value(value.get(i10));
            }
            out.endArray();
        }
    }.nullSafe();
    public static final TypeAdapterFactory ATOMIC_INTEGER_ARRAY_FACTORY = newFactory(AtomicIntegerArray.class, ATOMIC_INTEGER_ARRAY);
    public static final TypeAdapter<Number> LONG = new TypeAdapter<Number>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Number read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            try {
                return Long.valueOf(in2.nextLong());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override
        public void write(JsonWriter out, Number value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapter<Number> FLOAT = new TypeAdapter<Number>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Number read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            return Float.valueOf((float) in2.nextDouble());
        }

        @Override
        public void write(JsonWriter out, Number value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapter<Number> DOUBLE = new TypeAdapter<Number>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Number read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            return Double.valueOf(in2.nextDouble());
        }

        @Override
        public void write(JsonWriter out, Number value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapter<Number> NUMBER = new TypeAdapter<Number>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Number read2(JsonReader in2) throws IOException {
            JsonToken jsonToken = in2.peek();
            switch (AnonymousClass36.$SwitchMap$com$google$gson$stream$JsonToken[jsonToken.ordinal()]) {
                case 1:
                case 3:
                    return new LazilyParsedNumber(in2.nextString());
                case 2:
                default:
                    throw new JsonSyntaxException("Expecting number, got: " + ((Object) jsonToken));
                case 4:
                    in2.nextNull();
                    return null;
            }
        }

        @Override
        public void write(JsonWriter out, Number value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapterFactory NUMBER_FACTORY = newFactory(Number.class, NUMBER);
    public static final TypeAdapter<Character> CHARACTER = new TypeAdapter<Character>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Character read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            String str = in2.nextString();
            if (str.length() != 1) {
                throw new JsonSyntaxException("Expecting character, got: " + str);
            }
            return Character.valueOf(str.charAt(0));
        }

        @Override
        public void write(JsonWriter out, Character value) throws IOException {
            out.value(value == null ? null : String.valueOf(value));
        }
    };
    public static final TypeAdapterFactory CHARACTER_FACTORY = newFactory(Character.TYPE, Character.class, CHARACTER);
    public static final TypeAdapter<String> STRING = new TypeAdapter<String>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public String read2(JsonReader in2) throws IOException {
            JsonToken peek = in2.peek();
            if (peek == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            if (peek == JsonToken.BOOLEAN) {
                return Boolean.toString(in2.nextBoolean());
            }
            return in2.nextString();
        }

        @Override
        public void write(JsonWriter out, String value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapter<BigDecimal> BIG_DECIMAL = new TypeAdapter<BigDecimal>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public BigDecimal read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            try {
                return new BigDecimal(in2.nextString());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override
        public void write(JsonWriter out, BigDecimal value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapter<BigInteger> BIG_INTEGER = new TypeAdapter<BigInteger>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public BigInteger read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            try {
                return new BigInteger(in2.nextString());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override
        public void write(JsonWriter out, BigInteger value) throws IOException {
            out.value(value);
        }
    };
    public static final TypeAdapterFactory STRING_FACTORY = newFactory(String.class, STRING);
    public static final TypeAdapter<StringBuilder> STRING_BUILDER = new TypeAdapter<StringBuilder>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public StringBuilder read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            return new StringBuilder(in2.nextString());
        }

        @Override
        public void write(JsonWriter out, StringBuilder value) throws IOException {
            out.value(value == null ? null : value.toString());
        }
    };
    public static final TypeAdapterFactory STRING_BUILDER_FACTORY = newFactory(StringBuilder.class, STRING_BUILDER);
    public static final TypeAdapter<StringBuffer> STRING_BUFFER = new TypeAdapter<StringBuffer>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public StringBuffer read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            return new StringBuffer(in2.nextString());
        }

        @Override
        public void write(JsonWriter out, StringBuffer value) throws IOException {
            out.value(value == null ? null : value.toString());
        }
    };
    public static final TypeAdapterFactory STRING_BUFFER_FACTORY = newFactory(StringBuffer.class, STRING_BUFFER);
    public static final TypeAdapter<URL> URL = new TypeAdapter<URL>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public URL read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            String nextString = in2.nextString();
            if ("null".equals(nextString)) {
                return null;
            }
            return new URL(nextString);
        }

        @Override
        public void write(JsonWriter out, URL value) throws IOException {
            out.value(value == null ? null : value.toExternalForm());
        }
    };
    public static final TypeAdapterFactory URL_FACTORY = newFactory(URL.class, URL);
    public static final TypeAdapter<URI> URI = new TypeAdapter<URI>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public URI read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            try {
                String nextString = in2.nextString();
                if ("null".equals(nextString)) {
                    return null;
                }
                return new URI(nextString);
            } catch (URISyntaxException e10) {
                throw new JsonIOException(e10);
            }
        }

        @Override
        public void write(JsonWriter out, URI value) throws IOException {
            out.value(value == null ? null : value.toASCIIString());
        }
    };
    public static final TypeAdapterFactory URI_FACTORY = newFactory(URI.class, URI);
    public static final TypeAdapter<InetAddress> INET_ADDRESS = new TypeAdapter<InetAddress>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public InetAddress read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            return InetAddress.getByName(in2.nextString());
        }

        @Override
        public void write(JsonWriter out, InetAddress value) throws IOException {
            out.value(value == null ? null : value.getHostAddress());
        }
    };
    public static final TypeAdapterFactory INET_ADDRESS_FACTORY = newTypeHierarchyFactory(InetAddress.class, INET_ADDRESS);
    public static final TypeAdapter<UUID> UUID = new TypeAdapter<UUID>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public UUID read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            return UUID.fromString(in2.nextString());
        }

        @Override
        public void write(JsonWriter out, UUID value) throws IOException {
            out.value(value == null ? null : value.toString());
        }
    };
    public static final TypeAdapterFactory UUID_FACTORY = newFactory(UUID.class, UUID);
    public static final TypeAdapter<Currency> CURRENCY = new TypeAdapter<Currency>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Currency read2(JsonReader in2) throws IOException {
            return Currency.getInstance(in2.nextString());
        }

        @Override
        public void write(JsonWriter out, Currency value) throws IOException {
            out.value(value.getCurrencyCode());
        }
    }.nullSafe();
    public static final TypeAdapterFactory CURRENCY_FACTORY = newFactory(Currency.class, CURRENCY);
    public static final TypeAdapterFactory TIMESTAMP_FACTORY = new TypeAdapterFactory() {
        @Override
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() != Timestamp.class) {
                return null;
            }
            final TypeAdapter<T> adapter = gson.getAdapter(Date.class);
            return (TypeAdapter<T>) new TypeAdapter<Timestamp>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Timestamp read2(JsonReader in2) throws IOException {
                    Date date = (Date) adapter.read2(in2);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                @Override
                public void write(JsonWriter out, Timestamp value) throws IOException {
                    adapter.write(out, value);
                }
            };
        }
    };
    public static final TypeAdapter<Calendar> CALENDAR = new TypeAdapter<Calendar>() {
        private static final String YEAR = "year";
        private static final String MONTH = "month";
        private static final String DAY_OF_MONTH = "dayOfMonth";
        private static final String HOUR_OF_DAY = "hourOfDay";
        private static final String MINUTE = "minute";
        private static final String SECOND = "second";

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Calendar read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            in2.beginObject();
            int year = 0;
            int month = 0;
            int dayOfMonth = 0;
            int hourOfDay = 0;
            int minute = 0;
            int second = 0;
            while (in2.peek() != JsonToken.END_OBJECT) {
                String name = in2.nextName();
                int value = in2.nextInt();
                if ("year".equals(name)) {
                    year = value;
                } else if (MONTH.equals(name)) {
                    month = value;
                } else if (DAY_OF_MONTH.equals(name)) {
                    dayOfMonth = value;
                } else if (HOUR_OF_DAY.equals(name)) {
                    hourOfDay = value;
                } else if (MINUTE.equals(name)) {
                    minute = value;
                } else if (SECOND.equals(name)) {
                    second = value;
                }
            }
            in2.endObject();
            return new GregorianCalendar(year, month, dayOfMonth, hourOfDay, minute, second);
        }

        @Override
        public void write(JsonWriter out, Calendar value) throws IOException {
            if (value == null) {
                out.nullValue();
                return;
            }
            out.beginObject();
            out.name("year");
            out.value(value.get(1));
            out.name(MONTH);
            out.value(value.get(2));
            out.name(DAY_OF_MONTH);
            out.value(value.get(5));
            out.name(HOUR_OF_DAY);
            out.value(value.get(11));
            out.name(MINUTE);
            out.value(value.get(12));
            out.name(SECOND);
            out.value(value.get(13));
            out.endObject();
        }
    };
    public static final TypeAdapterFactory CALENDAR_FACTORY = newFactoryForMultipleTypes(Calendar.class, GregorianCalendar.class, CALENDAR);
    public static final TypeAdapter<Locale> LOCALE = new TypeAdapter<Locale>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Locale read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            String locale = in2.nextString();
            StringTokenizer tokenizer = new StringTokenizer(locale, ConstantDescs.DEFAULT_NAME);
            String language = null;
            String country = null;
            String variant = null;
            if (tokenizer.hasMoreElements()) {
                language = tokenizer.nextToken();
            }
            if (tokenizer.hasMoreElements()) {
                country = tokenizer.nextToken();
            }
            if (tokenizer.hasMoreElements()) {
                variant = tokenizer.nextToken();
            }
            if (country == null && variant == null) {
                return new Locale(language);
            }
            if (variant == null) {
                return new Locale(language, country);
            }
            return new Locale(language, country, variant);
        }

        @Override
        public void write(JsonWriter out, Locale value) throws IOException {
            out.value(value == null ? null : value.toString());
        }
    };
    public static final TypeAdapterFactory LOCALE_FACTORY = newFactory(Locale.class, LOCALE);
    public static final TypeAdapter<JsonElement> JSON_ELEMENT = new TypeAdapter<JsonElement>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public JsonElement read2(JsonReader in2) throws IOException {
            switch (AnonymousClass36.$SwitchMap$com$google$gson$stream$JsonToken[in2.peek().ordinal()]) {
                case 1:
                    String number = in2.nextString();
                    return new JsonPrimitive(new LazilyParsedNumber(number));
                case 2:
                    return new JsonPrimitive(Boolean.valueOf(in2.nextBoolean()));
                case 3:
                    return new JsonPrimitive(in2.nextString());
                case 4:
                    in2.nextNull();
                    return JsonNull.INSTANCE;
                case 5:
                    JsonArray array = new JsonArray();
                    in2.beginArray();
                    while (in2.hasNext()) {
                        array.add(read2(in2));
                    }
                    in2.endArray();
                    return array;
                case 6:
                    JsonObject object = new JsonObject();
                    in2.beginObject();
                    while (in2.hasNext()) {
                        object.add(in2.nextName(), read2(in2));
                    }
                    in2.endObject();
                    return object;
                case 7:
                case 8:
                case 9:
                case 10:
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override
        public void write(JsonWriter out, JsonElement value) throws IOException {
            if (value == null || value.isJsonNull()) {
                out.nullValue();
                return;
            }
            if (value.isJsonPrimitive()) {
                JsonPrimitive primitive = value.getAsJsonPrimitive();
                if (primitive.isNumber()) {
                    out.value(primitive.getAsNumber());
                    return;
                } else if (primitive.isBoolean()) {
                    out.value(primitive.getAsBoolean());
                    return;
                } else {
                    out.value(primitive.getAsString());
                    return;
                }
            }
            if (value.isJsonArray()) {
                out.beginArray();
                Iterator<JsonElement> it = value.getAsJsonArray().iterator();
                while (it.hasNext()) {
                    write(out, it.next());
                }
                out.endArray();
                return;
            }
            if (value.isJsonObject()) {
                out.beginObject();
                for (Map.Entry<String, JsonElement> e10 : value.getAsJsonObject().entrySet()) {
                    out.name(e10.getKey());
                    write(out, e10.getValue());
                }
                out.endObject();
                return;
            }
            throw new IllegalArgumentException("Couldn't write " + ((Object) value.getClass()));
        }
    };
    public static final TypeAdapterFactory JSON_ELEMENT_FACTORY = newTypeHierarchyFactory(JsonElement.class, JSON_ELEMENT);
    public static final TypeAdapterFactory ENUM_FACTORY = new TypeAdapterFactory() {
        @Override
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            Class<? super T> rawType = typeToken.getRawType();
            if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                return null;
            }
            if (!rawType.isEnum()) {
                rawType = rawType.getSuperclass();
            }
            return new EnumTypeAdapter(rawType);
        }
    };

    private TypeAdapters() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    public static class AnonymousClass36 {
        static final int[] $SwitchMap$com$google$gson$stream$JsonToken = new int[JsonToken.values().length];

        static {
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e19) {
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    private static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {
        private final Map<String, T> nameToConstant = new HashMap();
        private final Map<T, String> constantToName = new HashMap();

        public EnumTypeAdapter(Class<T> classOfT) {
            try {
                for (T constant : classOfT.getEnumConstants()) {
                    String name = constant.name();
                    SerializedName annotation = (SerializedName) classOfT.getField(name).getAnnotation(SerializedName.class);
                    if (annotation != null) {
                        name = annotation.value();
                        for (String alternate : annotation.alternate()) {
                            this.nameToConstant.put(alternate, constant);
                        }
                    }
                    this.nameToConstant.put(name, constant);
                    this.constantToName.put(constant, name);
                }
            } catch (NoSuchFieldException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public T read2(JsonReader in2) throws IOException {
            if (in2.peek() == JsonToken.NULL) {
                in2.nextNull();
                return null;
            }
            return this.nameToConstant.get(in2.nextString());
        }

        @Override
        public void write(JsonWriter out, T value) throws IOException {
            out.value(value == null ? null : this.constantToName.get(value));
        }
    }

    public static <TT> TypeAdapterFactory newFactory(final TypeToken<TT> type, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() {
            @Override
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (typeToken.equals(TypeToken.this)) {
                    return typeAdapter;
                }
                return null;
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> type, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() {
            @Override
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (typeToken.getRawType() == Class.this) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + Class.this.getName() + ",adapter=" + ((Object) typeAdapter) + "]";
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> unboxed, final Class<TT> boxed, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() {
            @Override
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (rawType == Class.this || rawType == boxed) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + boxed.getName() + "+" + Class.this.getName() + ",adapter=" + ((Object) typeAdapter) + "]";
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactoryForMultipleTypes(final Class<TT> base, final Class<? extends TT> sub, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() {
            @Override
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (rawType == Class.this || rawType == sub) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + Class.this.getName() + "+" + sub.getName() + ",adapter=" + ((Object) typeAdapter) + "]";
            }
        };
    }

    public static <T1> TypeAdapterFactory newTypeHierarchyFactory(final Class<T1> clazz, final TypeAdapter<T1> typeAdapter) {
        return new TypeAdapterFactory() {
            @Override
            public <T2> TypeAdapter<T2> create(Gson gson, TypeToken<T2> typeToken) {
                final Class<? super T2> rawType = typeToken.getRawType();
                if (!Class.this.isAssignableFrom(rawType)) {
                    return null;
                }
                return (TypeAdapter<T2>) new TypeAdapter<T1>() {
                    @Override
                    public void write(JsonWriter out, T1 value) throws IOException {
                        typeAdapter.write(out, value);
                    }

                    @Override
                    public T1 read2(JsonReader jsonReader) throws IOException {
                        T1 t12 = (T1) typeAdapter.read2(jsonReader);
                        if (t12 != null && !rawType.isInstance(t12)) {
                            throw new JsonSyntaxException("Expected a " + rawType.getName() + " but was " + t12.getClass().getName());
                        }
                        return t12;
                    }
                };
            }

            public String toString() {
                return "Factory[typeHierarchy=" + Class.this.getName() + ",adapter=" + ((Object) typeAdapter) + "]";
            }
        };
    }
}
