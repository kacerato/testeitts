package r4;

import android.graphics.Rect;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import java.util.List;

public class C15147a {

    public static final ThreadLocal<Rect> f108632a = new C1982a();

    public static final ThreadLocal<Rect> f108633b = new b();

    public class C1982a extends ThreadLocal<Rect> {
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

    public class c implements Runnable {

        public final Rect f108634b;

        public final e f108635c;

        public final int f108636d;

        public final float f108637e;

        public final int f108638f;

        public final float f108639g;

        public final Rect f108640h;

        public final EditorPanel f108641i;

        public final f f108642j;

        public c(final Rect val$anchorRect, final e val$anchorSide, final int val$screenWidth, final float val$w, final int val$screenHeight, final float val$h, final Rect val$saRect, final EditorPanel val$panel, final f val$output) {
            this.f108634b = val$anchorRect;
            this.f108635c = val$anchorSide;
            this.f108636d = val$screenWidth;
            this.f108637e = val$w;
            this.f108638f = val$screenHeight;
            this.f108639g = val$h;
            this.f108640h = val$saRect;
            this.f108641i = val$panel;
            this.f108642j = val$output;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x00a6, code lost:
        
            if (r0 != 3) goto L22;
         */
        /* JADX WARN: Removed duplicated region for block: B:14:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x00a2  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            int ordinal;
            f fVar;
            Rect rect = this.f108634b;
            int i10 = (rect.left + rect.right) / 2;
            int X10 = ((rect.top + rect.bottom) / 2) - N7.c.X();
            int ordinal2 = this.f108635c.ordinal();
            if (ordinal2 == 0) {
                f10 = (this.f108634b.left / this.f108636d) - this.f108637e;
                f11 = X10 / this.f108638f;
                f12 = this.f108639g;
            } else if (ordinal2 != 1) {
                if (ordinal2 == 2) {
                    f10 = (i10 / this.f108636d) - (this.f108637e / 2.0f);
                    f14 = (this.f108634b.bottom - this.f108640h.top) / this.f108638f;
                } else if (ordinal2 != 3) {
                    f10 = 0.0f;
                    f14 = 0.0f;
                } else {
                    f10 = this.f108634b.right / this.f108636d;
                    f11 = X10 / this.f108638f;
                    f12 = this.f108639g;
                }
                FloatingPanelArea floatingPanelArea = new FloatingPanelArea(f10 - N7.c.j(K8.c.f11000a), f14 - N7.c.i(K8.c.f11001b), this.f108637e, this.f108639g);
                ordinal = this.f108635c.ordinal();
                if (ordinal != 0) {
                    if (ordinal == 1 || ordinal == 2) {
                        floatingPanelArea.N0(true, true, true, false);
                    }
                    floatingPanelArea.g(this.f108641i);
                    N7.c.D().t(floatingPanelArea);
                    fVar = this.f108642j;
                    if (fVar == null) {
                        fVar.a(floatingPanelArea);
                        return;
                    }
                    return;
                }
                floatingPanelArea.N0(true, true, false, true);
                floatingPanelArea.g(this.f108641i);
                N7.c.D().t(floatingPanelArea);
                fVar = this.f108642j;
                if (fVar == null) {
                }
            } else {
                f10 = (i10 / this.f108636d) - (this.f108637e / 2.0f);
                f11 = (this.f108634b.top - this.f108640h.top) / this.f108638f;
                f13 = this.f108639g;
                f14 = f11 - f13;
                FloatingPanelArea floatingPanelArea2 = new FloatingPanelArea(f10 - N7.c.j(K8.c.f11000a), f14 - N7.c.i(K8.c.f11001b), this.f108637e, this.f108639g);
                ordinal = this.f108635c.ordinal();
                if (ordinal != 0) {
                }
                floatingPanelArea2.N0(true, true, false, true);
                floatingPanelArea2.g(this.f108641i);
                N7.c.D().t(floatingPanelArea2);
                fVar = this.f108642j;
                if (fVar == null) {
                }
            }
            f13 = f12 / 2.0f;
            f14 = f11 - f13;
            FloatingPanelArea floatingPanelArea22 = new FloatingPanelArea(f10 - N7.c.j(K8.c.f11000a), f14 - N7.c.i(K8.c.f11001b), this.f108637e, this.f108639g);
            ordinal = this.f108635c.ordinal();
            if (ordinal != 0) {
            }
            floatingPanelArea22.N0(true, true, false, true);
            floatingPanelArea22.g(this.f108641i);
            N7.c.D().t(floatingPanelArea22);
            fVar = this.f108642j;
            if (fVar == null) {
            }
        }
    }

    public class d implements Runnable {

        public final View f108643b;

        public final Rect f108644c;

        public final Runnable f108645d;

        public d(final View val$anchor, final Rect val$anchorRect, final Runnable val$execute) {
            this.f108643b = val$anchor;
            this.f108644c = val$anchorRect;
            this.f108645d = val$execute;
        }

        @Override
        public void run() {
            if (this.f108643b.getGlobalVisibleRect(this.f108644c)) {
                this.f108645d.run();
            } else {
                N7.c.c0(this);
            }
        }
    }

    public enum e {
        Left,
        Above,
        Below,
        Right
    }

    public interface f {
        void a(FloatingPanelArea floatingPanelArea);
    }

    public static G4.a a(View anchor, Class cls, Object instance, String tittle, e anchorSide, G4.b classPanelCallbacks) {
        return b(anchor, cls, instance, tittle, anchorSide, classPanelCallbacks, 0.3f, 0.5f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0094, code lost:
    
        if (r0 != 3) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static G4.a b(View anchor, Class cls, Object instance, String tittle, e anchorSide, G4.b classPanelCallbacks, float w10, float h10) {
        float f10;
        int i10;
        float f11;
        float f12;
        float f13;
        int ordinal;
        N7.c.h0();
        Rect rect = f108632a.get();
        Rect Q10 = N7.c.D().Q();
        int width = Q10.width();
        int height = Q10.height();
        anchor.getGlobalVisibleRect(rect);
        int i11 = rect.left;
        int i12 = i11 + (rect.right - i11);
        int ordinal2 = anchorSide.ordinal();
        if (ordinal2 != 0) {
            if (ordinal2 == 1) {
                f10 = (i12 / width) - (w10 / 2.0f);
                f11 = (rect.top / height) - h10;
                float f14 = f10;
                f12 = f11;
                f13 = f14;
                FloatingPanelArea floatingPanelArea = new FloatingPanelArea(f13 - N7.c.j(K8.c.f11000a), f12 - N7.c.i(K8.c.f11001b), w10, h10);
                ordinal = anchorSide.ordinal();
                if (ordinal != 0) {
                }
                floatingPanelArea.N0(true, true, false, true);
                G4.a aVar = new G4.a(tittle, cls, instance, classPanelCallbacks);
                aVar.e1(false);
                floatingPanelArea.g(aVar);
                N7.c.D().t(floatingPanelArea);
                return aVar;
            }
            if (ordinal2 == 2) {
                f12 = (rect.bottom - Q10.top) / height;
                f13 = (i12 / width) - (w10 / 2.0f);
            } else if (ordinal2 != 3) {
                f13 = 0.0f;
                f12 = 0.0f;
            } else {
                f10 = rect.right / width;
                i10 = rect.top;
            }
            FloatingPanelArea floatingPanelArea2 = new FloatingPanelArea(f13 - N7.c.j(K8.c.f11000a), f12 - N7.c.i(K8.c.f11001b), w10, h10);
            ordinal = anchorSide.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1 || ordinal == 2) {
                    floatingPanelArea2.N0(true, true, true, false);
                }
                G4.a aVar2 = new G4.a(tittle, cls, instance, classPanelCallbacks);
                aVar2.e1(false);
                floatingPanelArea2.g(aVar2);
                N7.c.D().t(floatingPanelArea2);
                return aVar2;
            }
            floatingPanelArea2.N0(true, true, false, true);
            G4.a aVar22 = new G4.a(tittle, cls, instance, classPanelCallbacks);
            aVar22.e1(false);
            floatingPanelArea2.g(aVar22);
            N7.c.D().t(floatingPanelArea2);
            return aVar22;
        }
        f10 = (rect.left / width) - w10;
        i10 = rect.top;
        f11 = (i10 / height) - (h10 / 2.0f);
        float f142 = f10;
        f12 = f11;
        f13 = f142;
        FloatingPanelArea floatingPanelArea22 = new FloatingPanelArea(f13 - N7.c.j(K8.c.f11000a), f12 - N7.c.i(K8.c.f11001b), w10, h10);
        ordinal = anchorSide.ordinal();
        if (ordinal != 0) {
        }
        floatingPanelArea22.N0(true, true, false, true);
        G4.a aVar222 = new G4.a(tittle, cls, instance, classPanelCallbacks);
        aVar222.e1(false);
        floatingPanelArea22.g(aVar222);
        N7.c.D().t(floatingPanelArea22);
        return aVar222;
    }

    public static G4.c c(View anchor, List<C5.b> entries, String tittle, e anchorSide, G4.d classPanelCallbacks) {
        return d(anchor, entries, tittle, anchorSide, classPanelCallbacks, 0.3f, 0.5f);
    }

    public static G4.c d(View anchor, List<C5.b> entries, String tittle, e anchorSide, G4.d classPanelCallbacks, float w10, float h10) {
        return e(anchor, entries, tittle, anchorSide, classPanelCallbacks, w10, h10, false, false, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0094, code lost:
    
        if (r0 != 3) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static G4.c e(View anchor, List<C5.b> entries, String tittle, e anchorSide, G4.d classPanelCallbacks, float w10, float h10, boolean closeWhenTouchOutside, boolean hideTittlebar, boolean captureTouchWhenOutside) {
        float f10;
        int i10;
        float f11;
        float f12;
        float f13;
        int ordinal;
        N7.c.h0();
        Rect rect = f108632a.get();
        Rect Q10 = N7.c.D().Q();
        int width = Q10.width();
        int height = Q10.height();
        anchor.getGlobalVisibleRect(rect);
        int i11 = rect.left;
        int i12 = i11 + (rect.right - i11);
        int ordinal2 = anchorSide.ordinal();
        if (ordinal2 != 0) {
            if (ordinal2 == 1) {
                f10 = (i12 / width) - (w10 / 2.0f);
                f11 = (rect.top / height) - h10;
                float f14 = f10;
                f12 = f11;
                f13 = f14;
                FloatingPanelArea floatingPanelArea = new FloatingPanelArea(f13 - N7.c.j(K8.c.f11000a), f12 - N7.c.i(K8.c.f11001b), w10, h10);
                ordinal = anchorSide.ordinal();
                if (ordinal != 0) {
                }
                floatingPanelArea.N0(true, true, false, true);
                if (hideTittlebar) {
                }
                floatingPanelArea.F1(closeWhenTouchOutside);
                floatingPanelArea.E1(captureTouchWhenOutside);
                G4.c cVar = new G4.c(tittle, entries, classPanelCallbacks);
                cVar.e1(false);
                cVar.f7543Z = floatingPanelArea;
                floatingPanelArea.g(cVar);
                N7.c.D().t(floatingPanelArea);
                return cVar;
            }
            if (ordinal2 == 2) {
                f12 = (rect.bottom - Q10.top) / height;
                f13 = (i12 / width) - (w10 / 2.0f);
            } else if (ordinal2 != 3) {
                f13 = 0.0f;
                f12 = 0.0f;
            } else {
                f10 = rect.right / width;
                i10 = rect.top;
            }
            FloatingPanelArea floatingPanelArea2 = new FloatingPanelArea(f13 - N7.c.j(K8.c.f11000a), f12 - N7.c.i(K8.c.f11001b), w10, h10);
            ordinal = anchorSide.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1 || ordinal == 2) {
                    floatingPanelArea2.N0(true, true, true, false);
                }
                if (hideTittlebar) {
                    floatingPanelArea2.T();
                }
                floatingPanelArea2.F1(closeWhenTouchOutside);
                floatingPanelArea2.E1(captureTouchWhenOutside);
                G4.c cVar2 = new G4.c(tittle, entries, classPanelCallbacks);
                cVar2.e1(false);
                cVar2.f7543Z = floatingPanelArea2;
                floatingPanelArea2.g(cVar2);
                N7.c.D().t(floatingPanelArea2);
                return cVar2;
            }
            floatingPanelArea2.N0(true, true, false, true);
            if (hideTittlebar) {
            }
            floatingPanelArea2.F1(closeWhenTouchOutside);
            floatingPanelArea2.E1(captureTouchWhenOutside);
            G4.c cVar22 = new G4.c(tittle, entries, classPanelCallbacks);
            cVar22.e1(false);
            cVar22.f7543Z = floatingPanelArea2;
            floatingPanelArea2.g(cVar22);
            N7.c.D().t(floatingPanelArea2);
            return cVar22;
        }
        f10 = (rect.left / width) - w10;
        i10 = rect.top;
        f11 = (i10 / height) + (h10 / 2.0f);
        float f142 = f10;
        f12 = f11;
        f13 = f142;
        FloatingPanelArea floatingPanelArea22 = new FloatingPanelArea(f13 - N7.c.j(K8.c.f11000a), f12 - N7.c.i(K8.c.f11001b), w10, h10);
        ordinal = anchorSide.ordinal();
        if (ordinal != 0) {
        }
        floatingPanelArea22.N0(true, true, false, true);
        if (hideTittlebar) {
        }
        floatingPanelArea22.F1(closeWhenTouchOutside);
        floatingPanelArea22.E1(captureTouchWhenOutside);
        G4.c cVar222 = new G4.c(tittle, entries, classPanelCallbacks);
        cVar222.e1(false);
        cVar222.f7543Z = floatingPanelArea22;
        floatingPanelArea22.g(cVar222);
        N7.c.D().t(floatingPanelArea22);
        return cVar222;
    }

    @Deprecated
    public static FloatingPanelArea f(View anchor, EditorPanel panel, e anchorSide) {
        return g(anchor, panel, anchorSide, 0.3f, 0.5f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0095, code lost:
    
        if (r10 != 3) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0091  */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static FloatingPanelArea g(View anchor, EditorPanel panel, e anchorSide, float w10, float h10) {
        float f10;
        float f11;
        int ordinal;
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        N7.c.h0();
        Rect rect = f108632a.get();
        Rect Q10 = N7.c.D().Q();
        int width = Q10.width();
        int height = Q10.height();
        anchor.getGlobalVisibleRect(rect);
        int i10 = (rect.left + rect.right) / 2;
        int X10 = ((rect.top + rect.bottom) / 2) - N7.c.X();
        int ordinal2 = anchorSide.ordinal();
        if (ordinal2 != 0) {
            if (ordinal2 == 1) {
                f10 = (i10 / width) - (w10 / 2.0f);
                f11 = ((rect.top - Q10.top) / height) - h10;
            } else if (ordinal2 == 2) {
                f10 = (i10 / width) - (w10 / 2.0f);
                f11 = (rect.bottom - Q10.top) / height;
            } else if (ordinal2 != 3) {
                f10 = 0.0f;
                f11 = 0.0f;
            } else {
                f10 = rect.right / width;
            }
            FloatingPanelArea floatingPanelArea = new FloatingPanelArea(f10 - N7.c.j(K8.c.f11000a), f11 - N7.c.i(K8.c.f11001b), w10, h10);
            ordinal = anchorSide.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1 || ordinal == 2) {
                    floatingPanelArea.N0(true, true, true, false);
                }
                floatingPanelArea.g(panel);
                N7.c.D().t(floatingPanelArea);
                return floatingPanelArea;
            }
            floatingPanelArea.N0(true, true, false, true);
            floatingPanelArea.g(panel);
            N7.c.D().t(floatingPanelArea);
            return floatingPanelArea;
        }
        f10 = (rect.left / width) - w10;
        f11 = (X10 / height) - (h10 / 2.0f);
        FloatingPanelArea floatingPanelArea2 = new FloatingPanelArea(f10 - N7.c.j(K8.c.f11000a), f11 - N7.c.i(K8.c.f11001b), w10, h10);
        ordinal = anchorSide.ordinal();
        if (ordinal != 0) {
        }
        floatingPanelArea2.N0(true, true, false, true);
        floatingPanelArea2.g(panel);
        N7.c.D().t(floatingPanelArea2);
        return floatingPanelArea2;
    }

    public static void h(View anchor, EditorPanel panel, e anchorSide, float w10, float h10) {
        i(anchor, panel, anchorSide, w10, h10, null);
    }

    public static void i(View anchor, EditorPanel panel, e anchorSide, float w10, float h10, f output) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        N7.c.h0();
        Rect rect = f108632a.get();
        Rect Q10 = N7.c.D().Q();
        c cVar = new c(rect, anchorSide, Q10.width(), w10, Q10.height(), h10, Q10, panel, output);
        if (anchor.getGlobalVisibleRect(rect)) {
            cVar.run();
        } else {
            N7.c.c0(new d(anchor, rect, cVar));
        }
    }

    public static FloatingPanelArea j(View anchor, EditorPanel panel, e anchorSide) {
        return k(anchor, panel, anchorSide, 0.3f, 0.5f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0095, code lost:
    
        if (r10 != 3) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static FloatingPanelArea k(View anchor, EditorPanel panel, e anchorSide, float w10, float h10) {
        float f10;
        float f11;
        int ordinal;
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        N7.c.h0();
        Rect rect = f108632a.get();
        Rect Q10 = N7.c.D().Q();
        int width = Q10.width();
        int height = Q10.height();
        anchor.getGlobalVisibleRect(rect);
        int i10 = (rect.left + rect.right) / 2;
        int X10 = ((rect.top + rect.bottom) / 2) - N7.c.X();
        int ordinal2 = anchorSide.ordinal();
        if (ordinal2 != 0) {
            if (ordinal2 == 1) {
                f10 = (i10 / width) - (w10 / 2.0f);
                f11 = ((rect.top - Q10.top) / height) - h10;
            } else if (ordinal2 == 2) {
                f10 = (i10 / width) - (w10 / 2.0f);
                f11 = (rect.bottom - Q10.top) / height;
            } else if (ordinal2 != 3) {
                f10 = 0.0f;
                f11 = 0.0f;
            } else {
                f10 = rect.right / width;
            }
            m4.d dVar = new m4.d(f10 - N7.c.j(K8.c.f11000a), f11 - N7.c.i(K8.c.f11001b), w10, h10);
            ordinal = anchorSide.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1 || ordinal == 2) {
                    dVar.N0(true, true, true, false);
                }
                dVar.g(panel);
                N7.c.D().t(dVar);
                return dVar;
            }
            dVar.N0(true, true, false, true);
            dVar.g(panel);
            N7.c.D().t(dVar);
            return dVar;
        }
        f10 = (rect.left / width) - w10;
        f11 = (X10 / height) - (h10 / 2.0f);
        m4.d dVar2 = new m4.d(f10 - N7.c.j(K8.c.f11000a), f11 - N7.c.i(K8.c.f11001b), w10, h10);
        ordinal = anchorSide.ordinal();
        if (ordinal != 0) {
        }
        dVar2.N0(true, true, false, true);
        dVar2.g(panel);
        N7.c.D().t(dVar2);
        return dVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
    
        if (r3 != 3) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static G4.c l(List<C5.b> entries, String tittle, e anchorSide, G4.d classPanelCallbacks, float x10, float y10, float w10, float h10) {
        N7.c.h0();
        f108632a.get();
        N7.c.D().Q();
        FloatingPanelArea floatingPanelArea = new FloatingPanelArea(x10 - N7.c.j(K8.c.f11000a), y10 - N7.c.i(K8.c.f11001b), w10, h10);
        int ordinal = anchorSide.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1 || ordinal == 2) {
                floatingPanelArea.N0(true, true, true, false);
            }
            G4.c cVar = new G4.c(tittle, entries, classPanelCallbacks);
            cVar.e1(false);
            floatingPanelArea.g(cVar);
            N7.c.D().t(floatingPanelArea);
            return cVar;
        }
        floatingPanelArea.N0(true, true, false, true);
        G4.c cVar2 = new G4.c(tittle, entries, classPanelCallbacks);
        cVar2.e1(false);
        floatingPanelArea.g(cVar2);
        N7.c.D().t(floatingPanelArea);
        return cVar2;
    }

    public static FloatingPanelArea m(EditorPanel panel, float w10, float h10) {
        return n(panel, 0.5f - (w10 / 2.0f), 0.5f - (h10 / 2.0f), w10, h10);
    }

    public static FloatingPanelArea n(EditorPanel panel, float x10, float y10, float w10, float h10) {
        N7.c.h0();
        FloatingPanelArea floatingPanelArea = new FloatingPanelArea(x10 - N7.c.j(K8.c.f11000a), y10 - N7.c.i(K8.c.f11001b), w10, h10);
        floatingPanelArea.N0(true, true, true, false);
        floatingPanelArea.g(panel);
        N7.c.D().t(floatingPanelArea);
        return floatingPanelArea;
    }

    public static FloatingPanelArea o(EditorPanel panel, float w10, float h10) {
        return p(panel, 0.5f - (w10 / 2.0f), 0.5f - (h10 / 2.0f), w10, h10);
    }

    public static FloatingPanelArea p(EditorPanel panel, float x10, float y10, float w10, float h10) {
        N7.c.h0();
        m4.d dVar = new m4.d(x10 - N7.c.j(K8.c.f11000a), y10 - N7.c.i(K8.c.f11001b), w10, h10);
        dVar.N0(true, true, true, false);
        dVar.g(panel);
        N7.c.D().t(dVar);
        return dVar;
    }
}
