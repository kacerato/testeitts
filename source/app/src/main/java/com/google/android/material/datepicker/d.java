package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import com.google.android.material.datepicker.a;
import java.util.ArrayList;
import java.util.List;

public final class d implements a.c {

    public static final int f64253d = 1;

    public static final int f64254e = 2;

    @NonNull
    public final InterfaceC0962d f64257b;

    @NonNull
    public final List<a.c> f64258c;

    public static final InterfaceC0962d f64255f = new a();

    public static final InterfaceC0962d f64256g = new b();
    public static final Parcelable.Creator<d> CREATOR = new c();

    public static class a implements InterfaceC0962d {
        @Override
        public boolean a(@NonNull List<a.c> list, long j10) {
            for (a.c cVar : list) {
                if (cVar != null && cVar.a(j10)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public int getId() {
            return 1;
        }
    }

    public static class b implements InterfaceC0962d {
        @Override
        public boolean a(@NonNull List<a.c> list, long j10) {
            for (a.c cVar : list) {
                if (cVar != null && !cVar.a(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int getId() {
            return 2;
        }
    }

    public static class c implements Parcelable.Creator<d> {
        @Override
        @NonNull
        public d createFromParcel(@NonNull Parcel parcel) {
            ArrayList readArrayList = parcel.readArrayList(a.c.class.getClassLoader());
            int readInt = parcel.readInt();
            return new d((List) Preconditions.checkNotNull(readArrayList), readInt == 2 ? d.f64256g : readInt == 1 ? d.f64255f : d.f64256g, null);
        }

        @Override
        @NonNull
        public d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public interface InterfaceC0962d {
        boolean a(@NonNull List<a.c> list, long j10);

        int getId();
    }

    public d(List list, InterfaceC0962d interfaceC0962d, a aVar) {
        this(list, interfaceC0962d);
    }

    @NonNull
    public static a.c d(@NonNull List<a.c> list) {
        return new d(list, f64256g);
    }

    @NonNull
    public static a.c e(@NonNull List<a.c> list) {
        return new d(list, f64255f);
    }

    @Override
    public boolean a(long j10) {
        return this.f64257b.a(this.f64258c, j10);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f64258c.equals(dVar.f64258c) && this.f64257b.getId() == dVar.f64257b.getId();
    }

    public int hashCode() {
        return this.f64258c.hashCode();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeList(this.f64258c);
        parcel.writeInt(this.f64257b.getId());
    }

    public d(@NonNull List<a.c> list, InterfaceC0962d interfaceC0962d) {
        this.f64258c = list;
        this.f64257b = interfaceC0962d;
    }
}
