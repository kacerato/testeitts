package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class m extends SparseIntArray implements Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new a();

    public static class a implements Parcelable.Creator<m> {
        @Override
        @NonNull
        public m createFromParcel(@NonNull Parcel parcel) {
            int readInt = parcel.readInt();
            m mVar = new m(readInt);
            int[] iArr = new int[readInt];
            int[] iArr2 = new int[readInt];
            parcel.readIntArray(iArr);
            parcel.readIntArray(iArr2);
            for (int i10 = 0; i10 < readInt; i10++) {
                mVar.put(iArr[i10], iArr2[i10]);
            }
            return mVar;
        }

        @Override
        @NonNull
        public m[] newArray(int i10) {
            return new m[i10];
        }
    }

    public m() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int[] iArr = new int[size()];
        int[] iArr2 = new int[size()];
        for (int i11 = 0; i11 < size(); i11++) {
            iArr[i11] = keyAt(i11);
            iArr2[i11] = valueAt(i11);
        }
        parcel.writeInt(size());
        parcel.writeIntArray(iArr);
        parcel.writeIntArray(iArr2);
    }

    public m(int i10) {
        super(i10);
    }

    public m(@NonNull SparseIntArray sparseIntArray) {
        for (int i10 = 0; i10 < sparseIntArray.size(); i10++) {
            put(sparseIntArray.keyAt(i10), sparseIntArray.valueAt(i10));
        }
    }
}
