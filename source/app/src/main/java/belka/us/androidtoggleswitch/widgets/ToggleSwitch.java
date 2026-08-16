package belka.us.androidtoggleswitch.widgets;

import android.content.Context;
import android.util.AttributeSet;
import h.AbstractViewOnClickListenerC13403a;
import i.C13535a;

public class ToggleSwitch extends AbstractViewOnClickListenerC13403a {

    public int f33081o;

    public ToggleSwitch(Context context) {
        this(context, null);
    }

    private void setSeparatorVisibility(int i10) {
        for (int i11 = 0; i11 < getToggleSwitchesContainer().getChildCount() - 1; i11++) {
            C13535a c13535a = new C13535a(getToggleSwitchesContainer().getChildAt(i11));
            if (i11 == i10 || i11 == i10 - 1) {
                c13535a.d();
            } else {
                c13535a.e();
            }
        }
    }

    @Override
    public void d() {
        super.d();
        setCheckedTogglePosition(0);
    }

    public int getCheckedTogglePosition() {
        return this.f33081o;
    }

    @Override
    public boolean j(int i10) {
        return this.f33081o == i10;
    }

    @Override
    public void o(int i10) {
        setCheckedTogglePosition(i10);
    }

    public void r(int i10, boolean z10) {
        f();
        a(i10);
        setSeparatorVisibility(i10);
        this.f33081o = i10;
        if (z10) {
            n(i10);
        }
    }

    public void setCheckedTogglePosition(int i10) {
        r(i10, true);
    }

    public ToggleSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
