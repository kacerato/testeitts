package d2;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.customview.view.AbsSavedState;
import org.apache.commons.math3.geometry.VectorFormat;

public class C12870a extends AbsSavedState {
    public static final Parcelable.Creator<C12870a> CREATOR = new C1501a();

    @NonNull
    public final SimpleArrayMap<String, Bundle> f83860b;

    public static class C1501a implements Parcelable.ClassLoaderCreator<C12870a> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @Nullable
        public C12870a createFromParcel(@NonNull Parcel parcel) {
            return new C12870a(parcel, null, 0 == true ? 1 : 0);
        }

        @Override
        @NonNull
        public C12870a createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
            return new C12870a(parcel, classLoader, null);
        }

        @Override
        @NonNull
        public C12870a[] newArray(int i10) {
            return new C12870a[i10];
        }
    }

    public C12870a(Parcel parcel, ClassLoader classLoader, C1501a c1501a) {
        this(parcel, classLoader);
    }

    @NonNull
    public String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + ((Object) this.f83860b) + VectorFormat.DEFAULT_SUFFIX;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        int size = this.f83860b.size();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i11 = 0; i11 < size; i11++) {
            strArr[i11] = this.f83860b.keyAt(i11);
            bundleArr[i11] = this.f83860b.valueAt(i11);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public C12870a(Parcelable parcelable) {
        super(parcelable);
        this.f83860b = new SimpleArrayMap<>();
    }

    public C12870a(@NonNull Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f83860b = new SimpleArrayMap<>(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f83860b.put(strArr[i10], bundleArr[i10]);
        }
    }
}
