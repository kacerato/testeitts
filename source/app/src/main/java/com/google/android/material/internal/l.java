package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class l extends SparseBooleanArray implements Parcelable {
    public static final Parcelable.Creator<l> CREATOR = new a();

    public static class a implements Parcelable.Creator<l> {
        @Override
        @NonNull
        public l createFromParcel(@NonNull Parcel parcel) {
            int readInt = parcel.readInt();
            l lVar = new l(readInt);
            int[] iArr = new int[readInt];
            boolean[] zArr = new boolean[readInt];
            parcel.readIntArray(iArr);
            parcel.readBooleanArray(zArr);
            for (int i10 = 0; i10 < readInt; i10++) {
                lVar.put(iArr[i10], zArr[i10]);
            }
            return lVar;
        }

        @Override
        @NonNull
        public l[] newArray(int i10) {
            return new l[i10];
        }
    }

    public l() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int[] iArr = new int[size()];
        boolean[] zArr = new boolean[size()];
        for (int i11 = 0; i11 < size(); i11++) {
            iArr[i11] = keyAt(i11);
            zArr[i11] = valueAt(i11);
        }
        parcel.writeInt(size());
        parcel.writeIntArray(iArr);
        parcel.writeBooleanArray(zArr);
    }

    public l(int i10) {
        super(i10);
    }

    public l(@NonNull SparseBooleanArray sparseBooleanArray) {
        super(sparseBooleanArray.size());
        for (int i10 = 0; i10 < sparseBooleanArray.size(); i10++) {
            put(sparseBooleanArray.keyAt(i10), sparseBooleanArray.valueAt(i10));
        }
    }
}
