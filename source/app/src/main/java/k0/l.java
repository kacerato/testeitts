package k0;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.I;

@t0({"SMAP\nJsonConverters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonConverters.kt\ncom/google/ai/edge/litertlm/JsonConvertersKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1586#2:84\n1661#2,3:85\n*S KotlinDebug\n*F\n+ 1 JsonConverters.kt\ncom/google/ai/edge/litertlm/JsonConvertersKt\n*L\n70#1:84\n70#1:85,3\n*E\n"})
public final class l {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.gson.JsonPrimitive] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.gson.JsonPrimitive] */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.gson.JsonArray] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.gson.JsonPrimitive] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.gson.JsonPrimitive] */
    @NotNull
    public static final JsonElement a(@Nullable Object $this$toJsonElement) {
        JsonElement jsonPrimitive;
        if ($this$toJsonElement == null) {
            JsonNull INSTANCE = JsonNull.INSTANCE;
            M.o(INSTANCE, "INSTANCE");
            return INSTANCE;
        }
        if ($this$toJsonElement instanceof JsonElement) {
            return (JsonElement) $this$toJsonElement;
        }
        if ($this$toJsonElement instanceof Map) {
            jsonPrimitive = new JsonObject();
            for (Map.Entry entry : ((Map) $this$toJsonElement).entrySet()) {
                jsonPrimitive.add(String.valueOf(entry.getKey()), a(entry.getValue()));
            }
        } else if ($this$toJsonElement instanceof List) {
            jsonPrimitive = new JsonArray();
            Iterator it = ((List) $this$toJsonElement).iterator();
            while (it.hasNext()) {
                jsonPrimitive.add(a(it.next()));
            }
        } else if ($this$toJsonElement instanceof String) {
            jsonPrimitive = new JsonPrimitive((String) $this$toJsonElement);
        } else if ($this$toJsonElement instanceof Number) {
            jsonPrimitive = new JsonPrimitive((Number) $this$toJsonElement);
        } else if ($this$toJsonElement instanceof Boolean) {
            jsonPrimitive = new JsonPrimitive((Boolean) $this$toJsonElement);
        } else {
            if ($this$toJsonElement instanceof P0) {
                return new JsonPrimitive("");
            }
            jsonPrimitive = new JsonPrimitive($this$toJsonElement.toString());
        }
        return jsonPrimitive;
    }

    @NotNull
    public static final JsonObject b(@NotNull Map<String, ? extends Object> $this$toJsonObject) {
        M.p($this$toJsonObject, "<this>");
        JsonObject jsonObject = new JsonObject();
        for (Map.Entry<String, ? extends Object> entry : $this$toJsonObject.entrySet()) {
            jsonObject.add(entry.getKey(), a(entry.getValue()));
        }
        return jsonObject;
    }

    @Nullable
    public static final Object c(@NotNull JsonElement $this$toKotlinValue) {
        M.p($this$toKotlinValue, "<this>");
        if ($this$toKotlinValue.isJsonNull()) {
            return null;
        }
        if ($this$toKotlinValue.isJsonObject()) {
            JsonObject asJsonObject = $this$toKotlinValue.getAsJsonObject();
            M.o(asJsonObject, "getAsJsonObject(...)");
            return d(asJsonObject);
        }
        if (!$this$toKotlinValue.isJsonArray()) {
            if (!$this$toKotlinValue.isJsonPrimitive()) {
                return $this$toKotlinValue;
            }
            JsonPrimitive asJsonPrimitive = $this$toKotlinValue.getAsJsonPrimitive();
            return asJsonPrimitive.isBoolean() ? Boolean.valueOf(asJsonPrimitive.getAsBoolean()) : asJsonPrimitive.isNumber() ? asJsonPrimitive.getAsNumber() : asJsonPrimitive.isString() ? asJsonPrimitive.getAsString() : $this$toKotlinValue;
        }
        JsonArray asJsonArray = $this$toKotlinValue.getAsJsonArray();
        M.o(asJsonArray, "getAsJsonArray(...)");
        ArrayList arrayList = new ArrayList(I.d0(asJsonArray, 10));
        for (JsonElement jsonElement : asJsonArray) {
            M.m(jsonElement);
            arrayList.add(c(jsonElement));
        }
        return arrayList;
    }

    @NotNull
    public static final Map<String, Object> d(@NotNull JsonObject $this$toMap) {
        M.p($this$toMap, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, JsonElement> entry : $this$toMap.entrySet()) {
            String key = entry.getKey();
            JsonElement value = entry.getValue();
            M.o(value, "<get-value>(...)");
            linkedHashMap.put(key, c(value));
        }
        return linkedHashMap;
    }
}
