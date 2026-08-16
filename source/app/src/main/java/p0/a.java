package P0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.a;
import java.util.ArrayList;
import java.util.HashMap;

@C0.a
@c.a(creator = "StringToIntConverterCreator")
public final class a extends I0.a implements a.b<String, Integer> {

    @NonNull
    public static final Parcelable.Creator<a> CREATOR = new e();

    @c.h(id = 1)
    public final int f20619b;

    public final HashMap f20620c;

    public final SparseArray f20621d;

    @C0.a
    public a() {
        this.f20619b = 1;
        this.f20620c = new HashMap();
        this.f20621d = new SparseArray();
    }

    @I2.a
    @NonNull
    @C0.a
    public a b(@NonNull String str, int i10) {
        this.f20620c.put(str, Integer.valueOf(i10));
        this.f20621d.put(i10, str);
        return this;
    }

    @Override
    public final int c() {
        return 7;
    }

    @Override
    public final int d() {
        return 0;
    }

    @Override
    @NonNull
    public final Object e(@NonNull Object obj) {
        String str = (String) this.f20621d.get(((Integer) obj).intValue());
        return (str == null && this.f20620c.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    @Override
    @Nullable
    public final Object f(@NonNull Object obj) {
        Integer num = (Integer) this.f20620c.get((String) obj);
        return num == null ? (Integer) this.f20620c.get("gms_unknown") : num;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f20619b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f20620c.o()) {
            arrayList.add(new d(str, ((Integer) this.f20620c.get(str)).intValue()));
        }
        I0.b.d0(parcel, 2, arrayList, false);
        I0.b.b(parcel, a10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @c.b
    public a(@c.e(id = 1) int i10, @c.e(id = 2) ArrayList arrayList) {
        this.f20619b = i10;
        this.f20620c = new HashMap();
        this.f20621d = new SparseArray();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            d dVar = (d) arrayList.get(i11);
            b(dVar.f20625c, dVar.f20626d);
        }
    }
}
