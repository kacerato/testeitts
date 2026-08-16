package com.tonyodev.fetch2core;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.o0;

public class MutableExtras extends Extras implements Serializable {
    public static final CREATOR CREATOR = new CREATOR(null);

    @NotNull
    private final Map<String, String> mutableData;

    public static final class CREATOR implements Parcelable.Creator<MutableExtras> {
        private CREATOR() {
        }

        public CREATOR(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public MutableExtras createFromParcel(@NotNull Parcel source) {
            M.q(source, "source");
            Serializable readSerializable = source.readSerializable();
            if (readSerializable != null) {
                return new MutableExtras(o0.J0((HashMap) readSerializable));
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.HashMap<kotlin.String, kotlin.String> /* = java.util.HashMap<kotlin.String, kotlin.String> */");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public MutableExtras[] newArray(int i10) {
            return new MutableExtras[i10];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MutableExtras() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void clear() {
        this.mutableData.clear();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(getClass(), obj != null ? obj.getClass() : null) || !super.equals(obj)) {
            return false;
        }
        if (obj != null) {
            return M.g(this.mutableData, ((MutableExtras) obj).mutableData);
        }
        throw new TypeCastException("null cannot be cast to non-null type com.tonyodev.fetch2core.MutableExtras");
    }

    @NotNull
    public final Map<String, String> getMutableData() {
        return this.mutableData;
    }

    @Override
    public int hashCode() {
        return (super.hashCode() * 31) + this.mutableData.hashCode();
    }

    public final void putBoolean(@NotNull String key, boolean z10) {
        M.q(key, "key");
        this.mutableData.put(key, String.valueOf(z10));
    }

    public final void putDouble(@NotNull String key, double d10) {
        M.q(key, "key");
        this.mutableData.put(key, String.valueOf(d10));
    }

    public final void putFloat(@NotNull String key, float f10) {
        M.q(key, "key");
        this.mutableData.put(key, String.valueOf(f10));
    }

    public final void putInt(@NotNull String key, int i10) {
        M.q(key, "key");
        this.mutableData.put(key, String.valueOf(i10));
    }

    public final void putLong(@NotNull String key, long j10) {
        M.q(key, "key");
        this.mutableData.put(key, String.valueOf(j10));
    }

    public final void putString(@NotNull String key, @NotNull String value) {
        M.q(key, "key");
        M.q(value, "value");
        this.mutableData.put(key, value);
    }

    @NotNull
    public final Extras toExtras() {
        return new Extras(o0.F0(this.mutableData));
    }

    @Override
    @NotNull
    public String toString() {
        return toJSONString();
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.q(dest, "dest");
        dest.writeSerializable(new HashMap(this.mutableData));
    }

    public MutableExtras(Map map, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? new LinkedHashMap() : map);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableExtras(@NotNull Map<String, String> mutableData) {
        super(mutableData);
        M.q(mutableData, "mutableData");
        this.mutableData = mutableData;
    }
}
