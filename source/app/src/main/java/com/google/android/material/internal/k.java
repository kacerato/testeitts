package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class k extends SparseArray<Parcelable> implements Parcelable {
    public static final Parcelable.Creator<k> CREATOR = new a();

    public static class a implements Parcelable.ClassLoaderCreator<k> {
        @Override
        @Nullable
        public k createFromParcel(@NonNull Parcel parcel) {
            return new k(parcel, null);
        }

        @Override
        @NonNull
        public k createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
            return new k(parcel, classLoader);
        }

        @Override
        @NonNull
        public k[] newArray(int i10) {
            return new k[i10];
        }
    }

    public k() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int size = size();
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr[i11] = keyAt(i11);
            parcelableArr[i11] = valueAt(i11);
        }
        parcel.writeInt(size);
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i10);
    }

    public k(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        for (int i10 = 0; i10 < readInt; i10++) {
            put(iArr[i10], readParcelableArray[i10]);
        }
    }
}
