package t5;

import C5.b;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Utils.D;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import r4.C15147a;

public class k {

    public static final ThreadLocal<Rect> f117079a = new a();

    public static final ThreadLocal<Rect> f117080b = new b();

    public class a extends ThreadLocal<Rect> {
        @Override
        public Rect initialValue() {
            return new Rect();
        }
    }

    public class b extends ThreadLocal<Rect> {
        @Override
        public Rect initialValue() {
            return new Rect();
        }
    }

    public class c implements D5.h {

        public final g f117081a;

        public c(final g val$listener) {
            this.f117081a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f117081a.get() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f117081a.b(variable.int_value);
            }
        }
    }

    public class d implements G4.d {
        @Override
        public void a(G4.c entriesClassPanel) {
        }

        @Override
        public void b(G4.c entriesClassPanel) {
        }
    }

    public static class e {

        public static final int[] f117082a;

        static {
            int[] iArr = new int[C15147a.e.values().length];
            f117082a = iArr;
            try {
                iArr[C15147a.e.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f117082a[C15147a.e.Above.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f117082a[C15147a.e.Below.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f117082a[C15147a.e.Right.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class f implements g {
        @Override
        public void b(int value) {
        }

        @Override
        public int get() {
            return 0;
        }
    }

    public interface g {
        void b(int value);

        int get();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x00c1, code lost:
    
        if (r4 != 4) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(View anchor, String tittle, Context context, C15147a.e anchorSide, g listener) {
        float f10;
        int i10;
        float f11;
        float f12;
        float f13;
        int i11;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new c(listener), tittle, b.a.SLInt));
        int i12 = (int) (D.f(context, tittle, 12.0f)[0] + 120.0f);
        float g10 = N7.c.g(i12);
        float f14 = N7.c.f(28);
        float I10 = Nc.b.I(g10);
        float I11 = Nc.b.I(f14);
        Rect rect = f117079a.get();
        Rect Q10 = N7.c.D().Q();
        int width = Q10.width();
        int height = Q10.height();
        anchor.getGlobalVisibleRect(rect);
        int i13 = rect.left;
        int i14 = i13 + (rect.right - i13);
        int[] iArr = e.f117082a;
        int i15 = iArr[anchorSide.ordinal()];
        if (i15 != 1) {
            if (i15 == 2) {
                f10 = (i14 / width) - (I10 / 2.0f);
                f11 = (rect.top / height) - I11;
                float f15 = f10;
                f12 = f11;
                f13 = f15;
                FloatingPanelArea floatingPanelArea = new FloatingPanelArea(f13, f12, I10, I11);
                i11 = iArr[anchorSide.ordinal()];
                if (i11 != 1) {
                }
                floatingPanelArea.N0(true, true, false, true);
                floatingPanelArea.T();
                floatingPanelArea.F1(true);
                floatingPanelArea.E1(true);
                floatingPanelArea.I1(i12, 28, FloatingPanelArea.i.Fixed);
                G4.c cVar = new G4.c(tittle, steppedArrayList, new d());
                cVar.e1(false);
                floatingPanelArea.g(cVar);
                N7.c.D().t(floatingPanelArea);
            }
            if (i15 == 3) {
                f12 = (rect.bottom - Q10.top) / height;
                f13 = (i14 / width) - (I10 / 2.0f);
            } else if (i15 != 4) {
                f13 = 0.0f;
                f12 = 0.0f;
            } else {
                f10 = rect.right / width;
                i10 = rect.top;
            }
            FloatingPanelArea floatingPanelArea2 = new FloatingPanelArea(f13, f12, I10, I11);
            i11 = iArr[anchorSide.ordinal()];
            if (i11 != 1) {
                if (i11 == 2 || i11 == 3) {
                    floatingPanelArea2.N0(true, true, true, false);
                }
                floatingPanelArea2.T();
                floatingPanelArea2.F1(true);
                floatingPanelArea2.E1(true);
                floatingPanelArea2.I1(i12, 28, FloatingPanelArea.i.Fixed);
                G4.c cVar2 = new G4.c(tittle, steppedArrayList, new d());
                cVar2.e1(false);
                floatingPanelArea2.g(cVar2);
                N7.c.D().t(floatingPanelArea2);
            }
            floatingPanelArea2.N0(true, true, false, true);
            floatingPanelArea2.T();
            floatingPanelArea2.F1(true);
            floatingPanelArea2.E1(true);
            floatingPanelArea2.I1(i12, 28, FloatingPanelArea.i.Fixed);
            G4.c cVar22 = new G4.c(tittle, steppedArrayList, new d());
            cVar22.e1(false);
            floatingPanelArea2.g(cVar22);
            N7.c.D().t(floatingPanelArea2);
        }
        f10 = (rect.left / width) - I10;
        i10 = rect.top;
        f11 = (i10 / height) + (I11 / 2.0f);
        float f152 = f10;
        f12 = f11;
        f13 = f152;
        FloatingPanelArea floatingPanelArea22 = new FloatingPanelArea(f13, f12, I10, I11);
        i11 = iArr[anchorSide.ordinal()];
        if (i11 != 1) {
        }
        floatingPanelArea22.N0(true, true, false, true);
        floatingPanelArea22.T();
        floatingPanelArea22.F1(true);
        floatingPanelArea22.E1(true);
        floatingPanelArea22.I1(i12, 28, FloatingPanelArea.i.Fixed);
        G4.c cVar222 = new G4.c(tittle, steppedArrayList, new d());
        cVar222.e1(false);
        floatingPanelArea22.g(cVar222);
        N7.c.D().t(floatingPanelArea22);
    }
}
