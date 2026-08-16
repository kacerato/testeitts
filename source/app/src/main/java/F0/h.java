package F0;

import G0.A;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.data.DataHolder;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;

@C0.a
public abstract class h<T> extends a<T> {

    public boolean f6131c;

    public ArrayList f6132d;

    @C0.a
    public h(@NonNull DataHolder dataHolder) {
        super(dataHolder);
        this.f6131c = false;
    }

    @Nullable
    @C0.a
    public String c() {
        return null;
    }

    @NonNull
    @C0.a
    public abstract T e(int i10, int i11);

    @NonNull
    @C0.a
    public abstract String g();

    @Override
    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public final T get(int i10) {
        int intValue;
        int intValue2;
        k();
        int j10 = j(i10);
        int i11 = 0;
        if (i10 >= 0 && i10 != this.f6132d.size()) {
            if (i10 == this.f6132d.size() - 1) {
                intValue = ((DataHolder) A.r(this.f6122b)).getCount();
                intValue2 = ((Integer) this.f6132d.get(i10)).intValue();
            } else {
                intValue = ((Integer) this.f6132d.get(i10 + 1)).intValue();
                intValue2 = ((Integer) this.f6132d.get(i10)).intValue();
            }
            int i12 = intValue - intValue2;
            if (i12 == 1) {
                int j11 = j(i10);
                int w02 = ((DataHolder) A.r(this.f6122b)).w0(j11);
                String c10 = c();
                if (c10 == null || this.f6122b.v0(c10, j11, w02) != null) {
                    i11 = 1;
                }
            } else {
                i11 = i12;
            }
        }
        return e(j10, i11);
    }

    @Override
    @C0.a
    public int getCount() {
        k();
        return this.f6132d.size();
    }

    public final int j(int i10) {
        if (i10 >= 0 && i10 < this.f6132d.size()) {
            return ((Integer) this.f6132d.get(i10)).intValue();
        }
        throw new IllegalArgumentException("Position " + i10 + " is out of bounds for this buffer");
    }

    public final void k() {
        synchronized (this) {
            try {
                if (!this.f6131c) {
                    int count = ((DataHolder) A.r(this.f6122b)).getCount();
                    ArrayList arrayList = new ArrayList();
                    this.f6132d = arrayList;
                    if (count > 0) {
                        arrayList.add(0);
                        String g10 = g();
                        String v02 = this.f6122b.v0(g10, 0, this.f6122b.w0(0));
                        for (int i10 = 1; i10 < count; i10++) {
                            int w02 = this.f6122b.w0(i10);
                            String v03 = this.f6122b.v0(g10, i10, w02);
                            if (v03 == null) {
                                throw new NullPointerException("Missing value for markerColumn: " + g10 + ", at row: " + i10 + ", for window: " + w02);
                            }
                            if (!v03.equals(v02)) {
                                this.f6132d.add(Integer.valueOf(i10));
                                v02 = v03;
                            }
                        }
                    }
                    this.f6131c = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
