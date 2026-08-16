package I0;

import G0.A;
import T0.C3033c;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import h1.AbstractC13417k;
import java.util.ArrayList;
import java.util.Iterator;
import p.C14917a;

@C0.a
public final class d {
    @NonNull
    @C0.a
    public static <T extends c> T a(@NonNull byte[] bArr, @NonNull Parcelable.Creator<T> creator) {
        A.r(creator);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        T createFromParcel = creator.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    @Nullable
    @C0.a
    public static <T extends c> T b(@NonNull Intent intent, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        if (byteArrayExtra == null) {
            return null;
        }
        return (T) a(byteArrayExtra, creator);
    }

    @NonNull
    @C0.a
    public static <T extends c> T c(@NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        return (T) a(C3033c.b(str), creator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @Deprecated
    public static <T extends c> ArrayList<T> d(@NonNull Bundle bundle, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        ArrayList arrayList = (ArrayList) bundle.getSerializable(str);
        if (arrayList == null) {
            return null;
        }
        C14917a.C1932a c1932a = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            c1932a.add(a((byte[]) arrayList.get(i10), creator));
        }
        return c1932a;
    }

    @Nullable
    @C0.a
    public static <T extends c> ArrayList<T> e(@NonNull Bundle bundle, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        return f(bundle.getByteArray(str), creator);
    }

    @Nullable
    @C0.a
    public static <T extends c> ArrayList<T> f(@Nullable byte[] bArr, @NonNull Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        try {
            ArrayList<T> arrayList = new ArrayList<>();
            obtain.readTypedList(arrayList, creator);
            return arrayList;
        } finally {
            obtain.recycle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @C0.a
    @Deprecated
    public static <T extends c> ArrayList<T> g(@NonNull Intent intent, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        ArrayList arrayList = (ArrayList) intent.getSerializableExtra(str);
        if (arrayList == null) {
            return null;
        }
        C14917a.C1932a c1932a = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            c1932a.add(a((byte[]) arrayList.get(i10), creator));
        }
        return c1932a;
    }

    @Nullable
    @C0.a
    public static <T extends c> ArrayList<T> h(@NonNull Intent intent, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        return f(intent.getByteArrayExtra(str), creator);
    }

    @Deprecated
    public static <T extends c> void i(@NonNull Iterable<T> iterable, @NonNull Bundle bundle, @NonNull String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(n(it.next()));
        }
        bundle.putSerializable(str, arrayList);
    }

    @C0.a
    public static <T extends c> void j(@NonNull Iterable<T> iterable, @NonNull Bundle bundle, @NonNull String str) {
        bundle.putByteArray(str, k(iterable));
    }

    @NonNull
    @C0.a
    public static <T extends c> byte[] k(@NonNull Iterable<T> iterable) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeTypedList(AbstractC13417k.l(iterable));
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    @C0.a
    @Deprecated
    public static <T extends c> void l(@NonNull Iterable<T> iterable, @NonNull Intent intent, @NonNull String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(n(it.next()));
        }
        intent.putExtra(str, arrayList);
    }

    @C0.a
    public static <T extends c> void m(@NonNull Iterable<T> iterable, @NonNull Intent intent, @NonNull String str) {
        intent.putExtra(str, k(iterable));
    }

    @NonNull
    @C0.a
    public static <T extends c> byte[] n(@NonNull T t10) {
        Parcel obtain = Parcel.obtain();
        t10.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    @C0.a
    public static <T extends c> void o(@NonNull T t10, @NonNull Intent intent, @NonNull String str) {
        intent.putExtra(str, n(t10));
    }

    @NonNull
    @C0.a
    public static <T extends c> String p(@NonNull T t10) {
        return C3033c.e(n(t10));
    }
}
