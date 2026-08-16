package com.google.android.gms.fido.u2f.api.common;

import G0.A;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;

@c.g({1})
@c.a(creator = "ChannelIdValueCreator")
@Deprecated
public class ChannelIdValue extends I0.a {

    @NonNull
    public static final Parcelable.Creator<ChannelIdValue> CREATOR = new c1.d();

    @NonNull
    public static final ChannelIdValue f61502e = new ChannelIdValue();

    @NonNull
    public static final ChannelIdValue f61503f = new ChannelIdValue("unavailable");

    @NonNull
    public static final ChannelIdValue f61504g = new ChannelIdValue("unused");

    @c.InterfaceC0186c(getter = "getTypeAsInt", id = 2, type = "int")
    public final a f61505b;

    @c.InterfaceC0186c(getter = "getStringValue", id = 3)
    public final String f61506c;

    @c.InterfaceC0186c(getter = "getObjectValueAsString", id = 4)
    public final String f61507d;

    public static class UnsupportedChannelIdValueTypeException extends Exception {
        public UnsupportedChannelIdValueTypeException(int i10) {
            super(String.format("ChannelIdValueType %s not supported", Integer.valueOf(i10)));
        }
    }

    public enum a implements Parcelable {
        ABSENT(0),
        STRING(1),
        OBJECT(2);


        @NonNull
        public static final Parcelable.Creator<a> CREATOR = new d();
        private final int zzb;

        a(int i10) {
            this.zzb = i10;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            parcel.writeInt(this.zzb);
        }
    }

    public ChannelIdValue() {
        this.f61505b = a.ABSENT;
        this.f61507d = null;
        this.f61506c = null;
    }

    @NonNull
    public static a v0(int i10) throws UnsupportedChannelIdValueTypeException {
        for (a aVar : a.values()) {
            if (i10 == aVar.zzb) {
                return aVar;
            }
        }
        throw new UnsupportedChannelIdValueTypeException(i10);
    }

    @NonNull
    public String b0() {
        return this.f61506c;
    }

    public boolean equals(@NonNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChannelIdValue)) {
            return false;
        }
        ChannelIdValue channelIdValue = (ChannelIdValue) obj;
        if (!this.f61505b.equals(channelIdValue.f61505b)) {
            return false;
        }
        int ordinal = this.f61505b.ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal == 1) {
            return this.f61506c.equals(channelIdValue.f61506c);
        }
        if (ordinal != 2) {
            return false;
        }
        return this.f61507d.equals(channelIdValue.f61507d);
    }

    public int hashCode() {
        int i10;
        int hashCode;
        int hashCode2 = this.f61505b.hashCode() + 31;
        int ordinal = this.f61505b.ordinal();
        if (ordinal == 1) {
            i10 = hashCode2 * 31;
            hashCode = this.f61506c.hashCode();
        } else {
            if (ordinal != 2) {
                return hashCode2;
            }
            i10 = hashCode2 * 31;
            hashCode = this.f61507d.hashCode();
        }
        return i10 + hashCode;
    }

    @NonNull
    public JSONObject n() {
        if (this.f61507d == null) {
            return null;
        }
        try {
            return new JSONObject(this.f61507d);
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public a n0() {
        return this.f61505b;
    }

    @NonNull
    public String t() {
        return this.f61507d;
    }

    public int u0() {
        return this.f61505b.zzb;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 2, u0());
        I0.b.Y(parcel, 3, b0(), false);
        I0.b.Y(parcel, 4, t(), false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public ChannelIdValue(@c.e(id = 2) int i10, @c.e(id = 3) String str, @c.e(id = 4) String str2) {
        try {
            this.f61505b = v0(i10);
            this.f61506c = str;
            this.f61507d = str2;
        } catch (UnsupportedChannelIdValueTypeException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public ChannelIdValue(String str) {
        this.f61506c = (String) A.r(str);
        this.f61505b = a.STRING;
        this.f61507d = null;
    }

    public ChannelIdValue(@NonNull JSONObject jSONObject) {
        this.f61507d = (String) A.r(jSONObject.toString());
        this.f61505b = a.OBJECT;
        this.f61506c = null;
    }
}
