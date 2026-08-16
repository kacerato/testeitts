package a1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.fido.fido2.api.common.zzax;
import org.eclipse.jdt.internal.core.ClasspathEntry;

@G0.F
public enum V implements Parcelable {
    USER_VERIFICATION_REQUIRED("required"),
    USER_VERIFICATION_PREFERRED("preferred"),
    USER_VERIFICATION_DISCOURAGED(ClasspathEntry.TAG_DISCOURAGED);

    public static final Parcelable.Creator<V> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            try {
                return V.b(parcel.readString());
            } catch (zzax e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override
        public final Object[] newArray(int i10) {
            return new V[i10];
        }
    };

    @NonNull
    private final String zze;

    V(@NonNull String str) {
        this.zze = str;
    }

    public static V b(String str) throws zzax {
        for (V v10 : values()) {
            if (str.equals(v10.zze)) {
                return v10;
            }
        }
        throw new zzax(str);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final String toString() {
        return this.zze;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.zze);
    }
}
