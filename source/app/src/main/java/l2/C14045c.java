package l2;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
public class C14045c {

    public final int f95921a;

    public final int f95922b;

    public final boolean f95923c;

    public C14045c(int i10, int i11, boolean z10) {
        this.f95921a = i10;
        this.f95922b = i11;
        this.f95923c = z10;
    }

    public static C14045c a(int i10, int i11) {
        return new C14045c(i10, i11, true);
    }

    public static C14045c b(int i10, int i11) {
        return new C14045c(i10, i11, false);
    }
}
