package JAVARuntime;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import d8.j;
import d8.r;
import e8.c;
import java.lang.reflect.Field;
import java.lang.reflect.Type;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Json.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Json.class
  classes.dex
 */
@ClassCategory(cat = {"Serializer"})
public class Json {
    private transient boolean prettyPrinting = false;
    private transient boolean lenient = false;
    private transient boolean ignorePrivateFields = false;
    private transient boolean ignoreProtectedFields = false;
    private transient boolean ignorePublicFields = false;

    public class AnonymousClass1 implements com.google.gson.JsonSerializer {
        @Override
        public JsonElement serialize(Object src, Type typeOfSrc, JsonSerializationContext context) {
            return src == null ? new JsonPrimitive("") : new JsonPrimitive(((JsonSerializer) src).serializeToString());
        }
    }

    public class AnonymousClass2 implements JsonDeserializer {
        final c val$reservedClass;

        public AnonymousClass2(final c val$reservedClass) {
            this.val$reservedClass = val$reservedClass;
        }

        @Override
        public Object deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
            try {
                Object newInstance = this.val$reservedClass.a().getConstructor(null).newInstance(null);
                ((JsonSerializer) newInstance).deserializeLocal(json.getAsString());
                return newInstance;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    public class AnonymousClass3 implements com.google.gson.JsonSerializer {
        @Override
        public JsonElement serialize(Object src, Type typeOfSrc, JsonSerializationContext context) {
            return src == null ? new JsonPrimitive("") : new JsonPrimitive(((JsonSerializer) src).serializeToString());
        }
    }

    public class AnonymousClass4 implements JsonDeserializer {
        final r val$reservedClass;

        public AnonymousClass4(final r val$reservedClass) {
            this.val$reservedClass = val$reservedClass;
        }

        @Override
        public Object deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
            try {
                Object newInstance = this.val$reservedClass.a().getConstructor(null).newInstance(null);
                ((JsonSerializer) newInstance).deserializeLocal(json.getAsString());
                return newInstance;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    public class AnonymousClass5 implements ExclusionStrategy {
        @Override
        public boolean shouldSkipClass(Class<?> clazz) {
            if (clazz.isPrimitive() || clazz == String.class) {
                return false;
            }
            for (int i10 = 0; i10 < j.k0(); i10++) {
                c j02 = j.j0(i10);
                if (j02.a() == clazz && !j02.f()) {
                    return true;
                }
            }
            for (int i11 = 0; i11 < j.K0(); i11++) {
                r J02 = j.J0(i11);
                if (J02.a() == clazz && !J02.g()) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean shouldSkipField(FieldAttributes f10) {
            Field field;
            try {
                field = f10.getDeclaringClass().getField(f10.getName());
            } catch (NoSuchFieldException unused) {
            }
            if (field.getType().isPrimitive() || field.getType() == String.class) {
                return false;
            }
            for (int i10 = 0; i10 < j.k0(); i10++) {
                c j02 = j.j0(i10);
                if (j02.a() == field.getType() && !j02.f()) {
                    return true;
                }
            }
            for (int i11 = 0; i11 < j.K0(); i11++) {
                r J02 = j.J0(i11);
                if (J02.a() == field.getType() && !J02.g()) {
                    return true;
                }
            }
            return false;
        }
    }

    private void buildGson() {
    }

    @HideGetSet
    public boolean isPrettyPrinting() {
        return this.prettyPrinting;
    }

    @HideGetSet
    public void setPrettyPrinting(boolean z10) {
        this.prettyPrinting = z10;
    }

    @HideGetSet
    public boolean isLenient() {
        return this.lenient;
    }

    @HideGetSet
    public void setLenient(boolean z10) {
        this.lenient = z10;
    }

    @HideGetSet
    public boolean isIgnorePrivateFields() {
        return this.ignorePrivateFields;
    }

    @HideGetSet
    public void setIgnorePrivateFields(boolean z10) {
        this.ignorePrivateFields = z10;
    }

    @HideGetSet
    public boolean isIgnoreProtectedFields() {
        return this.ignoreProtectedFields;
    }

    @HideGetSet
    public void setIgnoreProtectedFields(boolean z10) {
        this.ignoreProtectedFields = z10;
    }

    @HideGetSet
    public boolean isIgnorePublicFields() {
        return this.ignorePublicFields;
    }

    @HideGetSet
    public void setIgnorePublicFields(boolean z10) {
        this.ignorePublicFields = z10;
    }

    public String toJsonString(Object obj) {
        return null;
    }

    public Object fromJsonString(String str, Class cls) {
        return null;
    }

    public static String toJson(Object obj) {
        return toJson(obj, false);
    }

    public static String toJson(Object obj, boolean z10) {
        return toJson(obj, z10, false);
    }

    public static String toJson(Object obj, boolean z10, boolean z11) {
        return toJson(obj, z10, z11, false);
    }

    public static String toJson(Object obj, boolean z10, boolean z11, boolean z12) {
        return toJson(obj, z10, z11, z12, false);
    }

    public static String toJson(Object obj, boolean z10, boolean z11, boolean z12, boolean z13) {
        return toJson(obj, z10, z11, z12, z13, false);
    }

    public static String toJson(Object obj, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        return null;
    }

    public static Object fromJson(String str, Class cls) {
        return fromJson(str, cls, false);
    }

    public static Object fromJson(String str, Class cls, boolean z10) {
        return null;
    }
}
