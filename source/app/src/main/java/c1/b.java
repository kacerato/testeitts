package c1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@Deprecated
public enum b implements Parcelable {
    OK(0),
    OTHER_ERROR(1),
    BAD_REQUEST(2),
    CONFIGURATION_UNSUPPORTED(3),
    DEVICE_INELIGIBLE(4),
    TIMEOUT(5);

    private final int zzc;
    private static final String zza = b.class.getSimpleName();

    @NonNull
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            return b.e(parcel.readInt());
        }

        @Override
        public final Object[] newArray(int i10) {
            return new b[i10];
        }
    };

    b(int i10) {
        this.zzc = i10;
    }

    @NonNull
    public static b e(int i10) {
        for (b bVar : values()) {
            if (i10 == bVar.zzc) {
                return bVar;
            }
        }
        return OTHER_ERROR;
    }

    public int b() {
        return this.zzc;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeInt(this.zzc);
    }
}
