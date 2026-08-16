package h;

import android.content.Context;
import android.util.AttributeSet;
import java.util.Set;
import java.util.TreeSet;

public class C13404b extends AbstractViewOnClickListenerC13403a {

    public Set<Integer> f90151o;

    public C13404b(Context context) {
        this(context, null);
    }

    public Set<Integer> getCheckedTogglePositions() {
        return this.f90151o;
    }

    @Override
    public boolean j(int i10) {
        return this.f90151o.contains(Integer.valueOf(i10));
    }

    @Override
    public void o(int i10) {
        if (j(i10)) {
            setUncheckedTogglePosition(i10);
        } else {
            setCheckedTogglePosition(i10);
        }
    }

    public final void r(boolean z10, int i10) {
        if (l(i10) || z10 != j(i10 + 1)) {
            i(i10).d();
        } else {
            i(i10).e();
        }
    }

    public final void s() {
        for (int i10 = 0; i10 < getNumButtons(); i10++) {
            if (j(i10)) {
                a(i10);
                r(true, i10);
            } else {
                e(i10);
                r(false, i10);
            }
        }
    }

    public void setCheckedTogglePosition(int i10) {
        this.f90151o.add(Integer.valueOf(i10));
        s();
        n(i10);
    }

    public void setUncheckedTogglePosition(int i10) {
        this.f90151o.remove(Integer.valueOf(i10));
        s();
        n(i10);
    }

    public C13404b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f90151o = new TreeSet();
        s();
    }
}
