package com.itsmagic.engine.Activities.Editor.Panels.Objects;

import F7.i;
import F7.k;
import F7.l;
import a8.C3589a;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Utils.HideObjectFromPanel;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import g6.C13293a;
import g6.InterfaceC13296d;
import gb.C13317e;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import r4.C15147a;
import t3.C15377a;
import u4.C15575a;

public class ObjectsPanel extends EditorPanel {

    public static final String f71767d0 = "Objects";

    public static final Class f71768e0 = ObjectsPanel.class;

    public static boolean f71769f0 = true;

    public static final List<InterfaceC13296d> f71770g0;

    public l f71771X;

    public RecyclerView f71772Y;

    public World f71773Z;

    public GameObject f71774a0;

    public boolean f71775b0;

    public final InterfaceC13296d f71776c0;

    @Expose
    private boolean showEnableToggle;

    @Expose
    private boolean showTouchButtonV2;

    @Expose
    private boolean showVisionBtn;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return ObjectsPanel.f71768e0;
        }

        @Override
        public String c() {
            return ObjectsPanel.f71767d0;
        }
    }

    public class b implements InterfaceC13296d {

        public class a implements Runnable {

            public final GameObject f71778b;

            public a(final GameObject val$gameObject) {
                this.f71778b = val$gameObject;
            }

            @Override
            public void run() {
                ObjectsPanel.this.D1(this.f71778b);
            }
        }

        public class RunnableC1136b implements Runnable {

            public final GameObject f71780b;

            public final int f71781c;

            public RunnableC1136b(final GameObject val$gameObject, final int val$index) {
                this.f71780b = val$gameObject;
                this.f71781c = val$index;
            }

            @Override
            public void run() {
                ObjectsPanel.this.E1(this.f71780b, this.f71781c);
            }
        }

        public class c implements Runnable {

            public final GameObject f71783b;

            public c(final GameObject val$gameObject) {
                this.f71783b = val$gameObject;
            }

            @Override
            public void run() {
                ObjectsPanel.this.T1(this.f71783b);
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override
            public void run() {
                ObjectsPanel.this.J1();
            }
        }

        public class e implements Runnable {

            public final GameObject f71786b;

            public e(final GameObject val$gameObject) {
                this.f71786b = val$gameObject;
            }

            @Override
            public void run() {
                ObjectsPanel.this.M1(this.f71786b);
            }
        }

        public class f implements Runnable {

            public final GameObject f71788b;

            public final GameObject f71789c;

            public final GameObject f71790d;

            public f(final GameObject val$gameObject, final GameObject val$fromParent, final GameObject val$toParent) {
                this.f71788b = val$gameObject;
                this.f71789c = val$fromParent;
                this.f71790d = val$toParent;
            }

            @Override
            public void run() {
                ObjectsPanel.this.Y1(this.f71788b, this.f71789c, this.f71790d);
            }
        }

        public class g implements Runnable {

            public final GameObject f71792b;

            public g(final GameObject val$gameObject) {
                this.f71792b = val$gameObject;
            }

            @Override
            public void run() {
                ObjectsPanel.this.P1(this.f71792b);
            }
        }

        public b() {
        }

        @Override
        public void a(GameObject gameObject) {
            N7.c.j0(new g(gameObject));
        }

        @Override
        public void b() {
            N7.c.j0(new d());
        }

        @Override
        public void c(GameObject gameObject) {
            N7.c.j0(new c(gameObject));
        }

        @Override
        public void d(GameObject gameObject, int index) {
            N7.c.j0(new RunnableC1136b(gameObject, index));
        }

        @Override
        public void e(GameObject gameObject) {
            N7.c.j0(new e(gameObject));
        }

        @Override
        public void f(GameObject gameObject) {
            N7.c.j0(new a(gameObject));
        }

        @Override
        public void g(GameObject gameObject, GameObject fromParent, GameObject toParent) {
            N7.c.j0(new f(gameObject, fromParent, toParent));
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            ObjectsPanel.N1();
        }
    }

    public class d implements k<C13293a> {
        public d() {
        }

        @Override
        public void a() {
            if (ObjectsPanel.this.f71771X != null) {
                if (ObjectsPanel.this.f71771X.o() == null) {
                    if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                        ObjectsPanel.this.Q1();
                    }
                } else {
                    if (!(ObjectsPanel.this.f71771X.o() instanceof C13293a) || ((C13293a) ObjectsPanel.this.f71771X.o()).v() == W7.b.f27309i.f31909a.f31910a) {
                        return;
                    }
                    ObjectsPanel.this.Q1();
                }
            }
        }

        @Override
        public List<C13293a> c() {
            return ObjectsPanel.this.H1();
        }

        @Override
        public List<C13293a> f(C13293a eElement) {
            return ObjectsPanel.this.L1(eElement);
        }

        @Override
        public void b(C13293a element, View v10) {
            GameObject v11;
            if (element == null || (v11 = element.v()) == null) {
                return;
            }
            C13317e.M(v11, v10, C15147a.e.Right);
        }

        @Override
        public void d(C13293a element, boolean open) {
            if (element != null) {
                GameObject v10 = element.v();
                if (C13317e.J(v10)) {
                    v10.getEditor().i(open);
                }
            }
        }

        @Override
        public void e(C13293a element) {
            if (element != null) {
                W7.b.f27308h.h(element.v());
            }
        }
    }

    public class e extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                com.itsmagic.engine.Engines.Engine.World.b.m();
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                ObjectsPanel.this.J1();
            }
        }

        public class c implements dd.d {
            public c() {
            }

            @Override
            public void onSelected(View v10) {
                ObjectsPanel.this.showEnableToggle = !r2.showEnableToggle;
                ObjectsPanel.this.J1();
            }
        }

        public class d implements dd.d {
            public d() {
            }

            @Override
            public void onSelected(View v10) {
                ObjectsPanel.this.showVisionBtn = !r2.showVisionBtn;
                ObjectsPanel.this.J1();
            }
        }

        public class C1137e implements dd.d {
            public C1137e() {
            }

            @Override
            public void onSelected(View v10) {
                ObjectsPanel.this.showTouchButtonV2 = !r2.showTouchButtonV2;
                ObjectsPanel.this.J1();
            }
        }

        public e() {
            add(new C12908b("New group", new a()));
            add(new C12908b());
            add(new C12908b(F2.d.f6290y0, new b()));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(ObjectsPanel.this.showEnableToggle ? "X" : " ");
            sb2.append("] Enable/Disable toggle");
            add(new C12908b(sb2.toString(), new c()));
            StringBuilder sb3 = new StringBuilder();
            sb3.append("[");
            sb3.append(ObjectsPanel.this.showVisionBtn ? "X" : " ");
            sb3.append("] Vision toggle");
            add(new C12908b(sb3.toString(), new d()));
            StringBuilder sb4 = new StringBuilder();
            sb4.append("[");
            sb4.append(ObjectsPanel.this.showTouchButtonV2 ? "X" : " ");
            sb4.append("] Touch toggle");
            add(new C12908b(sb4.toString(), new C1137e()));
        }
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f71769f0 = false;
        }
        EditorPanel.a(new a());
        f71770g0 = Collections.synchronizedList(new LinkedList());
    }

    public ObjectsPanel(K8.a engine) {
        super(engine);
        this.showEnableToggle = true;
        this.showVisionBtn = false;
        this.showTouchButtonV2 = true;
        this.f71771X = null;
        this.f71774a0 = null;
        this.f71776c0 = new b();
    }

    public static void B1(GameObject gameObject) {
        List<InterfaceC13296d> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC13296d> list2 = f71770g0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC13296d interfaceC13296d = list2.get(i10);
            if (interfaceC13296d != null) {
                interfaceC13296d.f(gameObject);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71770g0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void C1(GameObject gameObject, int index) {
        List<InterfaceC13296d> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC13296d> list2 = f71770g0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC13296d interfaceC13296d = list2.get(i10);
            if (interfaceC13296d != null) {
                interfaceC13296d.d(gameObject, index);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71770g0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0050 A[Catch: IndexOutOfBoundsException -> 0x003d, TRY_LEAVE, TryCatch #0 {IndexOutOfBoundsException -> 0x003d, blocks: (B:6:0x0009, B:7:0x0011, B:9:0x0017, B:11:0x0023, B:15:0x0041, B:17:0x0049, B:21:0x0050, B:26:0x002c, B:28:0x0032), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<C13293a> H1() {
        boolean z10;
        LinkedList linkedList = new LinkedList();
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world != null) {
            try {
                this.f71773Z = world;
                List<GameObject> q10 = world.q();
                for (int i10 = 0; i10 < q10.size(); i10++) {
                    GameObject gameObject = q10.get(i10);
                    if (C13317e.J(gameObject)) {
                        GameObject gameObject2 = this.f71774a0;
                        if (gameObject2 != null && gameObject2 != gameObject && !gameObject2.d1(gameObject) && !gameObject.d1(this.f71774a0)) {
                            z10 = false;
                            if (z10 && gameObject.d0(HideObjectFromPanel.class) != null && !f71769f0) {
                                z10 = false;
                            }
                            if (!z10) {
                                C13293a c13293a = new C13293a(gameObject, this.showEnableToggle, this.showVisionBtn, this.showTouchButtonV2);
                                c13293a.r(true ^ gameObject.z0().isEmpty());
                                c13293a.f6684f.f6678c = gameObject.getEditor().e();
                                linkedList.add(c13293a);
                            }
                        }
                        z10 = true;
                        if (z10) {
                            z10 = false;
                        }
                        if (!z10) {
                        }
                    }
                }
            } catch (IndexOutOfBoundsException e10) {
                e10.printStackTrace();
                N7.c.l(1.0f, new c());
            }
        }
        return linkedList;
    }

    public static void I1(GameObject gameObject) {
        List<InterfaceC13296d> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC13296d> list2 = f71770g0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC13296d interfaceC13296d = list2.get(i10);
            if (interfaceC13296d != null) {
                interfaceC13296d.e(gameObject);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71770g0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void N1() {
        List<InterfaceC13296d> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC13296d> list2 = f71770g0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC13296d interfaceC13296d = list2.get(i10);
            if (interfaceC13296d != null) {
                interfaceC13296d.b();
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71770g0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void O1(GameObject gameObject) {
        List<InterfaceC13296d> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC13296d> list2 = f71770g0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC13296d interfaceC13296d = list2.get(i10);
            if (interfaceC13296d != null) {
                interfaceC13296d.a(gameObject);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71770g0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void S1(GameObject gameObject) {
        List<InterfaceC13296d> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC13296d> list2 = f71770g0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC13296d interfaceC13296d = list2.get(i10);
            if (interfaceC13296d != null) {
                interfaceC13296d.c(gameObject);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71770g0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void X1(GameObject gameObject, GameObject fromParent, GameObject toParent) {
        List<InterfaceC13296d> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC13296d> list2 = f71770g0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC13296d interfaceC13296d = list2.get(i10);
            if (interfaceC13296d != null) {
                interfaceC13296d.g(gameObject, fromParent, toParent);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71770g0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void Z1() {
        I1(null);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.tree_list_panel, (ViewGroup) null);
        this.f71772Y = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        f71770g0.add(this.f71776c0);
        this.f71771X = new l(this.f71772Y, new d());
        Q1();
        return inflate;
    }

    public void D1(GameObject gameObject) {
        if (C13317e.J(gameObject)) {
            F1(gameObject, gameObject.f79294k);
        }
    }

    public void E1(GameObject gameObject, int index) {
        if (C13317e.J(gameObject)) {
            G1(gameObject, gameObject.f79294k, index);
        }
    }

    public void F1(GameObject gameObject, GameObject parent) {
        if (this.f71771X == null || !C13317e.J(gameObject)) {
            return;
        }
        if (gameObject.f79294k == null) {
            if (V1(gameObject)) {
                C13293a c13293a = new C13293a(gameObject, this.showEnableToggle, this.showVisionBtn, this.showTouchButtonV2);
                c13293a.r(!gameObject.z0().isEmpty());
                c13293a.f6684f.f6678c = gameObject.getEditor().e();
                this.f71771X.d(c13293a);
                return;
            }
            return;
        }
        for (int i10 = 0; i10 < this.f71771X.k(); i10++) {
            C13293a c13293a2 = (C13293a) this.f71771X.j(i10);
            GameObject v10 = c13293a2.v();
            if (v10 != null && v10 == parent) {
                if (c13293a2.f6684f.f6678c) {
                    this.f71771X.A(c13293a2, true);
                    return;
                }
                return;
            }
        }
    }

    @Override
    public void G0() {
        f71770g0.remove(this.f71776c0);
    }

    public void G1(GameObject gameObject, GameObject parent, int index) {
        if (this.f71771X == null || !C13317e.J(gameObject)) {
            return;
        }
        if (gameObject.f79294k == null) {
            if (V1(gameObject)) {
                C13293a c13293a = new C13293a(gameObject, this.showEnableToggle, this.showVisionBtn, this.showTouchButtonV2);
                c13293a.r(!gameObject.z0().isEmpty());
                c13293a.f6684f.f6678c = gameObject.getEditor().e();
                this.f71771X.e(c13293a, W1(gameObject, index));
                return;
            }
            return;
        }
        for (int i10 = 0; i10 < this.f71771X.k(); i10++) {
            C13293a c13293a2 = (C13293a) this.f71771X.j(i10);
            GameObject v10 = c13293a2.v();
            if (v10 != null && v10 == parent) {
                if (c13293a2.f6684f.f6678c) {
                    this.f71771X.A(c13293a2, true);
                    return;
                }
                return;
            }
        }
    }

    public final void J1() {
        l lVar = this.f71771X;
        if (lVar != null) {
            lVar.C(H1());
            Q1();
        }
    }

    public final void K1(GameObject gameObject, List<C13293a> elements) {
        if (gameObject != null) {
            List<GameObject> z02 = gameObject.z0();
            for (int i10 = 0; i10 < z02.size(); i10++) {
                GameObject gameObject2 = z02.get(i10);
                if (C13317e.J(gameObject2)) {
                    GameObject gameObject3 = this.f71774a0;
                    boolean z10 = gameObject3 == null || gameObject3 == gameObject2 || gameObject3.d1(gameObject2) || gameObject2.d1(this.f71774a0);
                    if (z10 && gameObject2.d0(HideObjectFromPanel.class) != null && !f71769f0) {
                        z10 = false;
                    }
                    if (z10) {
                        C13293a c13293a = new C13293a(gameObject2, this.showEnableToggle, this.showVisionBtn, this.showTouchButtonV2);
                        c13293a.r(true ^ gameObject2.z0().isEmpty());
                        c13293a.f6684f.f6678c = gameObject2.getEditor().e();
                        elements.add(c13293a);
                    }
                }
            }
        }
    }

    public final List<C13293a> L1(C13293a element) {
        LinkedList linkedList = new LinkedList();
        if (element != null) {
            K1(element.v(), linkedList);
        }
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            linkedList.get(i10).q(element.e() + 1);
        }
        return linkedList;
    }

    @Override
    public void M0() {
        super.M0();
        J1();
    }

    public final void M1(GameObject gameObject) {
        this.f71775b0 = true;
        this.f71774a0 = gameObject;
        J1();
    }

    @Override
    public List<C12908b> N() {
        return new e();
    }

    public void P1(GameObject gameObject) {
        if (C13317e.J(gameObject)) {
            for (int i10 = 0; i10 < this.f71771X.k(); i10++) {
                C13293a c13293a = (C13293a) this.f71771X.j(i10);
                GameObject v10 = c13293a.v();
                if (v10 != null && v10 == gameObject) {
                    this.f71771X.t(c13293a);
                    return;
                }
            }
        }
    }

    public final void Q1() {
        l lVar = this.f71771X;
        if (lVar != null) {
            if (W7.b.f27309i.f31909a.f31910a == null) {
                lVar.D(null);
                return;
            }
            for (int i10 = 0; i10 < this.f71771X.k() && !R1((C13293a) this.f71771X.j(i10)); i10++) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean R1(C13293a element) {
        GameObject v10 = element.v();
        if (v10 != null && v10 == W7.b.f27309i.f31909a.f31910a) {
            this.f71771X.D(element);
            return true;
        }
        if (element.f6682d && element.f6684f != null) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            synchronized (element.f6684f.f6676a) {
                try {
                    List<i> list = element.f6684f.f6677b;
                    if (list != null) {
                        steppedArrayList.addAll(list);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                C13293a c13293a = (C13293a) steppedArrayList.get(i10);
                if (c13293a != null && R1(c13293a)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void T1(GameObject gameObject) {
        U1(gameObject, gameObject.f79294k);
    }

    public void U1(GameObject gameObject, GameObject fromParent) {
        if (this.f71771X != null) {
            int i10 = 0;
            while (true) {
                try {
                    if (i10 >= this.f71771X.k()) {
                        break;
                    }
                    C13293a c13293a = (C13293a) this.f71771X.j(i10);
                    GameObject v10 = c13293a.v();
                    if (v10 == null || v10 != fromParent) {
                        i10++;
                    } else if (c13293a.f6684f.f6678c) {
                        this.f71771X.A(c13293a, true);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            while (true) {
                for (int i11 = 0; i11 < this.f71771X.k(); i11++) {
                    C13293a c13293a2 = (C13293a) this.f71771X.j(i11);
                    GameObject v11 = c13293a2.v();
                    if (v11 != null && (v11 == gameObject || v11.h1(gameObject))) {
                        this.f71771X.w(c13293a2);
                    }
                }
                return;
            }
        }
    }

    public final boolean V1(GameObject gameObject) {
        if (gameObject == null || C13317e.G(gameObject)) {
            return false;
        }
        GameObject gameObject2 = this.f71774a0;
        if (gameObject2 == null) {
            return true;
        }
        return gameObject2 == gameObject || gameObject2.d1(gameObject) || gameObject.d1(this.f71774a0);
    }

    public final int W1(GameObject gameObject, int worldIndex) {
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world == null) {
            return 0;
        }
        List<GameObject> q10 = world.q();
        int min = Math.min(Math.max(worldIndex, 0), q10.size());
        int i10 = 0;
        for (int i11 = 0; i11 < min; i11++) {
            GameObject gameObject2 = q10.get(i11);
            if (gameObject2 != gameObject && V1(gameObject2)) {
                i10++;
            }
        }
        return i10;
    }

    public void Y1(GameObject gameObject, GameObject fromParent, GameObject toParent) {
        U1(gameObject, fromParent);
        F1(gameObject, toParent);
    }

    @Override
    public EditorPanel k() {
        return new ObjectsPanel();
    }

    @Override
    public void n1() {
        GameObject gameObject;
        if (this.f71771X != null) {
            if (com.itsmagic.engine.Engines.Engine.World.a.A()) {
                this.f71771X.g();
                return;
            }
            World world = this.f71773Z;
            World world2 = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
            if (world != world2) {
                this.f71773Z = world2;
                J1();
                return;
            }
            if (this.f71771X.o() != null) {
                C3589a c3589a = W7.b.f27309i;
                if (c3589a.f31909a.f31910a == null) {
                    Q1();
                } else if ((this.f71771X.o() instanceof C13293a) && ((C13293a) this.f71771X.o()).v() != c3589a.f31909a.f31910a) {
                    Q1();
                }
            } else if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                Q1();
            }
            if (J3.a.d()) {
                if (this.f71774a0 != J3.a.b()) {
                    this.f71774a0 = J3.a.b();
                    this.f71775b0 = true;
                    J1();
                    return;
                }
                return;
            }
            AnimationPlayer animationPlayer = C15575a.f118379b;
            if (animationPlayer != null) {
                if (C13317e.J(animationPlayer.f79250n)) {
                    GameObject gameObject2 = this.f71774a0;
                    GameObject gameObject3 = C15575a.f118379b.f79250n;
                    if (gameObject2 != gameObject3) {
                        this.f71774a0 = gameObject3;
                        this.f71775b0 = false;
                        J1();
                    }
                } else if (this.f71774a0 != null) {
                    this.f71774a0 = null;
                    this.f71775b0 = false;
                    this.f71771X.C(H1());
                }
            } else if (!this.f71775b0 && this.f71774a0 != null) {
                this.f71774a0 = null;
                J1();
            }
            if (this.f71775b0 && (gameObject = this.f71774a0) != null && C13317e.G(gameObject)) {
                this.f71774a0 = null;
                this.f71775b0 = false;
                J1();
            }
        }
    }

    @Override
    public void o1() {
        for (int i10 = 0; i10 < this.f71771X.k(); i10++) {
            i j10 = this.f71771X.j(i10);
            if (j10 instanceof C13293a) {
                GameObject v10 = ((C13293a) j10).v();
                if (!C13317e.J(v10)) {
                    this.f71771X.v();
                    return;
                }
                if (!j10.l()) {
                    if (!v10.z0().isEmpty()) {
                        j10.r(true);
                        this.f71771X.z(j10);
                        return;
                    }
                } else if (v10.z0().isEmpty()) {
                    j10.r(false);
                    this.f71771X.x(j10);
                    return;
                } else if (!j10.f6684f.f6678c && v10.getEditor().e()) {
                    this.f71771X.z(j10);
                    return;
                } else if (j10.f6684f.f6678c && !v10.getEditor().e()) {
                    this.f71771X.x(j10);
                    return;
                }
            }
        }
    }

    public ObjectsPanel() {
        super(null, Lang.l(Lang.T.OBJECTS), f71767d0);
        this.showEnableToggle = true;
        this.showVisionBtn = false;
        this.showTouchButtonV2 = true;
        this.f71771X = null;
        this.f71774a0 = null;
        this.f71776c0 = new b();
    }
}
