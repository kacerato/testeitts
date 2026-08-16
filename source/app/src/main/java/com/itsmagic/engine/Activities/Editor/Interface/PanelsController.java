package com.itsmagic.engine.Activities.Editor.Interface;

import JAVARuntime.Runnable;
import JAVARuntime.ViewPanel;
import K8.c;
import N7.c;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.Area;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.PanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.SplitArea;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Editor3DPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Files.FilesPanel;
import com.itsmagic.engine.Activities.Editor.Panels.NoCode.NoCodePanel;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Activities.Editor.Panels.TerrainStudio.TerrainStudioPanel;
import com.itsmagic.engine.Activities.Editor.Panels.TerrainTools.TerrainToolsPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.ScriptingHUB;
import com.itsmagic.engine.Activities.Editor.Panels.ShaderGraph.ShaderGraphPanel;
import com.itsmagic.engine.Activities.Editor.Panels.ViewPanel.JavaViewPanel;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary.ComponentDeserializeException;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import dd.C12908b;
import f6.C13190a;
import i4.C13580a;
import i4.C13581b;
import i4.C13583d;
import i4.InterfaceC13582c;
import i4.InterfaceC13584e;
import j4.EnumC13805a;
import j4.EnumC13806b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import k4.InterfaceC13936b;
import n.C14331a;
import o4.InterfaceC14482a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import rc.C15169a;
import w6.C15971b;
import z5.C16261a;

public class PanelsController {

    public final AtomicBoolean f70966A;

    public LayoutInflater f70967a;

    public final C13580a f70968b;

    public FrameLayout f70969c;

    public final Rect f70970d;

    public final Rect f70971e;

    public Activity f70972f;

    public Context f70973g;

    public boolean f70974h;

    public Panel f70975i;

    public final Point f70976j;

    public final InterfaceC13584e f70977k;

    public final k4.d f70978l;

    public final InterfaceC13936b f70979m;

    public final List<s> f70980n;

    public final List<s> f70981o;

    public Area f70982p;

    public final List<FloatingPanelArea> f70983q;

    public final List<FloatingPanelArea> f70984r;

    public final List<FloatingPanelArea> f70985s;

    public PanelArea f70986t;

    public final AtomicBoolean f70987u;

    public boolean f70988v;

    public final o4.b f70989w;

    public final k4.c f70990x;

    public int f70991y;

    public AtomicBoolean f70992z;

    public static class SaveData {

        public static final int f70993a = 0;

        @Expose
        public List<FloatingPanelArea> floatingPanels;

        @Expose
        public Area totalArea;

        @Expose
        public int version = 0;

        public static SaveData a(String json) {
            try {
                SaveData saveData = (SaveData) X7.a.m().fromJson(json, SaveData.class);
                if (saveData != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(json);
                        if (jSONObject.has("totalArea")) {
                            saveData.totalArea = Area.g(jSONObject.getJSONObject("totalArea").toString());
                        }
                        if (jSONObject.has("floatingPanels")) {
                            JSONArray jSONArray = jSONObject.getJSONArray("floatingPanels");
                            SteppedArrayList steppedArrayList = new SteppedArrayList();
                            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                                try {
                                    FloatingPanelArea g12 = FloatingPanelArea.g1(jSONArray.getJSONObject(i10).toString());
                                    if (g12 != null) {
                                        steppedArrayList.add(g12);
                                    }
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                            saveData.floatingPanels = steppedArrayList2;
                            steppedArrayList2.addAll(steppedArrayList);
                        } else {
                            saveData.floatingPanels = new SteppedArrayList();
                        }
                    } catch (JSONException e11) {
                        e11.printStackTrace();
                        N7.c.v0("Ops! :" + e11.getMessage());
                    }
                }
                return saveData;
            } catch (JsonSyntaxException e12) {
                throw new ComponentDeserializeException(e12);
            }
        }
    }

    public class a implements x8.b {

        public class RunnableC1086a implements Runnable {
            public RunnableC1086a() {
            }

            @Override
            public void run() {
                PanelsController.this.k0();
            }
        }

        public a() {
        }

        @Override
        public void a() {
            N7.c.j0(new RunnableC1086a());
        }

        @Override
        public void b() {
        }
    }

    public class b implements View.OnDragListener {
        public b() {
        }

        @Override
        public boolean onDrag(View view, DragEvent dragEvent) {
            if (dragEvent.getAction() != 4) {
                return true;
            }
            if (PanelsController.this.f70982p != null) {
                PanelsController.this.f70982p.i(PanelsController.this.f70969c, PanelsController.this.f70972f, PanelsController.this.f70973g, PanelsController.this.f70967a, 0.0f, 0.0f, 1.0f, 1.0f, PanelsController.this.f70968b, PanelsController.this.f70977k);
            }
            PanelsController.this.f70975i = null;
            return true;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            if (PanelsController.this.f70986t != null) {
                PanelsController.this.d0(null);
            }
        }
    }

    public class d implements Runnable {

        public final EditorPanel f70998b;

        public d(final EditorPanel val$panel) {
            this.f70998b = val$panel;
        }

        @Override
        public void run() {
            PanelArea H10 = PanelsController.this.H(this.f70998b);
            if (H10 != null) {
                PanelsController.this.d0(H10);
            }
        }
    }

    public class e implements Runnable {

        public final PanelArea f71000b;

        public e(final PanelArea val$panelArea) {
            this.f71000b = val$panelArea;
        }

        @Override
        public void run() {
            if (PanelsController.this.f70986t != null) {
                PanelsController.this.f70986t.L0();
            }
            PanelsController.this.f70986t = this.f71000b;
            if (this.f71000b == null) {
                if (PanelsController.this.f70982p != null) {
                    PanelsController.this.f70982p.K();
                    PanelsController.this.f70982p.I();
                }
                PanelsController.this.q0();
                return;
            }
            if (PanelsController.this.f70982p != null) {
                PanelsController.this.f70982p.m();
            }
            this.f71000b.K0();
            PanelsController.this.x(this.f71000b);
            this.f71000b.r0(PanelsController.this.f70990x);
            PanelsController.this.p0();
        }
    }

    public class f implements k4.c {
        public f() {
        }

        @Override
        public void a(View view) {
            PanelsController.this.w(view);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            if (PanelsController.this.f70982p != null) {
                PanelsController panelsController = PanelsController.this;
                panelsController.f0(panelsController.f70982p);
            }
            if (PanelsController.this.f70983q.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < PanelsController.this.f70983q.size(); i10++) {
                PanelsController panelsController2 = PanelsController.this;
                panelsController2.g0((PanelArea) panelsController2.f70983q.get(i10));
            }
        }
    }

    public class h implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                tc.h n10 = C15169a.n(0);
                if (n10.k()) {
                    return;
                }
                if (n10.k() || n10.q() || n10.t()) {
                    for (int i10 = 0; i10 < PanelsController.this.f70983q.size(); i10++) {
                        FloatingPanelArea floatingPanelArea = (FloatingPanelArea) PanelsController.this.f70983q.get(i10);
                        try {
                            if (floatingPanelArea.p1() >= 1.0f && floatingPanelArea.v1() && !floatingPanelArea.b0(n10)) {
                                floatingPanelArea.u0();
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            }
        }

        public h() {
        }

        @Override
        public void run() {
            N7.c.j0(new a());
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override
        public void run() {
            com.itsmagic.engine.Core.Components.ProjectController.a.p0();
            if (PanelsController.this.f70986t != null) {
                PanelsController.this.f70986t.u0();
            }
            if (PanelsController.this.f70982p != null) {
                PanelsController.this.f70982p.A();
            }
            for (int i10 = 0; i10 < PanelsController.this.f70983q.size(); i10++) {
                try {
                    ((FloatingPanelArea) PanelsController.this.f70983q.get(i10)).u0();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public static class j {

        public static final int[] f71007a;

        public static final int[] f71008b;

        static {
            int[] iArr = new int[c.a.values().length];
            f71008b = iArr;
            try {
                iArr[c.a.Portrait.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71008b[c.a.Landscape.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[c.g.values().length];
            f71007a = iArr2;
            try {
                iArr2[c.g.OutOfApp.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f71007a[c.g.Editor.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public class k implements InterfaceC13584e {

        public class a implements dd.d {

            public final InterfaceC13582c f71010a;

            public a(final InterfaceC13582c val$inflatePanelListener) {
                this.f71010a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71010a.a(new Panel(new H5.d()));
            }
        }

        public class b implements dd.d {

            public final InterfaceC13582c f71012a;

            public b(final InterfaceC13582c val$inflatePanelListener) {
                this.f71012a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71012a.a(new Panel(new J4.d()));
            }
        }

        public class c implements dd.d {

            public final InterfaceC13582c f71014a;

            public c(final InterfaceC13582c val$inflatePanelListener) {
                this.f71014a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71014a.a(new Panel(new com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a()));
            }
        }

        public class d implements dd.d {

            public final InterfaceC13582c f71016a;

            public d(final InterfaceC13582c val$inflatePanelListener) {
                this.f71016a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71016a.a(new Panel(new C15971b()));
            }
        }

        public class e implements dd.d {

            public final InterfaceC13582c f71018a;

            public e(final InterfaceC13582c val$inflatePanelListener) {
                this.f71018a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71018a.a(new Panel(new Z5.f()));
            }
        }

        public class f implements dd.d {

            public final String f71020a;

            public final InterfaceC13582c f71021b;

            public class a implements o8.h {
                public a() {
                }

                @Override
                public void a(ViewPanel component, Class classAddress, JavaMetaInfo javaMetaInfo) {
                    f.this.f71021b.a(new Panel(new JavaViewPanel(f.this.f71020a, component, classAddress)));
                }

                @Override
                public void onError(String error) {
                    Toast.makeText(N7.c.t(), error, 0).show();
                }
            }

            public f(final String val$tittle, final InterfaceC13582c val$inflatePanelListener) {
                this.f71020a = val$tittle;
                this.f71021b = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                d8.j.I0(this.f71020a, new a());
            }
        }

        public class g implements dd.d {

            public final InterfaceC13582c f71024a;

            public g(final InterfaceC13582c val$inflatePanelListener) {
                this.f71024a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71024a.a(new Panel(new Editor3DPanel()));
            }
        }

        public class h implements dd.d {

            public final InterfaceC13582c f71026a;

            public h(final InterfaceC13582c val$inflatePanelListener) {
                this.f71026a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71026a.a(new Panel(new ObjectsPanel()));
            }
        }

        public class i implements dd.d {

            public final InterfaceC13582c f71028a;

            public i(final InterfaceC13582c val$inflatePanelListener) {
                this.f71028a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71028a.a(new Panel(new FilesPanel()));
            }
        }

        public class j implements dd.d {

            public final InterfaceC13582c f71030a;

            public j(final InterfaceC13582c val$inflatePanelListener) {
                this.f71030a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71030a.a(new Panel(new C16261a()));
            }
        }

        public class C1087k implements dd.d {

            public final InterfaceC13582c f71032a;

            public C1087k(final InterfaceC13582c val$inflatePanelListener) {
                this.f71032a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71032a.a(new Panel(new A5.a()));
            }
        }

        public class l implements dd.d {

            public final InterfaceC13582c f71034a;

            public l(final InterfaceC13582c val$inflatePanelListener) {
                this.f71034a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71034a.a(new ScriptingHUB());
            }
        }

        public class m implements dd.d {

            public final InterfaceC13582c f71036a;

            public m(final InterfaceC13582c val$inflatePanelListener) {
                this.f71036a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71036a.a(new Panel(new ShaderGraphPanel()));
            }
        }

        public class n implements dd.d {

            public final InterfaceC13582c f71038a;

            public n(final InterfaceC13582c val$inflatePanelListener) {
                this.f71038a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71038a.a(new Panel(new NoCodePanel()));
            }
        }

        public class o implements dd.d {

            public final InterfaceC13582c f71040a;

            public o(final InterfaceC13582c val$inflatePanelListener) {
                this.f71040a = val$inflatePanelListener;
            }

            @Override
            public void onSelected(View view) {
                this.f71040a.a(new Panel(new p6.d()));
            }
        }

        public k() {
        }

        @Override
        public void a() {
            PanelsController.this.H0();
        }

        @Override
        public void b(PanelArea panelArea) {
            PanelsController.this.t0(panelArea);
        }

        @Override
        public boolean c(tc.h touch) {
            return PanelsController.this.W(touch);
        }

        @Override
        public List<C12908b> d(InterfaceC13582c inflatePanelListener) {
            List<d8.q> Q10;
            C12908b c12908b;
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.D3_EDITOR), new g(inflatePanelListener)));
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.OBJECTS), new h(inflatePanelListener)));
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.FILES), new i(inflatePanelListener)));
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.GAME), new j(inflatePanelListener)));
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.PROPERTIES), new C1087k(inflatePanelListener)));
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.CODING), new l(inflatePanelListener)));
            steppedArrayList.add(new C12908b("Material Graph", new m(inflatePanelListener)));
            steppedArrayList.add(new C12908b("NoCode Graph", new n(inflatePanelListener)));
            if (EditorSettings.a().enableProfilingToolsV2) {
                steppedArrayList.add(new C12908b(Lang.l(Lang.T.PROFILER), new o(inflatePanelListener)));
            }
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.ROTATE), new a(inflatePanelListener)));
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.TERMINAL), new b(inflatePanelListener)));
            steppedArrayList.add(new C12908b(com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.f71297z0, new c(inflatePanelListener)));
            steppedArrayList.add(new C12908b("Projects", new d(inflatePanelListener)));
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.STORE), new e(inflatePanelListener)));
            if (d8.j.f84393B && (Q10 = d8.j.Q()) != null && !Q10.isEmpty()) {
                for (int i10 = 0; i10 < Q10.size(); i10++) {
                    d8.q qVar = Q10.get(i10);
                    String[] split = qVar.f84450a.split("/");
                    String str = split[split.length - 1];
                    if (split.length >= 2) {
                        int length = split.length - 1;
                        String[] strArr = new String[length];
                        System.arraycopy(split, 0, strArr, 0, length);
                        c12908b = x(strArr, steppedArrayList);
                    } else {
                        c12908b = null;
                    }
                    (c12908b != null ? c12908b.f84530c : steppedArrayList).add(new C12908b(str + Tc.b.t(qVar.f84451b), new f(str, inflatePanelListener)));
                }
            }
            return steppedArrayList;
        }

        @Override
        public void e(Panel panel) {
            PanelsController.this.w0(panel);
        }

        @Override
        public void f(Object object) {
            PanelsController.this.s0(object);
        }

        @Override
        public boolean g() {
            return PanelsController.this.S();
        }

        @Override
        public boolean h() {
            return PanelsController.this.f70986t != null;
        }

        @Override
        public FloatingPanelArea i(int index) {
            return (FloatingPanelArea) PanelsController.this.f70983q.get(index);
        }

        @Override
        public void j() {
            m();
        }

        @Override
        public void k(Panel panel) {
            PanelsController.this.E0(panel);
        }

        @Override
        public void l(Object object) {
            PanelsController.this.u(object);
        }

        @Override
        public void m() {
            PanelsController.this.q0();
        }

        @Override
        public void n(PanelArea panelArea) {
            PanelsController.this.d0(panelArea);
        }

        @Override
        public void o(EditorPanel panel) {
            PanelsController.this.C0(panel);
        }

        @Override
        public void p(EditorPanel panel) {
            PanelsController.this.v0(panel);
        }

        @Override
        public int q() {
            return PanelsController.this.f70983q.size();
        }

        @Override
        public void r() {
            m();
        }

        @Override
        public void s(FloatingPanelArea floatingPanelArea) {
            PanelsController.this.t(floatingPanelArea);
        }

        @Override
        public boolean t(PanelArea panelArea) {
            return PanelsController.this.f70986t == panelArea;
        }

        @Override
        public void u(Panel panel) {
            PanelsController.this.D0(panel);
        }

        @Override
        public Panel v() {
            return PanelsController.this.f70975i;
        }

        @Override
        public Point w() {
            return PanelsController.this.f70976j;
        }

        public final C12908b x(String[] folders, List<C12908b> itemList) {
            C12908b c12908b = null;
            for (String str : folders) {
                boolean z10 = true;
                if (c12908b != null) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= c12908b.f84530c.size()) {
                            z10 = false;
                            break;
                        }
                        C12908b c12908b2 = c12908b.f84530c.get(i10);
                        String str2 = c12908b2.f84529b;
                        if (str2 != null && str2.equalsIgnoreCase(str)) {
                            c12908b = c12908b2;
                            break;
                        }
                        i10++;
                    }
                    if (!z10) {
                        C12908b c12908b3 = new C12908b(C12908b.EnumC1575b.Folder, str);
                        c12908b.f84530c.add(c12908b3);
                        c12908b = c12908b3;
                    }
                } else {
                    int i11 = 0;
                    while (true) {
                        if (i11 >= itemList.size()) {
                            z10 = false;
                            break;
                        }
                        C12908b c12908b4 = itemList.get(i11);
                        String str3 = c12908b4.f84529b;
                        if (str3 != null && str3.equalsIgnoreCase(str)) {
                            c12908b = c12908b4;
                            break;
                        }
                        i11++;
                    }
                    if (!z10) {
                        c12908b = new C12908b(C12908b.EnumC1575b.Folder, str);
                        itemList.add(c12908b);
                    }
                }
            }
            return c12908b;
        }
    }

    public class l implements k4.d {
        public l() {
        }

        @Override
        public EnumC13805a a() {
            return EnumC13805a.None;
        }

        @Override
        public EnumC13806b b() {
            return EnumC13806b.None;
        }

        @Override
        public void c(Area to) {
            if (to != null) {
                PanelsController.this.f70982p = to;
            } else {
                PanelsController.this.f70982p = null;
            }
        }

        @Override
        public void d() {
        }

        @Override
        public boolean isClosed() {
            return false;
        }

        @Override
        public void toggle() {
        }
    }

    public class m implements InterfaceC13936b {
        public m() {
        }

        @Override
        public EnumC13805a a() {
            return EnumC13805a.None;
        }

        @Override
        public EnumC13806b b() {
            return EnumC13806b.None;
        }

        @Override
        public SplitArea c() {
            return null;
        }

        @Override
        public void d() {
        }

        @Override
        public EnumC13806b e() {
            return EnumC13806b.None;
        }

        @Override
        public EnumC13805a f() {
            return EnumC13805a.None;
        }

        @Override
        public boolean isClosed() {
            return false;
        }

        @Override
        public void toggle() {
        }
    }

    public class n implements v3.i {
        public n() {
        }

        @Override
        public void a(c.g currentPage) {
            int i10 = j.f71007a[currentPage.ordinal()];
            if (i10 == 1) {
                PanelsController.this.i0();
            } else {
                if (i10 != 2) {
                    return;
                }
                PanelsController.this.l0();
            }
        }
    }

    public class o implements InterfaceC14482a {

        public final Object f71045a;

        public final EditorPanel f71046b;

        public o(final Object val$object, final EditorPanel val$editorPanel) {
            this.f71045a = val$object;
            this.f71046b = val$editorPanel;
        }

        @Override
        public void a() {
            PanelsController.this.s0(this.f71045a);
            this.f71046b.P0(this);
        }
    }

    public class p implements View.OnDragListener {

        public final FrameLayout f71048a;

        public final Activity f71049b;

        public final Context f71050c;

        public p(final FrameLayout val$screenArea, final Activity val$activity, final Context val$context) {
            this.f71048a = val$screenArea;
            this.f71049b = val$activity;
            this.f71050c = val$context;
        }

        @Override
        public boolean onDrag(View view, DragEvent dragEvent) {
            if (dragEvent.getAction() != 3) {
                return true;
            }
            PanelsController.this.f70976j.f32423x = (int) dragEvent.getX();
            PanelsController.this.f70976j.f32424y = (int) dragEvent.getY();
            PanelsController.this.f70976j.f32423x += N7.c.f15774a.p();
            PanelsController.this.f70976j.f32424y += N7.c.f15774a.l();
            if (PanelsController.this.f70982p != null) {
                PanelsController.this.f70982p.i(this.f71048a, this.f71049b, this.f71050c, PanelsController.this.f70967a, 0.0f, 0.0f, 1.0f, 1.0f, PanelsController.this.f70968b, PanelsController.this.f70977k);
            }
            PanelsController.this.f70975i = null;
            return true;
        }
    }

    public class q implements Runnable {

        public final o4.e f71052b;

        public class a implements Runnable {

            public class RunnableC1088a implements Runnable {
                public RunnableC1088a() {
                }

                @Override
                public void run() {
                    if (PanelsController.this.f70982p != null) {
                        PanelsController.this.f70982p.c(q.this.f71052b);
                    }
                    for (FloatingPanelArea floatingPanelArea : PanelsController.this.f70983q) {
                        floatingPanelArea.k(q.this.f71052b);
                        for (Panel panel : new SteppedArrayList(floatingPanelArea.panelList)) {
                            if (panel.M() != null && panel.M().r0()) {
                                panel.o0();
                            }
                        }
                    }
                    PanelsController.this.q0();
                    if (c8.b.k()) {
                        c8.b.h();
                    }
                }
            }

            public a() {
            }

            @Override
            public void run() {
                N7.c.c0(new RunnableC1088a());
            }
        }

        public q(final o4.e val$panelsBundle) {
            this.f71052b = val$panelsBundle;
        }

        @Override
        public void run() {
            if (PanelsController.this.f70982p != null) {
                PanelsController.this.f70982p.h(PanelsController.this.f70969c);
                PanelsController.this.f70982p = null;
            }
            PanelsController.this.f70991y = 0;
            PanelsController.this.a0(false);
            PanelsController.this.f70968b.f91407a = PanelsController.this.f70969c.getWidth();
            PanelsController.this.f70968b.f91408b = PanelsController.this.f70969c.getHeight();
            N7.c.c0(new a());
        }
    }

    public class r implements Runnable {

        public final boolean f71056b;

        public final c.a f71057c;

        public final Runnable f71058d;

        public class a implements Runnable {

            public class RunnableC1089a implements Runnable {

                public final Throwable f71061b;

                public RunnableC1089a(final Throwable val$e) {
                    this.f71061b = val$e;
                }

                @Override
                public void run() {
                    Z6.i.y1("Ops!", "Failed to save editor panels:" + this.f71061b.getMessage());
                }
            }

            public a() {
            }

            /* JADX WARN: Removed duplicated region for block: B:27:0x0105  */
            /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                Runnable runnable;
                if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
                    SaveData saveData = new SaveData();
                    saveData.totalArea = PanelsController.this.f70982p;
                    saveData.floatingPanels = new SteppedArrayList();
                    for (int i10 = 0; i10 < PanelsController.this.f70983q.size(); i10++) {
                        FloatingPanelArea floatingPanelArea = (FloatingPanelArea) PanelsController.this.f70983q.get(i10);
                        if (floatingPanelArea != null && floatingPanelArea.R()) {
                            saveData.floatingPanels.add(floatingPanelArea);
                        }
                    }
                    saveData.version = 0;
                    try {
                        String json = X7.a.m().toJson(saveData);
                        r rVar = r.this;
                        if (rVar.f71056b) {
                            int i11 = j.f71008b[rVar.f71057c.ordinal()];
                            if (i11 == 1) {
                                X7.a.j(W7.b.f27306f.f2458a.p() + "/editor_panels_portrait_area.config", json);
                            } else if (i11 == 2) {
                                X7.a.j(W7.b.f27306f.f2458a.p() + "/editor_panels_area.config", json);
                            }
                        } else {
                            int i12 = j.f71008b[rVar.f71057c.ordinal()];
                            if (i12 == 1) {
                                X7.a.j(W7.b.f27306f.f2458a.p() + "/editor_panels_portrait.config", json);
                            } else if (i12 == 2) {
                                X7.a.j(W7.b.f27306f.f2458a.p() + "/editor_panels.config", json);
                            }
                        }
                    } catch (Error e10) {
                        e = e10;
                        e.printStackTrace();
                        N7.c.j0(new RunnableC1089a(e));
                        runnable = r.this.f71058d;
                        if (runnable != null) {
                        }
                    } catch (Exception e11) {
                        e = e11;
                        e.printStackTrace();
                        N7.c.j0(new RunnableC1089a(e));
                        runnable = r.this.f71058d;
                        if (runnable != null) {
                        }
                    }
                    runnable = r.this.f71058d;
                    if (runnable != null) {
                        N7.c.j0(runnable);
                    }
                }
            }
        }

        public r(final boolean val$isAreaMode, final c.a val$orientation, final Runnable val$postRunnable) {
            this.f71056b = val$isAreaMode;
            this.f71057c = val$orientation;
            this.f71058d = val$postRunnable;
        }

        @Override
        public void run() {
            if (PanelsController.this.f70982p != null) {
                PanelsController.this.f70982p.t();
            }
            for (int i10 = 0; i10 < PanelsController.this.f70983q.size(); i10++) {
                try {
                    ((FloatingPanelArea) PanelsController.this.f70983q.get(i10)).n0();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            K8.a.I(new a());
        }
    }

    public static class s {

        public WeakReference<Object> f71063a;

        public s(Object vertex) {
            this.f71063a = null;
            this.f71063a = new WeakReference<>(vertex);
        }

        public Object a() {
            return this.f71063a.get();
        }

        public boolean b() {
            return this.f71063a.get() != null;
        }
    }

    public PanelsController() {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
        this.f70968b = new C13580a();
        this.f70970d = new Rect();
        this.f70971e = new Rect();
        this.f70975i = null;
        this.f70976j = new Point();
        this.f70977k = new k();
        this.f70978l = new l();
        this.f70979m = new m();
        EditorActivity.Q(new n());
        this.f70980n = new SteppedArrayList();
        this.f70981o = new SteppedArrayList();
        this.f70983q = new SteppedArrayList();
        this.f70984r = new SteppedArrayList();
        this.f70985s = new SteppedArrayList();
        this.f70986t = null;
        this.f70987u = new AtomicBoolean();
        this.f70989w = new o4.b();
        this.f70990x = new f();
        this.f70991y = 0;
        this.f70992z = new AtomicBoolean();
        this.f70966A = new AtomicBoolean();
    }

    public void A() {
        N7.c.j0(new i());
    }

    public void A0(c.a orientation, boolean isAreaMode, Runnable postRunnable) {
        N7.c.j0(new r(isAreaMode, orientation, postRunnable));
    }

    public boolean B(PanelArea panelArea) {
        return this.f70986t == panelArea;
    }

    public boolean B0(n4.f panelIntent) {
        Area area = this.f70982p;
        if (area != null && area.B(panelIntent)) {
            return true;
        }
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            if (this.f70983q.get(i10).w0(panelIntent)) {
                return true;
            }
        }
        if (C13581b.a(panelIntent, this)) {
            return true;
        }
        if (!(panelIntent instanceof C13583d) || c8.b.f34440i.get() || this.f70986t == null) {
            return false;
        }
        H0();
        return true;
    }

    public void C(Context oglContext) {
        p6.g L12 = (p6.d.E1() && p6.d.y1()) ? p6.d.L1("[E] panels update") : null;
        o4.b bVar = this.f70989w;
        bVar.f98475a = oglContext;
        bVar.f98476b = this.f70968b;
        Area area = this.f70982p;
        if (area != null) {
            if (this.f70986t != null) {
                area.p(bVar, this.f70977k);
                PanelArea panelArea = this.f70986t;
                if (panelArea != null) {
                    panelArea.D(this.f70989w, this.f70977k);
                }
            } else {
                area.j(bVar, this.f70977k);
            }
        }
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            try {
                this.f70983q.get(i10).D(this.f70989w, this.f70977k);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        p6.d.J1(L12);
    }

    public void C0(EditorPanel panel) {
        N7.c.h0();
        Area area = this.f70982p;
        if (area != null) {
            area.G(panel);
        }
    }

    public boolean D(EditorPanel editorPanel) {
        return H(editorPanel) != null;
    }

    public void D0(Panel panel) {
        N7.c.h0();
        Area area = this.f70982p;
        if (area != null) {
            area.H(panel);
        }
    }

    public final <T extends EditorPanel> T E(Area area, Class<T> cls) {
        if (area == null || cls == null || !(area instanceof SplitArea)) {
            return null;
        }
        SplitArea splitArea = (SplitArea) area;
        T t10 = (T) F(splitArea.panelArea, cls);
        if (t10 != null) {
            return t10;
        }
        T t11 = (T) E(splitArea.splitArea1, cls);
        return t11 != null ? t11 : (T) E(splitArea.splitArea2, cls);
    }

    public void E0(Panel panel) {
        N7.c.h0();
        this.f70975i = panel;
        Area area = this.f70982p;
        if (area != null) {
            area.d(this.f70969c, this.f70972f, this.f70973g, this.f70967a, 0.0f, 0.0f, 1.0f, 1.0f, this.f70968b, this.f70977k);
        }
        H0();
        View K10 = panel.K();
        if (K10 == null) {
            return;
        }
        K10.startDrag(ClipData.newPlainText("", ""), new E6.a(K10), K10, 0);
        K10.setVisibility(0);
        K10.setOnDragListener(new b());
    }

    public final <T extends EditorPanel> T F(PanelArea panelArea, Class<T> cls) {
        if (panelArea != null && cls != null) {
            for (int i10 = 0; i10 < panelArea.panelList.size(); i10++) {
                try {
                    Panel panel = panelArea.panelList.get(i10);
                    if (panel != null && panel.M() != null && cls.isInstance(panel.M())) {
                        return cls.cast(panel.M());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            for (int i11 = 0; i11 < panelArea.f70756w.size(); i11++) {
                Panel panel2 = panelArea.f70756w.get(i11);
                if (panel2 != null && panel2.M() != null && cls.isInstance(panel2.M())) {
                    return cls.cast(panel2.M());
                }
            }
        }
        return null;
    }

    public void F0(Object object) {
        if (object == null) {
            throw new NullPointerException("Object can't be null");
        }
        synchronized (this.f70980n) {
            for (int i10 = 0; i10 < this.f70980n.size(); i10++) {
                try {
                    s sVar = this.f70980n.get(i10);
                    if (sVar.b() && sVar.a() == object) {
                        s0(object);
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            u(object);
        }
    }

    public <T extends EditorPanel> T G(Class<T> cls) {
        T t10;
        if (cls == null) {
            return null;
        }
        try {
            t10 = (T) E(this.f70982p, cls);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (t10 != null) {
            return t10;
        }
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            T t11 = (T) F(this.f70983q.get(i10), cls);
            if (t11 != null) {
                return t11;
            }
        }
        return null;
    }

    public boolean G0(EditorPanel panel) {
        if (!T()) {
            e0(panel);
            return true;
        }
        if (B(H(panel))) {
            H0();
            return false;
        }
        e0(panel);
        return true;
    }

    public PanelArea H(EditorPanel editorPanel) {
        FloatingPanelArea floatingPanelArea;
        PanelArea k10;
        Area area = this.f70982p;
        if (area != null && (k10 = area.k(editorPanel)) != null) {
            return k10;
        }
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            try {
                floatingPanelArea = this.f70983q.get(i10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (floatingPanelArea.E(editorPanel) != null) {
                return floatingPanelArea;
            }
        }
        return null;
    }

    public void H0() {
        N7.c.j0(new c());
    }

    public final Panel I(Area area, Class<? extends Panel> cls) {
        if (area == null || cls == null || !(area instanceof SplitArea)) {
            return null;
        }
        SplitArea splitArea = (SplitArea) area;
        Panel J10 = J(splitArea.panelArea, cls);
        if (J10 != null) {
            return J10;
        }
        Panel I10 = I(splitArea.splitArea1, cls);
        return I10 != null ? I10 : I(splitArea.splitArea2, cls);
    }

    public final void I0() {
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            try {
                this.f70983q.get(i10).u0();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Area area = this.f70982p;
        if (area != null) {
            area.h(this.f70969c);
            this.f70982p = null;
        }
    }

    public final Panel J(PanelArea panelArea, Class<? extends Panel> cls) {
        if (panelArea != null && cls != null) {
            for (int i10 = 0; i10 < panelArea.panelList.size(); i10++) {
                try {
                    Panel panel = panelArea.panelList.get(i10);
                    if (panel != null && cls.isInstance(panel)) {
                        return panel;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            for (int i11 = 0; i11 < panelArea.f70756w.size(); i11++) {
                Panel panel2 = panelArea.f70756w.get(i11);
                if (panel2 != null && cls.isInstance(panel2)) {
                    return panel2;
                }
            }
        }
        return null;
    }

    public int J0(FrameLayout screenArea, Activity activity, Context context, int frameID) {
        boolean isEmpty;
        boolean z10;
        u6.e L12 = u6.l.E1() ? u6.l.L1("Panel appends") : null;
        synchronized (this.f70984r) {
            if (!this.f70984r.isEmpty()) {
                for (int i10 = 0; i10 < this.f70984r.size(); i10++) {
                    try {
                        this.f70983q.add(this.f70984r.get(i10));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                this.f70984r.clear();
            }
        }
        synchronized (this.f70985s) {
            if (!this.f70985s.isEmpty()) {
                for (int i11 = 0; i11 < this.f70985s.size(); i11++) {
                    try {
                        this.f70983q.remove(this.f70985s.get(i11));
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                this.f70985s.clear();
            }
        }
        u6.l.J1(L12);
        this.f70968b.f91407a = screenArea.getWidth();
        this.f70968b.f91408b = screenArea.getHeight();
        if (screenArea.getGlobalVisibleRect(this.f70971e)) {
            Rect rect = this.f70970d;
            Rect rect2 = this.f70971e;
            rect.left = rect2.left;
            rect.top = rect2.top;
            rect.right = rect2.right;
            rect.bottom = rect2.bottom;
        }
        try {
            Area area = this.f70982p;
            if (area != null && !area.l()) {
                this.f70982p.A();
            }
        } catch (Exception e12) {
            e12.printStackTrace();
            Area area2 = this.f70982p;
            if (area2 != null) {
                area2.A();
            }
        }
        if (X()) {
            Z();
        }
        synchronized (this.f70980n) {
            synchronized (this.f70981o) {
                for (int i12 = 0; i12 < this.f70980n.size(); i12++) {
                    try {
                        s sVar = this.f70980n.get(i12);
                        if (sVar.b()) {
                            Object a10 = sVar.a();
                            if ((a10 instanceof EditorPanel) && !D((EditorPanel) a10)) {
                                this.f70981o.add(sVar);
                            }
                        } else {
                            this.f70981o.add(sVar);
                        }
                    } finally {
                    }
                }
                this.f70980n.removeAll(this.f70981o);
                this.f70981o.clear();
            }
            isEmpty = this.f70980n.isEmpty();
            z10 = !isEmpty;
        }
        boolean z11 = (!isEmpty || (!X() && com.itsmagic.engine.Core.Components.ProjectController.a.d0())) ? z10 : true;
        this.f70987u.set(z11);
        u6.e L13 = u6.l.E1() ? u6.l.L1("Panels update") : null;
        if (this.f70986t != null) {
            Area area3 = this.f70982p;
            if (area3 != null) {
                area3.q();
            }
            PanelArea panelArea = this.f70986t;
            panelArea.f70757x = 0.0f;
            panelArea.f70758y = 0.0f;
            panelArea.width = 1.0f;
            panelArea.height = 1.0f;
            panelArea.U0(screenArea, activity, context, this.f70967a, this.f70968b, this.f70977k, this.f70979m, true);
            if (N7.c.G() != null) {
                if (C15169a.q() || z11) {
                    N7.c.G().setVisibility(8);
                    this.f70986t.T();
                } else {
                    N7.c.G().setVisibility(0);
                    this.f70986t.L0();
                }
            }
            if (!this.f70986t.R()) {
                d0(null);
            }
        } else {
            if (N7.c.G() != null) {
                if (z11) {
                    N7.c.G().setVisibility(8);
                } else {
                    N7.c.G().setVisibility(0);
                }
            }
            Area area4 = this.f70982p;
            if (area4 != null) {
                area4.L(screenArea, activity, context, this.f70967a, 0.0f, 0.0f, 1.0f, 1.0f, this.f70968b, this.f70977k, this.f70978l, 0, this.f70974h);
            }
        }
        u6.l.J1(L13);
        u6.e L14 = u6.l.E1() ? u6.l.L1("Floating update") : null;
        for (int i13 = 0; i13 < this.f70983q.size(); i13++) {
            try {
                FloatingPanelArea floatingPanelArea = this.f70983q.get(i13);
                if (floatingPanelArea != this.f70986t) {
                    floatingPanelArea.R1(screenArea, activity, context, this.f70967a, this.f70968b, this.f70977k);
                }
            } catch (Exception e13) {
                e13.printStackTrace();
            }
        }
        u6.l.J1(L14);
        this.f70974h = false;
        return 0;
    }

    public Panel K(Class<? extends Panel> cls) {
        Panel I10;
        if (cls == null) {
            return null;
        }
        try {
            I10 = I(this.f70982p, cls);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (I10 != null) {
            return I10;
        }
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            Panel J10 = J(this.f70983q.get(i10), cls);
            if (J10 != null) {
                return J10;
            }
        }
        return null;
    }

    public FloatingPanelArea L(Class cls) {
        if (cls == null) {
            return null;
        }
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            try {
                FloatingPanelArea floatingPanelArea = this.f70983q.get(i10);
                if (floatingPanelArea != null) {
                    for (int i11 = 0; i11 < floatingPanelArea.panelList.size(); i11++) {
                        Panel panel = floatingPanelArea.panelList.get(i11);
                        if (panel != null && panel.M() != null && cls.isInstance(panel.M())) {
                            return floatingPanelArea;
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public int M() {
        return this.f70983q.size();
    }

    public C13580a N() {
        return this.f70968b;
    }

    public FloatingPanelArea O(int x10) {
        return this.f70983q.get(x10);
    }

    public FrameLayout P() {
        return this.f70969c;
    }

    public Rect Q() {
        return this.f70970d;
    }

    public boolean R() {
        return !this.f70983q.isEmpty();
    }

    public boolean S() {
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            try {
                FloatingPanelArea floatingPanelArea = this.f70983q.get(i10);
                if (floatingPanelArea.f70736c >= 1.0f && floatingPanelArea.f70737d >= 1.0f) {
                    return true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public boolean T() {
        return this.f70986t != null;
    }

    public void U(FrameLayout screenArea, Activity activity, Context context) {
        this.f70969c = screenArea;
        this.f70972f = activity;
        this.f70973g = context;
        screenArea.setOnDragListener(new p(screenArea, activity, context));
        this.f70967a = LayoutInflater.from(context);
        this.f70968b.f91407a = screenArea.getWidth();
        this.f70968b.f91408b = screenArea.getHeight();
        Z();
        Area area = this.f70982p;
        if (area != null) {
            area.L(screenArea, activity, context, this.f70967a, 0.0f, 0.0f, 1.0f, 1.0f, this.f70968b, this.f70977k, this.f70978l, 0, true);
        }
    }

    public boolean V() {
        return this.f70987u.get();
    }

    public boolean W(tc.h touch) {
        if (touch == null) {
            throw new IllegalArgumentException("Touch can't be null");
        }
        if (this.f70983q != null) {
            for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
                FloatingPanelArea floatingPanelArea = this.f70983q.get(i10);
                if (floatingPanelArea != null && ((floatingPanelArea.u1() && !floatingPanelArea.b0(touch)) || floatingPanelArea.b0(touch) || floatingPanelArea.e0(touch))) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean X() {
        boolean z10 = false;
        if (this.f70982p != null || !this.f70984r.isEmpty()) {
            return false;
        }
        int i10 = 0;
        loop0: while (true) {
            if (i10 >= this.f70983q.size()) {
                break;
            }
            FloatingPanelArea floatingPanelArea = this.f70983q.get(i10);
            if (floatingPanelArea.R() && floatingPanelArea.panelList != null) {
                for (int i11 = 0; i11 < floatingPanelArea.panelList.size(); i11++) {
                    if (!(floatingPanelArea.panelList.get(i11).M() instanceof C13190a)) {
                        z10 = true;
                        break loop0;
                    }
                }
            }
            i10++;
        }
        return !z10;
    }

    public void Y(EditorPanel editorPanel) {
        N7.c.h0();
        Area area = this.f70982p;
        if (area == null || !area.n(editorPanel)) {
            for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
                try {
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (this.f70983q.get(i10).s0(editorPanel)) {
                    break;
                }
            }
        }
        this.f70977k.j();
    }

    public final void Z() {
        a0(true);
    }

    public final void a0(boolean removeViews) {
        N7.c.h0();
        FrameLayout frameLayout = this.f70969c;
        if (frameLayout != null) {
            if (removeViews) {
                frameLayout.removeAllViews();
            }
            if (!com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
                J5.a.q1();
                return;
            }
            if (W7.b.f27314n.get()) {
                return;
            }
            this.f70986t = null;
            this.f70982p = null;
            if (this.f70991y <= 0) {
                World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
                boolean z10 = world != null && world.isArea;
                String str = "";
                if (z10) {
                    int i10 = j.f71008b[K8.c.f11004e.ordinal()];
                    if (i10 == 1) {
                        str = X7.a.y(W7.b.f27306f.f2458a.p() + "/editor_panels_portrait_area.config");
                    } else if (i10 == 2) {
                        str = X7.a.y(W7.b.f27306f.f2458a.p() + "/editor_panels_area.config");
                    }
                } else {
                    int i11 = j.f71008b[K8.c.f11004e.ordinal()];
                    if (i11 == 1) {
                        str = X7.a.y(W7.b.f27306f.f2458a.p() + "/editor_panels_portrait.config");
                    } else if (i11 == 2) {
                        str = X7.a.y(W7.b.f27306f.f2458a.p() + "/editor_panels.config");
                    }
                }
                if (str != null && !str.isEmpty()) {
                    try {
                        SaveData a10 = SaveData.a(str);
                        if (a10 != null) {
                            Area area = a10.totalArea;
                            this.f70982p = area;
                            this.f70988v = z10;
                            if (area != null && !area.l()) {
                                this.f70982p = null;
                            }
                            List<FloatingPanelArea> list = a10.floatingPanels;
                            if (list != null) {
                                this.f70984r.addAll(list);
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        this.f70982p = null;
                    }
                }
                this.f70991y++;
            }
            if (this.f70982p == null) {
                this.f70982p = C14331a.a(K8.c.f11004e);
            }
            if (this.f70982p == null) {
                b0();
            }
            this.f70982p.J();
            this.f70974h = true;
            q0();
        }
    }

    public final void b0() {
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        boolean z10 = world != null && world.isArea;
        if (z10) {
            int i10 = j.f71008b[K8.c.f11004e.ordinal()];
            if (i10 == 1) {
                EnumC13806b enumC13806b = EnumC13806b.Vertical;
                this.f70982p = new SplitArea(0.7f, enumC13806b, new SplitArea(0.6f, enumC13806b, new SplitArea(new PanelArea().g(new Editor3DPanel()).g(new C16261a()).h(new ScriptingHUB()).g(new ShaderGraphPanel())), new SplitArea(0.5f, EnumC13806b.Horizontal, new SplitArea(new PanelArea().g(new ObjectsPanel())), new SplitArea(new PanelArea().g(new A5.a())))), new SplitArea(new PanelArea().g(new FilesPanel()).g(new Z5.f()).g(new J4.d())));
            } else if (i10 == 2) {
                EnumC13806b enumC13806b2 = EnumC13806b.Horizontal;
                this.f70982p = new SplitArea(0.7f, enumC13806b2, new SplitArea(0.35f, enumC13806b2, new SplitArea(new PanelArea().g(new ObjectsPanel())), new SplitArea(new PanelArea().g(new Editor3DPanel()))), new SplitArea(new PanelArea().g(new A5.a()).g(new FilesPanel()).g(new Z5.f())));
            }
        } else {
            int i11 = j.f71008b[K8.c.f11004e.ordinal()];
            if (i11 == 1) {
                EnumC13806b enumC13806b3 = EnumC13806b.Vertical;
                this.f70982p = new SplitArea(0.7f, enumC13806b3, new SplitArea(0.6f, enumC13806b3, new SplitArea(new PanelArea().g(new Editor3DPanel()).g(new C16261a()).h(new ScriptingHUB()).g(new ShaderGraphPanel()).g(new NoCodePanel()).g(new TerrainStudioPanel())), new SplitArea(0.5f, EnumC13806b.Horizontal, new SplitArea(new PanelArea().g(new ObjectsPanel()).g(new TerrainToolsPanel())), new SplitArea(new PanelArea().g(new A5.a())))), new SplitArea(new PanelArea().g(new FilesPanel()).g(new Z5.f()).g(new J4.d())));
            } else if (i11 == 2) {
                EnumC13806b enumC13806b4 = EnumC13806b.Horizontal;
                this.f70982p = new SplitArea(0.7f, enumC13806b4, new SplitArea(0.65f, EnumC13806b.Vertical, new SplitArea(0.35f, enumC13806b4, new SplitArea(new PanelArea().g(new ObjectsPanel()).g(new TerrainToolsPanel())), new SplitArea(new PanelArea().g(new Editor3DPanel()).g(new C16261a()).h(new ScriptingHUB()).g(new ShaderGraphPanel()).g(new NoCodePanel()).g(new TerrainStudioPanel()))), new SplitArea(new PanelArea().g(new J4.d()).g(new com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a()))).p0(EnumC13805a.CloseDown), new SplitArea(new PanelArea().g(new A5.a()).g(new FilesPanel()).g(new Z5.f())));
            }
        }
        this.f70988v = z10;
    }

    public void c0() {
        Area area = this.f70982p;
        if (area != null) {
            try {
                area.o();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            try {
                FloatingPanelArea floatingPanelArea = this.f70983q.get(i10);
                if (floatingPanelArea != null) {
                    floatingPanelArea.h0();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void d0(PanelArea panelArea) {
        N7.c.j0(new e(panelArea));
    }

    public void e0(EditorPanel panel) {
        N7.c.j0(new d(panel));
    }

    public final void f0(Area area) {
        if (area != null && (area instanceof SplitArea)) {
            SplitArea splitArea = (SplitArea) area;
            splitArea.w();
            PanelArea panelArea = splitArea.panelArea;
            if (panelArea != null) {
                g0(panelArea);
            }
            Area area2 = splitArea.splitArea1;
            if (area2 != null) {
                f0(area2);
            }
            Area area3 = splitArea.splitArea2;
            if (area3 != null) {
                f0(area3);
            }
        }
    }

    public final void g0(PanelArea panelArea) {
        if (panelArea == null) {
            return;
        }
        panelArea.q0();
        if (panelArea.panelList != null) {
            for (int i10 = 0; i10 < panelArea.panelList.size(); i10++) {
                Panel panel = panelArea.panelList.get(i10);
                if (panel != null) {
                    panel.m0();
                }
            }
        }
        if (panelArea.f70756w != null) {
            for (int i11 = 0; i11 < panelArea.f70756w.size(); i11++) {
                Panel panel2 = panelArea.f70756w.get(i11);
                if (panel2 != null) {
                    panel2.m0();
                }
            }
        }
    }

    public void h0(c.a oldOrientation) {
        if (this.f70969c != null) {
            N7.c.e();
            y();
            o4.e eVar = new o4.e();
            Area area = this.f70982p;
            if (area != null) {
                area.e(eVar);
            }
            Iterator<FloatingPanelArea> it = this.f70983q.iterator();
            while (it.hasNext()) {
                it.next().n(eVar);
            }
            A0(oldOrientation, this.f70988v, new q(eVar));
        }
    }

    public void i0() {
        Area area = this.f70982p;
        if (area != null) {
            area.s();
        }
        try {
            List<FloatingPanelArea> list = this.f70983q;
            if (list != null) {
                for (FloatingPanelArea floatingPanelArea : list) {
                    if (floatingPanelArea != null) {
                        floatingPanelArea.m0();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void j0() {
        y0();
    }

    public void k0() {
        if (X()) {
            Z();
        }
        Area area = this.f70982p;
        if (area != null) {
            area.u();
        }
        if (this.f70983q.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            this.f70983q.get(i10).o0();
        }
    }

    public void l0() {
        Area area = this.f70982p;
        if (area != null) {
            area.v();
        }
        try {
            List<FloatingPanelArea> list = this.f70983q;
            if (list != null) {
                for (FloatingPanelArea floatingPanelArea : list) {
                    if (floatingPanelArea != null) {
                        floatingPanelArea.p0();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void m0() {
    }

    public void n0() {
        N7.c.j0(new g());
    }

    public void o0(World world) {
        if (this.f70988v) {
            if (world == null || world.isArea) {
                return;
            }
            I0();
            return;
        }
        if (world == null || !world.isArea) {
            return;
        }
        I0();
    }

    public void p0() {
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            View M10 = this.f70983q.get(i10).M();
            if (M10 != null) {
                w(M10);
            }
        }
    }

    public void q0() {
        Area area = this.f70982p;
        if (area != null) {
            area.x(this.f70990x);
        }
        PanelArea panelArea = this.f70986t;
        if (panelArea != null) {
            x(panelArea);
        }
        p0();
    }

    public void r0() {
        I0();
        this.f70991y = 999;
    }

    public void s0(Object object) {
        if (object == null) {
            throw new NullPointerException("Object can't be null");
        }
        synchronized (this.f70980n) {
            synchronized (this.f70981o) {
                int i10 = 0;
                while (true) {
                    try {
                        if (i10 >= this.f70980n.size()) {
                            break;
                        }
                        s sVar = this.f70980n.get(i10);
                        if (sVar.b() && sVar.a() == object) {
                            this.f70981o.add(sVar);
                            break;
                        }
                        i10++;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public void t(FloatingPanelArea floatingPanelArea) {
        N7.c.h0();
        synchronized (this.f70984r) {
            this.f70984r.add(floatingPanelArea);
        }
        this.f70977k.r();
    }

    public void t0(PanelArea panelArea) {
        FloatingPanelArea floatingPanelArea;
        N7.c.h0();
        Area area = this.f70982p;
        if (area == null || !area.y(panelArea)) {
            for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
                try {
                    floatingPanelArea = this.f70983q.get(i10);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (floatingPanelArea == panelArea) {
                    floatingPanelArea.A(this.f70969c);
                    synchronized (this.f70985s) {
                        this.f70985s.add(floatingPanelArea);
                    }
                    break;
                }
                continue;
            }
        } else {
            this.f70982p.f(this.f70969c);
            this.f70982p = null;
        }
        this.f70977k.j();
    }

    public void u(Object object) {
        if (object == null) {
            throw new NullPointerException("Object can't be null");
        }
        synchronized (this.f70980n) {
            for (int i10 = 0; i10 < this.f70980n.size(); i10++) {
                try {
                    s sVar = this.f70980n.get(i10);
                    if (sVar.b() && sVar.a() == object) {
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (object instanceof EditorPanel) {
                EditorPanel editorPanel = (EditorPanel) object;
                editorPanel.b(new o(object, editorPanel));
            }
            this.f70980n.add(new s(object));
        }
    }

    public void u0(EditorPanel editorPanel) {
        N7.c.h0();
        Area area = this.f70982p;
        if (area == null || !area.z(editorPanel)) {
            for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
                try {
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (this.f70983q.get(i10).s0(editorPanel)) {
                    break;
                }
            }
        }
        this.f70977k.j();
    }

    public void v(Panel panel) {
        Area area = this.f70982p;
        if (area != null) {
            area.b(panel);
        }
    }

    public void v0(EditorPanel panel) {
        N7.c.h0();
        Area area = this.f70982p;
        if (area != null) {
            area.G(panel);
        }
    }

    public void w(View v10) {
        if (v10 != null) {
            this.f70969c.bringChildToFront(v10);
        }
    }

    public void w0(Panel panel) {
        N7.c.h0();
        Area area = this.f70982p;
        if (area != null) {
            area.H(panel);
        }
    }

    public void x(PanelArea panelArea) {
        View M10 = panelArea.M();
        if (M10 != null) {
            w(M10);
        }
    }

    public boolean x0() {
        boolean z10 = true;
        for (int i10 = 0; i10 < this.f70983q.size(); i10++) {
            FloatingPanelArea floatingPanelArea = this.f70983q.get(i10);
            if (floatingPanelArea.y1()) {
                floatingPanelArea.u0();
                z10 = false;
            }
        }
        return z10;
    }

    public void y() {
        synchronized (this.f70980n) {
            synchronized (this.f70981o) {
                this.f70981o.addAll(this.f70980n);
            }
        }
    }

    public void y0() {
        z0(K8.c.f11004e, this.f70988v);
    }

    public void z() {
        K8.a.B(new h());
    }

    public void z0(c.a orientation, boolean isAreaMode) {
        A0(orientation, isAreaMode, null);
    }
}
