package com.tonyodev.fetch2core;

import Lf.o;
import android.os.Parcel;
import android.os.Parcelable;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import pf.o0;

public class Extras implements Parcelable, Serializable {
    public static final CREATOR CREATOR = new CREATOR(null);

    @NotNull
    private static final Extras emptyExtras = new Extras(o0.z());

    @NotNull
    private final Map<String, String> data;

    public static final class CREATOR implements Parcelable.Creator<Extras> {
        private CREATOR() {
        }

        @o
        public static void emptyExtras$annotations() {
        }

        @NotNull
        public final Extras getEmptyExtras() {
            return Extras.emptyExtras;
        }

        public CREATOR(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public Extras createFromParcel(@NotNull Parcel source) {
            M.q(source, "source");
            Serializable readSerializable = source.readSerializable();
            if (readSerializable != null) {
                return new Extras((HashMap) readSerializable);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.HashMap<kotlin.String, kotlin.String> /* = java.util.HashMap<kotlin.String, kotlin.String> */");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public Extras[] newArray(int i10) {
            return new Extras[i10];
        }
    }

    public Extras(@NotNull Map<String, String> data) {
        M.q(data, "data");
        this.data = data;
    }

    @NotNull
    public static final Extras getEmptyExtras() {
        return emptyExtras;
    }

    @NotNull
    public Extras copy() {
        return new Extras(o0.F0(this.data));
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj != null) {
            return M.g(this.data, ((Extras) obj).data);
        }
        throw new TypeCastException("null cannot be cast to non-null type com.tonyodev.fetch2core.Extras");
    }

    public final boolean getBoolean(@NotNull String key, boolean z10) {
        M.q(key, "key");
        String str = this.data.get(key);
        return str != null ? Boolean.parseBoolean(str) : z10;
    }

    @NotNull
    public final Map<String, String> getData() {
        return this.data;
    }

    public final double getDouble(@NotNull String key, double d10) {
        M.q(key, "key");
        String str = this.data.get(key);
        return str != null ? Double.parseDouble(str) : d10;
    }

    public final float getFloat(@NotNull String key, float f10) {
        M.q(key, "key");
        String str = this.data.get(key);
        return str != null ? Float.parseFloat(str) : f10;
    }

    public final int getInt(@NotNull String key, int i10) {
        M.q(key, "key");
        String str = this.data.get(key);
        return str != null ? Integer.parseInt(str) : i10;
    }

    public final long getLong(@NotNull String key, long j10) {
        M.q(key, "key");
        String str = this.data.get(key);
        return str != null ? Long.parseLong(str) : j10;
    }

    @NotNull
    public final Map<String, String> getMap() {
        return o0.F0(this.data);
    }

    public final int getSize() {
        return this.data.size();
    }

    @NotNull
    public final String getString(@NotNull String key, @NotNull String defaultValue) {
        M.q(key, "key");
        M.q(defaultValue, "defaultValue");
        String str = this.data.get(key);
        return str != null ? str : defaultValue;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public final boolean isEmpty() {
        return this.data.isEmpty();
    }

    public final boolean isNotEmpty() {
        return !this.data.isEmpty();
    }

    @NotNull
    public final JSONObject toJSONObject() {
        return isEmpty() ? new JSONObject() : new JSONObject(getMap());
    }

    @NotNull
    public final String toJSONString() {
        if (isEmpty()) {
            return FetchDefaults.EMPTY_JSON_OBJECT_STRING;
        }
        String jSONObject = new JSONObject(getMap()).toString();
        M.h(jSONObject, "JSONObject(map).toString()");
        return jSONObject;
    }

    @NotNull
    public final MutableExtras toMutableExtras() {
        return new MutableExtras(o0.J0(this.data));
    }

    @NotNull
    public String toString() {
        return toJSONString();
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.q(dest, "dest");
        dest.writeSerializable(new HashMap(this.data));
    }
}
