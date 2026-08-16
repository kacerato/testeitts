package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import java.util.Arrays;

public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0961a();

    @NonNull
    public final p f64226b;

    @NonNull
    public final p f64227c;

    @NonNull
    public final c f64228d;

    @Nullable
    public p f64229e;

    public final int f64230f;

    public final int f64231g;

    public static class C0961a implements Parcelable.Creator<a> {
        @Override
        @NonNull
        public a createFromParcel(@NonNull Parcel parcel) {
            return new a((p) parcel.readParcelable(p.class.getClassLoader()), (p) parcel.readParcelable(p.class.getClassLoader()), (c) parcel.readParcelable(c.class.getClassLoader()), (p) parcel.readParcelable(p.class.getClassLoader()), null);
        }

        @Override
        @NonNull
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public interface c extends Parcelable {
        boolean a(long j10);
    }

    public a(p pVar, p pVar2, c cVar, p pVar3, C0961a c0961a) {
        this(pVar, pVar2, cVar, pVar3);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f64226b.equals(aVar.f64226b) && this.f64227c.equals(aVar.f64227c) && ObjectsCompat.equals(this.f64229e, aVar.f64229e) && this.f64228d.equals(aVar.f64228d);
    }

    public p f(p pVar) {
        return pVar.compareTo(this.f64226b) < 0 ? this.f64226b : pVar.compareTo(this.f64227c) > 0 ? this.f64227c : pVar;
    }

    public c g() {
        return this.f64228d;
    }

    @NonNull
    public p h() {
        return this.f64227c;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f64226b, this.f64227c, this.f64229e, this.f64228d});
    }

    public int i() {
        return this.f64231g;
    }

    @Nullable
    public p l() {
        return this.f64229e;
    }

    @NonNull
    public p m() {
        return this.f64226b;
    }

    public int n() {
        return this.f64230f;
    }

    public boolean p(long j10) {
        if (this.f64226b.m(1) <= j10) {
            p pVar = this.f64227c;
            if (j10 <= pVar.m(pVar.f64368f)) {
                return true;
            }
        }
        return false;
    }

    public void q(@Nullable p pVar) {
        this.f64229e = pVar;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f64226b, 0);
        parcel.writeParcelable(this.f64227c, 0);
        parcel.writeParcelable(this.f64229e, 0);
        parcel.writeParcelable(this.f64228d, 0);
    }

    public a(@NonNull p pVar, @NonNull p pVar2, @NonNull c cVar, @Nullable p pVar3) {
        this.f64226b = pVar;
        this.f64227c = pVar2;
        this.f64229e = pVar3;
        this.f64228d = cVar;
        if (pVar3 != null && pVar.compareTo(pVar3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (pVar3 != null && pVar3.compareTo(pVar2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f64231g = pVar.E(pVar2) + 1;
        this.f64230f = (pVar2.f64366d - pVar.f64366d) + 1;
    }

    public static final class b {

        public static final long f64232e = y.a(p.d(1900, 0).f64369g);

        public static final long f64233f = y.a(p.d(2100, 11).f64369g);

        public static final String f64234g = "DEEP_COPY_VALIDATOR_KEY";

        public long f64235a;

        public long f64236b;

        public Long f64237c;

        public c f64238d;

        public b() {
            this.f64235a = f64232e;
            this.f64236b = f64233f;
            this.f64238d = i.b(Long.MIN_VALUE);
        }

        @NonNull
        public a a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(f64234g, this.f64238d);
            p e10 = p.e(this.f64235a);
            p e11 = p.e(this.f64236b);
            c cVar = (c) bundle.getParcelable(f64234g);
            Long l10 = this.f64237c;
            return new a(e10, e11, cVar, l10 == null ? null : p.e(l10.longValue()), null);
        }

        @NonNull
        public b b(long j10) {
            this.f64236b = j10;
            return this;
        }

        @NonNull
        public b c(long j10) {
            this.f64237c = Long.valueOf(j10);
            return this;
        }

        @NonNull
        public b d(long j10) {
            this.f64235a = j10;
            return this;
        }

        @NonNull
        public b e(@NonNull c cVar) {
            this.f64238d = cVar;
            return this;
        }

        public b(@NonNull a aVar) {
            this.f64235a = f64232e;
            this.f64236b = f64233f;
            this.f64238d = i.b(Long.MIN_VALUE);
            this.f64235a = aVar.f64226b.f64369g;
            this.f64236b = aVar.f64227c.f64369g;
            this.f64237c = Long.valueOf(aVar.f64229e.f64369g);
            this.f64238d = aVar.f64228d;
        }
    }
}
