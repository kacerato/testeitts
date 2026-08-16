package com.google.android.gms.common.data;

import G0.A;
import I0.c;
import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.data.DataHolder;

@C0.a
public class a<T extends c> extends F0.a<T> {

    public static final String[] f61326d = {"data"};

    public final Parcelable.Creator f61327c;

    @C0.a
    public a(@NonNull DataHolder dataHolder, @NonNull Parcelable.Creator<T> creator) {
        super(dataHolder);
        this.f61327c = creator;
    }

    @C0.a
    public static <T extends c> void a(@NonNull DataHolder.a aVar, @NonNull T t10) {
        Parcel obtain = Parcel.obtain();
        t10.writeToParcel(obtain, 0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("data", obtain.marshall());
        aVar.c(contentValues);
        obtain.recycle();
    }

    @NonNull
    @C0.a
    public static DataHolder.a c() {
        return DataHolder.b(f61326d);
    }

    @Override
    @NonNull
    @C0.a
    public T get(int i10) {
        DataHolder dataHolder = (DataHolder) A.r(this.f6122b);
        byte[] t10 = dataHolder.t("data", i10, dataHolder.w0(i10));
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(t10, 0, t10.length);
        obtain.setDataPosition(0);
        T t11 = (T) this.f61327c.createFromParcel(obtain);
        obtain.recycle();
        return t11;
    }
}
