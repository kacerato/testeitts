package com.tonyodev.fetch2.database;

import androidx.room.TypeConverter;
import com.tonyodev.fetch2.EnqueueAction;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2.Priority;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.util.FetchDefaults;
import com.tonyodev.fetch2core.Extras;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;

@t0({"SMAP\nConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Converter.kt\ncom/tonyodev/fetch2/database/Converter\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,112:1\n32#2,2:113\n32#2,2:115\n32#2,2:117\n32#2,2:119\n*S KotlinDebug\n*F\n+ 1 Converter.kt\ncom/tonyodev/fetch2/database/Converter\n*L\n28#1:113,2\n40#1:115,2\n94#1:117,2\n105#1:119,2\n*E\n"})
public final class Converter {
    @TypeConverter
    @NotNull
    public final EnqueueAction fromEnqueueActionValue(int i10) {
        return EnqueueAction.Companion.valueOf(i10);
    }

    @TypeConverter
    @NotNull
    public final Error fromErrorValue(int i10) {
        return Error.Companion.valueOf(i10);
    }

    @TypeConverter
    @NotNull
    public final Extras fromExtrasJsonToExtras(@NotNull String jsonString) {
        M.p(jsonString, "jsonString");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        JSONObject jSONObject = new JSONObject(jsonString);
        Iterator<String> keys = jSONObject.keys();
        M.o(keys, "keys(...)");
        while (keys.hasNext()) {
            String next = keys.next();
            M.m(next);
            String string = jSONObject.getString(next);
            M.o(string, "getString(...)");
            linkedHashMap.put(next, string);
        }
        return new Extras(linkedHashMap);
    }

    @TypeConverter
    @NotNull
    public final String fromExtrasToString(@NotNull Extras extras) {
        M.p(extras, "extras");
        if (extras.isEmpty()) {
            return FetchDefaults.EMPTY_JSON_OBJECT_STRING;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, String> entry : extras.getMap().entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
        }
        String jSONObject2 = jSONObject.toString();
        M.m(jSONObject2);
        return jSONObject2;
    }

    @TypeConverter
    @NotNull
    public final Map<String, String> fromJsonString(@NotNull String jsonString) {
        M.p(jsonString, "jsonString");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        JSONObject jSONObject = new JSONObject(jsonString);
        Iterator<String> keys = jSONObject.keys();
        M.o(keys, "keys(...)");
        while (keys.hasNext()) {
            String next = keys.next();
            M.m(next);
            String string = jSONObject.getString(next);
            M.o(string, "getString(...)");
            linkedHashMap.put(next, string);
        }
        return linkedHashMap;
    }

    @TypeConverter
    @NotNull
    public final NetworkType fromNetworkTypeValue(int i10) {
        return NetworkType.Companion.valueOf(i10);
    }

    @TypeConverter
    @NotNull
    public final Priority fromPriorityValue(int i10) {
        return Priority.Companion.valueOf(i10);
    }

    @TypeConverter
    @NotNull
    public final Status fromStatusValue(int i10) {
        return Status.Companion.valueOf(i10);
    }

    @TypeConverter
    public final int toEnqueueActionValue(@NotNull EnqueueAction enqueueAction) {
        M.p(enqueueAction, "enqueueAction");
        return enqueueAction.getValue();
    }

    @TypeConverter
    public final int toErrorValue(@NotNull Error error) {
        M.p(error, "error");
        return error.getValue();
    }

    @TypeConverter
    @NotNull
    public final String toHeaderStringsMap(@NotNull Map<String, String> headerMap) {
        M.p(headerMap, "headerMap");
        if (headerMap.isEmpty()) {
            return FetchDefaults.EMPTY_JSON_OBJECT_STRING;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, String> entry : headerMap.entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
        }
        String jSONObject2 = jSONObject.toString();
        M.m(jSONObject2);
        return jSONObject2;
    }

    @TypeConverter
    public final int toNetworkTypeValue(@NotNull NetworkType networkType) {
        M.p(networkType, "networkType");
        return networkType.getValue();
    }

    @TypeConverter
    public final int toPriorityValue(@NotNull Priority priority) {
        M.p(priority, "priority");
        return priority.getValue();
    }

    @TypeConverter
    public final int toStatusValue(@NotNull Status status) {
        M.p(status, "status");
        return status.getValue();
    }
}
