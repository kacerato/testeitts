package h;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import g.C13264b;
import i.C13535a;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class AbstractViewOnClickListenerC13403a extends LinearLayout implements View.OnClickListener {

    public b f90130b;

    public int f90131c;

    public int f90132d;

    public int f90133e;

    public int f90134f;

    public int f90135g;

    public int f90136h;

    public float f90137i;

    public float f90138j;

    public LayoutInflater f90139k;

    public LinearLayout f90140l;

    public ArrayList<String> f90141m;

    public Context f90142n;

    public static class C1721a {

        public static final int f90144b = 17170443;

        public static final int f90148f = 4;

        public static final float f90149g = 12.0f;

        public static final float f90150h = 64.0f;

        public static final int f90143a = C13264b.d.f86860A;

        public static final int f90145c = C13264b.d.f86876Q;

        public static final int f90146d = C13264b.d.f86875P;

        public static final int f90147e = C13264b.d.f86877R;
    }

    public interface b {
        void a(int i10, boolean z10);
    }

    public AbstractViewOnClickListenerC13403a(Context context) {
        this(context, null);
    }

    public void a(int i10) {
        p(i(i10), this.f90131c, this.f90132d);
    }

    public final void b(String str) {
        C13535a c13535a = new C13535a(this.f90142n);
        TextView b10 = c13535a.b();
        b10.setText(str);
        b10.setTextSize(0, this.f90136h);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) this.f90138j, -2);
        if (this.f90138j == 0.0f) {
            layoutParams.weight = 1.0f;
        }
        b10.setLayoutParams(layoutParams);
        c13535a.a().setBackgroundColor(this.f90135g);
        c13535a.b().setOnClickListener(this);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams((int) this.f90138j, -1);
        if (this.f90138j == 0.0f) {
            layoutParams2.weight = 1.0f;
        }
        this.f90140l.addView(c13535a.c(), layoutParams2);
        e(this.f90140l.getChildCount() - 1);
    }

    public final RoundRectShape c(C13535a c13535a) {
        if (k(c13535a)) {
            float f10 = this.f90137i;
            return new RoundRectShape(new float[]{f10, f10, 0.0f, 0.0f, 0.0f, 0.0f, f10, f10}, null, null);
        }
        if (!m(c13535a)) {
            return new RoundRectShape(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f}, null, null);
        }
        float f11 = this.f90137i;
        return new RoundRectShape(new float[]{0.0f, 0.0f, f11, f11, f11, f11, 0.0f, 0.0f}, null, null);
    }

    public void d() {
        Iterator<String> it = this.f90141m.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    public void e(int i10) {
        p(i(i10), this.f90133e, this.f90134f);
    }

    public void f() {
        for (int i10 = 0; i10 < this.f90140l.getChildCount(); i10++) {
            e(i10);
        }
    }

    public final float g(Context context, float f10) {
        return f10 * (context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public int getActiveBgColor() {
        return this.f90131c;
    }

    public int getActiveTextColor() {
        return this.f90132d;
    }

    public float getCornerRadius() {
        return this.f90137i;
    }

    public int getInactiveBgColor() {
        return this.f90133e;
    }

    public int getInactiveTextColor() {
        return this.f90134f;
    }

    public int getNumButtons() {
        return getToggleSwitchesContainer().getChildCount();
    }

    public int getSeparatorColor() {
        return this.f90135g;
    }

    public int getTextSize() {
        return this.f90136h;
    }

    public LinearLayout getToggleSwitchesContainer() {
        return this.f90140l;
    }

    public float getToggleWidth() {
        return this.f90138j;
    }

    public int h(C13535a c13535a) {
        return this.f90140l.indexOfChild(c13535a.c());
    }

    public C13535a i(int i10) {
        return new C13535a(this.f90140l.getChildAt(i10));
    }

    public abstract boolean j(int i10);

    public final boolean k(C13535a c13535a) {
        return this.f90140l.indexOfChild(c13535a.c()) == 0;
    }

    public boolean l(int i10) {
        return i10 == getToggleSwitchesContainer().getChildCount() - 1;
    }

    public final boolean m(C13535a c13535a) {
        return this.f90140l.indexOfChild(c13535a.c()) == this.f90140l.getChildCount() - 1;
    }

    public void n(int i10) {
        b bVar = this.f90130b;
        if (bVar != null) {
            bVar.a(i10, j(i10));
        }
    }

    public abstract void o(int i10);

    @Override
    public void onClick(View view) {
        o(this.f90140l.indexOfChild((LinearLayout) view.getParent()));
    }

    public void p(C13535a c13535a, int i10, int i11) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(c(c13535a));
        shapeDrawable.getPaint().setColor(i10);
        c13535a.c().setBackground(shapeDrawable);
        c13535a.b().setTextColor(i11);
    }

    public void q(int i10, int i11, int i12, int i13) {
        for (int i14 = 0; i14 < this.f90140l.getChildCount(); i14++) {
            new C13535a(this.f90140l.getChildAt(i14)).b().setPadding(i10, i11, i12, i13);
        }
    }

    public void setActiveBgColor(int i10) {
        this.f90131c = i10;
    }

    public void setActiveTextColor(int i10) {
        this.f90132d = i10;
    }

    public void setCornerRadius(float f10) {
        this.f90137i = f10;
    }

    public void setInactiveBgColor(int i10) {
        this.f90133e = i10;
    }

    public void setInactiveTextColor(int i10) {
        this.f90134f = i10;
    }

    public void setLabels(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            throw new RuntimeException("The list of labels must contains at least 2 elements");
        }
        this.f90141m = arrayList;
        this.f90140l.removeAllViews();
        d();
    }

    public void setOnToggleSwitchChangeListener(b bVar) {
        this.f90130b = bVar;
    }

    public void setSeparatorColor(int i10) {
        this.f90135g = i10;
    }

    public void setTextSize(int i10) {
        this.f90136h = i10;
    }

    public void setToggleWidth(float f10) {
        this.f90138j = f10;
    }

    public AbstractViewOnClickListenerC13403a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f90130b = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C13264b.n.f87801c6, 0, 0);
            try {
                this.f90142n = context;
                LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
                this.f90139k = layoutInflater;
                layoutInflater.inflate(C13264b.i.f87199G, (ViewGroup) this, true);
                this.f90140l = (LinearLayout) findViewById(C13264b.g.f87116L0);
                String string = obtainStyledAttributes.getString(C13264b.n.f87870k6);
                String string2 = obtainStyledAttributes.getString(C13264b.n.f87878l6);
                String string3 = obtainStyledAttributes.getString(C13264b.n.f87886m6);
                this.f90131c = obtainStyledAttributes.getColor(C13264b.n.f87819e6, ContextCompat.getColor(context, C1721a.f90143a));
                this.f90132d = obtainStyledAttributes.getColor(C13264b.n.f87828f6, ContextCompat.getColor(context, 17170443));
                this.f90133e = obtainStyledAttributes.getColor(C13264b.n.f87846h6, ContextCompat.getColor(context, C1721a.f90145c));
                this.f90134f = obtainStyledAttributes.getColor(C13264b.n.f87854i6, ContextCompat.getColor(context, C1721a.f90146d));
                this.f90135g = obtainStyledAttributes.getColor(C13264b.n.f87862j6, ContextCompat.getColor(context, C1721a.f90147e));
                this.f90136h = obtainStyledAttributes.getDimensionPixelSize(C13264b.n.f87810d6, (int) g(context, 12.0f));
                this.f90138j = obtainStyledAttributes.getDimension(C13264b.n.f87894n6, g(getContext(), 64.0f));
                this.f90137i = obtainStyledAttributes.getDimensionPixelSize(C13264b.n.f87837g6, (int) g(context, 4.0f));
                if (string2 != null && !string2.isEmpty() && string3 != null && !string3.isEmpty()) {
                    ArrayList<String> arrayList = new ArrayList<>();
                    this.f90141m = arrayList;
                    arrayList.add(string2);
                    if (string != null && !string.isEmpty()) {
                        this.f90141m.add(string);
                    }
                    this.f90141m.add(string3);
                    d();
                }
                obtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                obtainStyledAttributes.recycle();
                throw th2;
            }
        }
    }
}
