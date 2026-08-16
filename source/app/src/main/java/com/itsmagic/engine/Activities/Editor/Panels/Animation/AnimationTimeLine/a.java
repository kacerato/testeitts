package com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine;

import C5.b;
import JAVARuntime.Runnable;
import M7.c;
import Z6.c;
import Z6.f;
import a8.C3589a;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import b8.InterfaceC3851a;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.ATLTimelineCanvasView;
import com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a;
import com.itsmagic.engine.Engines.Engine.Animation.AnimationData;
import com.itsmagic.engine.Engines.Engine.Animation.Frame;
import com.itsmagic.engine.Engines.Engine.Animation.Timeline;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationEntry;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.tonyodev.fetch2core.server.FileRequest;
import dd.C12908b;
import gb.C13317e;
import ic.z1;
import java.lang.constant.ConstantDescs;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import r4.C15147a;
import u4.C15575a;
import v4.C15803b;
import v4.InterfaceC15804c;

public class a extends EditorPanel {

    public static final Class f71293A0 = a.class;

    public static final Ac.b f71294B0;

    public static final Ac.b f71295C0;

    public static final List<InterfaceC15804c> f71296D0;

    public static final String f71297z0 = "AnimationTimeLine";

    public ATLTimelineCanvasView f71298X;

    public LinearLayout f71299Y;

    public final List<C15803b> f71300Z;

    public RecyclerView f71301a0;

    public F7.l<z> f71302b0;

    public Timeline f71303c0;

    public Frame f71304d0;

    public com.itsmagic.engine.Engines.Engine.Animation.d f71305e0;

    public GameObject f71306f0;

    public AnimationPlayer f71307g0;

    public final float f71308h0;

    public float f71309i0;

    public LinearLayout f71310j0;

    public M7.p f71311k0;

    public int f71312l0;

    public M7.e f71313m0;

    public M7.c f71314n0;

    public E5.g f71315o0;

    public View f71316p0;

    public C5.b f71317q0;

    public E5.g f71318r0;

    public View f71319s0;

    public C5.b f71320t0;

    public L8.e f71321u0;

    public List<M7.g> f71322v0;

    public int f71323w0;

    public final InterfaceC15804c f71324x0;

    public M7.h f71325y0;

    public class C1110a implements M7.d {
        public C1110a() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            C15575a.a();
        }
    }

    public class b implements M7.f {

        public class C1111a implements dd.d {

            public class C1112a implements w5.l {

                public class C1113a implements Runnable {

                    public final String f71330b;

                    public class RunnableC1114a implements Runnable {

                        public final AnimationEntry f71332b;

                        public class RunnableC1115a implements Runnable {
                            public RunnableC1115a() {
                            }

                            @Override
                            public void run() {
                                if (a.this.f71307g0 != null) {
                                    AnimationEntry animationEntry = RunnableC1114a.this.f71332b;
                                    if (animationEntry.f72960c != null) {
                                        C15575a.d(animationEntry.b(), a.this.f71307g0);
                                    }
                                }
                            }
                        }

                        public RunnableC1114a(final AnimationEntry val$entry) {
                            this.f71332b = val$entry;
                        }

                        @Override
                        public void run() {
                            N7.c.j0(new RunnableC1115a());
                        }
                    }

                    public class RunnableC1116b implements Runnable {

                        public final AnimationPlayer f71335b;

                        public final AnimationEntry f71336c;

                        public class RunnableC1117a implements Runnable {
                            public RunnableC1117a() {
                            }

                            @Override
                            public void run() {
                                RunnableC1116b runnableC1116b = RunnableC1116b.this;
                                if (runnableC1116b.f71335b != null) {
                                    AnimationEntry animationEntry = runnableC1116b.f71336c;
                                    if (animationEntry.f72960c != null) {
                                        C15575a.d(animationEntry.b(), RunnableC1116b.this.f71335b);
                                    }
                                }
                            }
                        }

                        public RunnableC1116b(final AnimationPlayer val$finalAp, final AnimationEntry val$entry) {
                            this.f71335b = val$finalAp;
                            this.f71336c = val$entry;
                        }

                        @Override
                        public void run() {
                            N7.c.j0(new RunnableC1117a());
                        }
                    }

                    public C1113a(final String val$path) {
                        this.f71330b = val$path;
                    }

                    @Override
                    public void run() {
                        if (a.this.f71307g0 != null) {
                            AnimationEntry animationEntry = new AnimationEntry(this.f71330b);
                            a.this.f71307g0.getEntriesList().add(animationEntry);
                            K8.a.h(5, new RunnableC1114a(animationEntry));
                            return;
                        }
                        C3589a c3589a = W7.b.f27309i;
                        AnimationPlayer animationPlayer = (AnimationPlayer) c3589a.f31909a.f31910a.d0(AnimationPlayer.class);
                        if (animationPlayer == null) {
                            animationPlayer = new AnimationPlayer();
                            c3589a.f31909a.f31910a.r(animationPlayer);
                        }
                        AnimationEntry animationEntry2 = new AnimationEntry(this.f71330b);
                        animationPlayer.getEntriesList().add(animationEntry2);
                        K8.a.h(5, new RunnableC1116b(animationPlayer, animationEntry2));
                    }
                }

                public C1112a() {
                }

                @Override
                public void a() {
                }

                @Override
                public void c(String inProjectPath) {
                    K8.a.I(new C1113a(Tc.b.o(inProjectPath)));
                }
            }

            public C1111a() {
            }

            @Override
            public void onSelected(View v10) {
                GameObject gameObject = a.this.f71307g0 != null ? a.this.f71307g0.f79250n : W7.b.f27309i.f31909a.f31910a;
                if (gameObject == null) {
                    return;
                }
                w5.c.d(N7.c.t(), Tc.b.o(Lb.k.j() + "/Animations/" + gameObject.getName().replace("/", ConstantDescs.DEFAULT_NAME) + "/"), new C1112a());
            }
        }

        public class C1118b implements dd.d {

            public final AnimationEntry f71339a;

            public C1118b(final AnimationEntry val$entry) {
                this.f71339a = val$entry;
            }

            @Override
            public void onSelected(View v10) {
                com.itsmagic.engine.Engines.Engine.Animation.d dVar;
                if (a.this.f71307g0 == null || (dVar = this.f71339a.f72960c) == null) {
                    return;
                }
                C15575a.d(dVar, a.this.f71307g0);
            }
        }

        public class c implements dd.d {

            public final AnimationEntry f71341a;

            public final AnimationPlayer f71342b;

            public c(final AnimationEntry val$entry, final AnimationPlayer val$ap) {
                this.f71341a = val$entry;
                this.f71342b = val$ap;
            }

            @Override
            public void onSelected(View v10) {
                com.itsmagic.engine.Engines.Engine.Animation.d dVar = this.f71341a.f72960c;
                if (dVar != null) {
                    C15575a.d(dVar, this.f71342b);
                }
            }
        }

        public b() {
        }

        @Override
        public void a(View v10, Context context, M7.e tbButton) {
            AnimationPlayer animationPlayer;
            String str;
            String str2;
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.CREATE_NEW_ANIMATION), new C1111a()));
            if (a.this.f71307g0 != null) {
                List<AnimationEntry> entriesList = a.this.f71307g0.getEntriesList();
                for (int i10 = 0; i10 < entriesList.size(); i10++) {
                    AnimationEntry animationEntry = entriesList.get(i10);
                    String str3 = "Animation " + i10;
                    if (animationEntry != null && (str2 = animationEntry.file) != null) {
                        str3 = Tc.b.w(str2, true);
                    }
                    steppedArrayList.add(new C12908b(str3, new C1118b(animationEntry)));
                }
            } else {
                GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
                if (gameObject != null && (animationPlayer = (AnimationPlayer) gameObject.d0(AnimationPlayer.class)) != null) {
                    List<AnimationEntry> entriesList2 = animationPlayer.getEntriesList();
                    for (int i11 = 0; i11 < entriesList2.size(); i11++) {
                        AnimationEntry animationEntry2 = entriesList2.get(i11);
                        String str4 = "Animation " + i11;
                        if (animationEntry2 != null && (str = animationEntry2.file) != null) {
                            str4 = Tc.b.w(str, true);
                        }
                        steppedArrayList.add(new C12908b(str4, new c(animationEntry2, animationPlayer)));
                    }
                }
            }
            if (steppedArrayList.isEmpty()) {
                steppedArrayList.add(new C12908b("No animations", false));
            }
            Y6.a.F1(v10, C15147a.e.Below, steppedArrayList);
        }
    }

    public class c implements M7.d {
        public c() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (a.this.f71305e0 != null) {
                a.this.Z1();
            }
        }
    }

    public class d implements M7.r {
        public d() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (!value || a.this.f71305e0 == null) {
                return;
            }
            a.this.f71305e0.playInLoop();
            a.this.f71305e0.setSpeed(-1.0f);
            if (a.this.f71305e0 != null) {
                a.this.f71305e0.f72608g = a.this.f71323w0;
            }
            a.this.b3();
            InterfaceC3851a interfaceC3851a = W7.b.f27308h.f32998b;
            if (interfaceC3851a != null) {
                interfaceC3851a.b(a.this.f71306f0, a.this.f71305e0, a.this.f71307g0);
            }
        }
    }

    public class e implements M7.r {
        public e() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (!value || a.this.f71305e0 == null) {
                return;
            }
            a.this.f71305e0.stop();
            a.this.f71305e0.setSpeed(1.0f);
            if (a.this.f71305e0 != null) {
                a.this.f71305e0.f72608g = a.this.f71323w0;
            }
            a.this.c3();
            InterfaceC3851a interfaceC3851a = W7.b.f27308h.f32998b;
            if (interfaceC3851a != null) {
                interfaceC3851a.b(a.this.f71306f0, a.this.f71305e0, a.this.f71307g0);
            }
        }
    }

    public class f implements M7.r {
        public f() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (!value || a.this.f71305e0 == null) {
                return;
            }
            a.this.f71305e0.playInLoop();
            a.this.f71305e0.setSpeed(1.0f);
            if (a.this.f71305e0 != null) {
                a.this.f71305e0.f72608g = a.this.f71323w0;
            }
            a.this.a3();
            InterfaceC3851a interfaceC3851a = W7.b.f27308h.f32998b;
            if (interfaceC3851a != null) {
                interfaceC3851a.b(a.this.f71306f0, a.this.f71305e0, a.this.f71307g0);
            }
        }
    }

    public class g implements M7.d {

        public class RunnableC1119a implements Runnable {

            public final Frame f71349b;

            public RunnableC1119a(final Frame val$frame) {
                this.f71349b = val$frame;
            }

            @Override
            public void run() {
                a.this.N2(this.f71349b.i());
            }
        }

        public g() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (a.this.f71305e0 == null || a.this.f71303c0 == null) {
                return;
            }
            a aVar = a.this;
            Frame r22 = aVar.r2(aVar.f71323w0, false);
            if (r22 == null || r22.i() <= 0) {
                return;
            }
            r22.x(r22.i() - 1);
            a.this.f71305e0.h().m();
            a.W2();
            a.this.f71298X.post(new RunnableC1119a(r22));
        }
    }

    public class h implements M7.d {

        public class RunnableC1120a implements Runnable {

            public final Frame f71352b;

            public RunnableC1120a(final Frame val$frame) {
                this.f71352b = val$frame;
            }

            @Override
            public void run() {
                a.this.N2(this.f71352b.i());
            }
        }

        public h() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (a.this.f71305e0 == null || a.this.f71303c0 == null) {
                return;
            }
            a aVar = a.this;
            Frame r22 = aVar.r2(aVar.f71323w0, false);
            if (r22 != null) {
                r22.x(r22.i() + 1);
                a.this.f71305e0.h().m();
                a.W2();
                a.this.f71298X.post(new RunnableC1120a(r22));
            }
        }
    }

    public class i implements M7.d {

        public class C1121a extends c.h {
            public C1121a() {
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                if (a.this.f71305e0 == null || a.this.f71303c0 == null) {
                    return;
                }
                a aVar = a.this;
                Frame r22 = aVar.r2(aVar.f71323w0, false);
                if (r22 != null) {
                    a.this.f71303c0.f().remove(r22);
                    a.this.f71305e0.h().m();
                    a.W2();
                }
            }
        }

        public i() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            Z6.c.z1("Attention!", "Are you sure want to delete selected keyframe?", new C1121a());
        }
    }

    public class j implements M7.d {

        public class C1122a implements f.g {

            public final Frame f71357a;

            public final Context f71358b;

            public C1122a(final Frame val$frame, final Context val$context) {
                this.f71357a = val$frame;
                this.f71358b = val$context;
            }

            @Override
            public void c(String text) {
                int x12 = Nc.b.x1(text, -1);
                if (x12 <= -1) {
                    Toast.makeText(this.f71358b, "Invalid keyframe Time", 0).show();
                    return;
                }
                this.f71357a.x(x12);
                a.this.f71305e0.h().m();
                a.W2();
                a.this.N2(this.f71357a.i());
            }

            @Override
            public void onCancel() {
            }
        }

        public j() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (a.this.f71305e0 == null || a.this.f71303c0 == null) {
                return;
            }
            a aVar = a.this;
            Frame r22 = aVar.r2(aVar.f71323w0, false);
            if (r22 == null) {
                return;
            }
            Z6.f.x1("Change keyframe time", "" + r22.i(), new C1122a(r22, context));
        }
    }

    public class k extends EditorPanel.j {
        @Override
        public Class b() {
            return a.f71293A0;
        }

        @Override
        public String c() {
            return a.f71297z0;
        }
    }

    public class l implements ATLTimelineCanvasView.c {

        public class RunnableC1123a implements Runnable {

            public final int f71361b;

            public RunnableC1123a(final int val$frame) {
                this.f71361b = val$frame;
            }

            @Override
            public void run() {
                a.this.f71305e0.k(a.this.f71306f0, this.f71361b, a.this.f71321u0);
            }
        }

        public l() {
        }

        @Override
        public void a(int frame) {
            a.this.f71323w0 = frame;
            if (a.this.f71305e0 != null && C13317e.J(a.this.f71306f0)) {
                K8.a.I(new RunnableC1123a(frame));
                a.this.f71305e0.f72608g = a.this.f71323w0;
            }
            a aVar = a.this;
            aVar.f71304d0 = aVar.q2(aVar.f71323w0);
            if (a.this.f71315o0 != null) {
                a.this.f71315o0.h();
            }
            a aVar2 = a.this;
            aVar2.G2(aVar2.f71304d0);
        }

        @Override
        public void b(C15803b keyFrame) {
            a.this.f3(keyFrame);
        }
    }

    public class m extends SteppedArrayList<C12908b> {

        public final C15803b f71363b;

        public class C1124a implements dd.d {

            public class C1125a implements f.g {
                public C1125a() {
                }

                @Override
                public void c(String text) {
                    int x12 = Nc.b.x1(text, -1);
                    if (x12 <= -1) {
                        Toast.makeText(a.this.M(), "Invalid keyframe Time", 0).show();
                        return;
                    }
                    m.this.f71363b.f121231b.x(x12);
                    AnimationData animationData = m.this.f71363b.f121233d;
                    if (animationData != null) {
                        animationData.m();
                    }
                    a.W2();
                    a.this.N2(x12);
                }

                @Override
                public void onCancel() {
                }
            }

            public C1124a() {
            }

            @Override
            public void onSelected(View v10) {
                Z6.f.x1("Change keyframe time", "" + m.this.f71363b.f121231b.i(), new C1125a());
            }
        }

        public class b implements dd.d {

            public class C1126a implements f.g {
                public C1126a() {
                }

                @Override
                public void c(String text) {
                    int x12 = Nc.b.x1(text, -1);
                    if (x12 <= -1) {
                        Toast.makeText(a.this.M(), "Invalid keyframe Time", 0).show();
                        return;
                    }
                    Frame frame = m.this.f71363b.f121231b;
                    frame.x(frame.i() + x12);
                    AnimationData animationData = m.this.f71363b.f121233d;
                    if (animationData != null) {
                        animationData.m();
                    }
                    a.W2();
                }

                @Override
                public void onCancel() {
                }
            }

            public b() {
            }

            @Override
            public void onSelected(View v10) {
                Z6.f.x1("Move forward step quantity", "3", new C1126a());
            }
        }

        public class c implements dd.d {

            public class C1127a implements f.g {
                public C1127a() {
                }

                @Override
                public void c(String text) {
                    int x12 = Nc.b.x1(text, -1);
                    if (x12 <= -1) {
                        Toast.makeText(a.this.M(), "Invalid keyframe Time", 0).show();
                        return;
                    }
                    Frame frame = m.this.f71363b.f121231b;
                    frame.x(frame.i() - x12);
                    AnimationData animationData = m.this.f71363b.f121233d;
                    if (animationData != null) {
                        animationData.m();
                    }
                    a.W2();
                }

                @Override
                public void onCancel() {
                }
            }

            public c() {
            }

            @Override
            public void onSelected(View v10) {
                Z6.f.x1("Move back step quantity", "3", new C1127a());
            }
        }

        public class d implements dd.d {

            public class C1128a extends c.h {
                public C1128a() {
                }

                @Override
                public void a(c.g dialog) {
                    Timeline timeline = m.this.f71363b.f121232c;
                    if (timeline != null) {
                        timeline.f().remove(m.this.f71363b.f121231b);
                        AnimationData animationData = m.this.f71363b.f121233d;
                        if (animationData != null) {
                            animationData.m();
                        }
                        a.W2();
                    }
                }
            }

            public d() {
            }

            @Override
            public void onSelected(View v10) {
                Z6.c.z1("Delete!", "Delete this keyframe?", new C1128a());
            }
        }

        public m(final C15803b val$keyFrame) {
            this.f71363b = val$keyFrame;
            add(new C12908b("Change time", new C1124a()));
            add(new C12908b("Move forward", new b()));
            add(new C12908b("Move back", new c()));
            add(new C12908b("Delete keyframe", new d()));
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override
        public void run() {
            a.this.f71305e0.k(a.this.f71306f0, a.this.f71323w0, a.this.f71321u0);
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override
        public void run() {
            if (a.this.f71298X == null) {
                return;
            }
            a.this.f71298X.setObjects(a.this.f71300Z);
            if (a.this.f71305e0 != null) {
                a.this.f71298X.setFramesPerSecond(a.this.f71305e0.h().fps);
            } else {
                a.this.f71298X.setFramesPerSecond(30);
            }
            a.this.V2();
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override
        public void run() {
            a.this.f71302b0.C(a.this.b2());
            if (a.this.f71302b0.k() == 0) {
                a.this.f71303c0 = null;
                a.this.f71304d0 = null;
                a.this.f71300Z.clear();
                a.this.d3();
                return;
            }
            if (a.this.f71303c0 != null) {
                for (int i10 = 0; i10 < a.this.f71302b0.k(); i10++) {
                    z zVar = (z) a.this.f71302b0.j(i10);
                    if (zVar != null && zVar.f71405n == a.this.f71303c0) {
                        a.this.f71302b0.D(zVar);
                        a.this.Z1();
                        return;
                    }
                }
            }
            for (int i11 = 0; i11 < a.this.f71302b0.k(); i11++) {
                z zVar2 = (z) a.this.f71302b0.j(i11);
                if (zVar2 != null && zVar2.f71405n != null) {
                    a.this.f71302b0.D(zVar2);
                    a.this.f71303c0 = zVar2.f71405n;
                    a.this.Z1();
                    return;
                }
            }
        }
    }

    public static class q {

        public static final int[] f71376a;

        static {
            int[] iArr = new int[com.itsmagic.engine.Engines.Engine.Animation.c.values().length];
            f71376a = iArr;
            try {
                iArr[com.itsmagic.engine.Engines.Engine.Animation.c.VEC3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.QUAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC2I.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.UVEC2I.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.COLOR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.INT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.SQUARE5I.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.IMAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f71376a[com.itsmagic.engine.Engines.Engine.Animation.c.EVENTS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public class r implements InterfaceC15804c {
        public r() {
        }

        @Override
        public Frame a() {
            a aVar = a.this;
            return aVar.a2(aVar.f71323w0);
        }

        @Override
        public GameObject b() {
            return a.this.f71306f0;
        }

        @Override
        public void c(final GameObject o10) {
            if (a.this.A() != null) {
                a.this.A().runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        a.r.this.s(o10);
                    }
                });
            }
        }

        @Override
        public void d() {
            a.this.e2();
        }

        @Override
        public void e(final GameObject o10) {
            if (a.this.A() != null) {
                a.this.A().runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        a.r.this.t(o10);
                    }
                });
            }
        }

        @Override
        public Frame f(int frameTime) {
            return a.this.a2(frameTime);
        }

        @Override
        public void g(final GameObject o10) {
            if (a.this.A() != null) {
                a.this.A().runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        a.r.this.r(o10);
                    }
                });
            }
        }

        @Override
        public a getInstance() {
            return a.this;
        }

        @Override
        public void h(final com.itsmagic.engine.Engines.Engine.Animation.d animation, final AnimationPlayer animationPlayer, final GameObject animationObject) {
            if (a.this.A() != null) {
                a.this.A().runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        a.r.this.q(animation, animationPlayer, animationObject);
                    }
                });
            }
        }

        @Override
        public void i() {
            if (a.this.f71305e0 != null) {
                a.this.Z1();
            }
        }

        @Override
        public Frame j() {
            a aVar = a.this;
            return aVar.r2(aVar.f71323w0, false);
        }

        @Override
        public com.itsmagic.engine.Engines.Engine.Animation.d k() {
            return a.this.f71305e0;
        }

        @Override
        public AnimationPlayer l() {
            return a.this.f71307g0;
        }

        public final void q(com.itsmagic.engine.Engines.Engine.Animation.d dVar, AnimationPlayer animationPlayer, GameObject gameObject) {
            a.this.Q2(dVar, animationPlayer, gameObject);
        }

        public final void r(GameObject gameObject) {
            if (a.i2() != null) {
                if (!a.this.M2(gameObject)) {
                    Toast.makeText(a.this.A(), "Invalid object, please select an object in the same hierarchy than the AnimationPlayer object.", 0).show();
                } else {
                    if (a.l3(gameObject, gameObject.transform.Z0())) {
                        return;
                    }
                    Toast.makeText(a.this.A(), "Failed to store position keyframe.", 0).show();
                }
            }
        }

        public final void s(GameObject gameObject) {
            if (a.i2() != null) {
                if (!a.this.M2(gameObject)) {
                    Toast.makeText(a.this.A(), "Invalid object, please select an object in the same hierarchy than the AnimationPlayer object.", 0).show();
                } else {
                    if (a.n3(gameObject, gameObject.transform.i0())) {
                        return;
                    }
                    Toast.makeText(a.this.A(), "Failed to store rotation keyframe.", 0).show();
                }
            }
        }

        public final void t(GameObject gameObject) {
            if (a.i2() != null) {
                if (!a.this.M2(gameObject)) {
                    Toast.makeText(a.this.A(), "Invalid object, please select an object in the same hierarchy than the AnimationPlayer object.", 0).show();
                } else {
                    if (a.p3(gameObject, gameObject.transform.j0())) {
                        return;
                    }
                    Toast.makeText(a.this.A(), "Failed to store scale keyframe.", 0).show();
                }
            }
        }
    }

    public class s implements F7.k<z> {

        public class C1129a implements dd.d {

            public final z f71379a;

            public C1129a(final z val$element) {
                this.f71379a = val$element;
            }

            @Override
            public void onSelected(View view) {
                a.this.V1(this.f71379a.f71406o);
            }
        }

        public class b implements dd.d {

            public final z f71381a;

            public b(final z val$element) {
                this.f71381a = val$element;
            }

            @Override
            public void onSelected(View view) {
                a.this.f71305e0.h().l().remove(this.f71381a.f71405n);
                if (a.this.f71303c0 == this.f71381a.f71405n) {
                    a.this.f71303c0 = null;
                    a.this.f71304d0 = null;
                }
                a.this.X2();
            }
        }

        public class c implements dd.d {

            public final z f71383a;

            public c(final z val$element) {
                this.f71383a = val$element;
            }

            public final void a(z element) {
                if (element.f71405n != null) {
                    a.this.f71305e0.h().l().remove(element.f71405n);
                    if (a.this.f71303c0 == element.f71405n) {
                        a.this.f71303c0 = null;
                        a.this.f71304d0 = null;
                    }
                }
                for (int i10 = 0; i10 < element.f71404m.size(); i10++) {
                    a((z) element.f71404m.get(i10));
                }
            }

            @Override
            public void onSelected(View view) {
                a(this.f71383a);
                a.this.X2();
            }
        }

        public s() {
        }

        @Override
        public void a() {
        }

        @Override
        public List<z> c() {
            return a.this.b2();
        }

        @Override
        public List<z> f(z element) {
            return a.this.O2(element);
        }

        @Override
        public void b(z element, View v10) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            if (element != null && element.f71406o != null && a.this.f71305e0 != null) {
                steppedArrayList.add(new C12908b("Add event timeline", new C1129a(element)));
            }
            if (element != null && element.f71405n != null && a.this.f71305e0 != null) {
                steppedArrayList.add(new C12908b("Delete property", new b(element)));
            }
            if (element.f71404m != null && !element.f71404m.isEmpty()) {
                steppedArrayList.add(new C12908b("Delete all", new c(element)));
            }
            if (steppedArrayList.isEmpty()) {
                return;
            }
            Y6.a.F1(v10, C15147a.e.Left, steppedArrayList);
        }

        @Override
        public void d(z element, boolean open) {
        }

        @Override
        public void e(z element) {
            if (element == null || element.f71405n == null) {
                a.this.f71303c0 = null;
                a.this.f71304d0 = null;
                a.this.B2();
            } else {
                a.this.f71303c0 = element.f71405n;
                a.this.f71304d0 = null;
                a.this.Z1();
            }
        }
    }

    public class t implements D5.h {

        public final boolean f71385a;

        public final Frame[] f71386b;

        public final Frame f71387c;

        public t(final boolean val$eventsTimeline, final Frame[] val$tempFrame, final Frame val$frame) {
            this.f71385a = val$eventsTimeline;
            this.f71386b = val$tempFrame;
            this.f71387c = val$frame;
        }

        @Override
        public Variable get() {
            if (this.f71385a) {
                Frame frame = this.f71387c;
                if (frame == null) {
                    frame = this.f71386b[0];
                }
                return new Variable("", (frame == null || frame.g() == null) ? "" : frame.g());
            }
            Frame frame2 = this.f71387c;
            if (frame2 == null || frame2.g() == null) {
                return new Variable("", "");
            }
            return new Variable("", this.f71387c.g() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            if (!this.f71385a) {
                Frame frame = this.f71387c;
                if (frame != null) {
                    frame.v(variable.str_value);
                    return;
                }
                return;
            }
            String str = variable.str_value;
            String trim = str != null ? str.trim() : "";
            a aVar = a.this;
            Frame s22 = aVar.s2(aVar.f71303c0, a.this.f71323w0, false);
            if (trim.isEmpty()) {
                if (s22 != null) {
                    a.this.f71303c0.f().remove(s22);
                    if (a.this.f71305e0 != null) {
                        a.this.f71305e0.h().m();
                    } else {
                        a.this.f71303c0.p();
                    }
                }
                a.this.f71304d0 = null;
                a.this.Z1();
                a.this.G2(null);
                return;
            }
            if (s22 == null) {
                a aVar2 = a.this;
                s22 = aVar2.s2(aVar2.f71303c0, a.this.f71323w0, true);
                if (s22 != null && this.f71386b[0] != null && s22.f() != null) {
                    s22.f().E(this.f71386b[0].f());
                    s22.t(this.f71386b[0].d());
                }
            }
            if (s22 != null) {
                s22.v(trim);
                a.this.f71304d0 = s22;
                if (a.this.f71305e0 != null) {
                    a.this.f71305e0.h().m();
                } else {
                    a.this.f71303c0.p();
                }
                a.this.Z1();
                a.this.G2(s22);
            }
        }
    }

    public class u implements D5.h {

        public final boolean f71389a;

        public final Frame f71390b;

        public final Frame[] f71391c;

        public u(final boolean val$eventsTimeline, final Frame val$frame, final Frame[] val$tempFrame) {
            this.f71389a = val$eventsTimeline;
            this.f71390b = val$frame;
            this.f71391c = val$tempFrame;
        }

        @Override
        public Variable get() {
            if (this.f71390b != null) {
                return new Variable("", this.f71390b.d() + "");
            }
            if (!this.f71389a || this.f71391c[0] == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f71391c[0].d() + "");
        }

        @Override
        public void set(Variable variable) {
            Frame frame;
            if (variable == null) {
                return;
            }
            if (this.f71389a && this.f71390b == null && (frame = this.f71391c[0]) != null) {
                frame.t(variable.float_value);
                return;
            }
            Frame frame2 = this.f71390b;
            if (frame2 != null) {
                frame2.t(variable.float_value);
            }
        }
    }

    public class v implements D5.h {

        public final Frame f71393a;

        public v(final Frame val$frame) {
            this.f71393a = val$frame;
        }

        @Override
        public Variable get() {
            Frame frame = this.f71393a;
            if (frame == null || frame.g() == null) {
                return new Variable("", "false");
            }
            return new Variable("", this.f71393a.r() + "");
        }

        @Override
        public void set(Variable variable) {
            Frame frame;
            if (variable == null || (frame = this.f71393a) == null) {
                return;
            }
            frame.A(variable.booolean_value.booleanValue());
        }
    }

    public class w implements C5.n {

        public final List f71395a;

        public final LinearLayout f71396b;

        public w(final List val$entries, final LinearLayout val$content) {
            this.f71395a = val$entries;
            this.f71396b = val$content;
        }

        @Override
        public void refresh(int position) {
            a.this.e3(this.f71395a, this.f71396b);
        }
    }

    public class x implements D5.h {
        public x() {
        }

        @Override
        public Variable get() {
            return new Variable("", a.this.f71323w0 + "");
        }

        @Override
        public void set(Variable variable) {
            if (a.this.f71305e0 != null) {
                a.this.N2(variable.int_value);
            }
        }
    }

    public class y implements D5.h {
        public y() {
        }

        @Override
        public Variable get() {
            return new Variable("", (a.this.f71305e0 != null ? a.this.f71305e0.h().fps : 0) + "");
        }

        @Override
        public void set(Variable variable) {
            if (a.this.f71305e0 != null) {
                int max = Math.max(1, variable.int_value);
                a.this.f71305e0.h().fps = max;
                if (a.this.f71298X != null) {
                    a.this.f71298X.setFramesPerSecond(max);
                }
                a.this.d3();
            }
        }
    }

    public static class z extends F7.i {

        public static final F7.j f71400r = new C1130a();

        public static final F7.j f71401s = new b();

        public static final F7.j f71402t = new c();

        public static final F7.j f71403u = new d();

        public final List<z> f71404m;

        public Timeline f71405n;

        public GameObject f71406o;

        public int f71407p;

        public int f71408q;

        public class C1130a implements F7.j {
            @Override
            public void a(Context context, ImageView imageView, ImageView subIconImageView, F7.i eElement) {
                imageView.setVisibility(8);
            }
        }

        public class b implements F7.j {
            @Override
            public void a(Context context, ImageView imageView, ImageView subIconImageView, F7.i eElement) {
                if (eElement instanceof z) {
                    z zVar = (z) eElement;
                    if (zVar.f71407p > 0) {
                        imageView.setVisibility(0);
                        imageView.setImageResource(zVar.f71407p);
                        return;
                    }
                }
                imageView.setVisibility(8);
            }
        }

        public class c implements F7.j {
            @Override
            public void a(Context context, ImageView imageView, ImageView subIconImageView, F7.i eElement) {
                imageView.setVisibility(0);
                imageView.setImageResource(R.drawable.wo_multi);
            }
        }

        public class d implements F7.j {
            @Override
            public void a(Context context, ImageView imageView, ImageView subIconImageView, F7.i eElement) {
                if (eElement instanceof z) {
                    z zVar = (z) eElement;
                    if (zVar.f71408q > 0) {
                        imageView.setVisibility(0);
                        imageView.setImageResource(zVar.f71408q);
                        return;
                    }
                }
                imageView.setVisibility(8);
            }
        }

        public z(String displayName) {
            super(displayName, f71400r);
            this.f71404m = new SteppedArrayList();
        }

        public static z A(GameObject object) {
            z zVar = new z(object != null ? object.getName() : "Object");
            zVar.f71406o = object;
            zVar.s(f71402t);
            return zVar;
        }

        public static z B(String entryName, Timeline timeline) {
            z zVar = new z(Tc.b.d(entryName));
            zVar.f71405n = timeline;
            if (timeline != null && timeline.j() != null) {
                switch (q.f71376a[timeline.j().ordinal()]) {
                    case 1:
                    case 3:
                    case 4:
                    case 5:
                        zVar.f71408q = R.drawable.letter_v;
                        break;
                    case 2:
                        zVar.f71408q = R.drawable.letter_q;
                        break;
                    case 6:
                        zVar.f71408q = R.drawable.letter_c;
                        break;
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        zVar.f71408q = R.drawable.letter_p_v2;
                        break;
                    case 11:
                        zVar.f71408q = R.drawable.letter_e;
                        break;
                }
            }
            zVar.s(f71403u);
            return zVar;
        }

        public static z z(String name, int iconRes) {
            z zVar = new z(name);
            zVar.f71407p = iconRes;
            zVar.s(f71401s);
            return zVar;
        }

        @Override
        public String g() {
            return this.f6679a;
        }
    }

    static {
        EditorPanel.a(new k());
        f71294B0 = Theme.T.PANEL_TOPBAR;
        f71295C0 = Theme.T.PRIMARY_DARK;
        f71296D0 = Collections.synchronizedList(new LinkedList());
    }

    public a(K8.a engine) {
        super(engine);
        this.f71300Z = new SteppedArrayList();
        this.f71308h0 = 0.016666668f;
        this.f71309i0 = 0.016666668f;
        this.f71312l0 = Nc.b.k0(8.0f);
        this.f71322v0 = new SteppedArrayList();
        this.f71324x0 = new r();
        super.c1(false);
    }

    public static boolean A2(GameObject object, String entryName) {
        a m22 = m2();
        return (m22 == null || m22.h2(object, com.itsmagic.engine.Engines.Engine.Animation.a.f72593a, entryName) == null) ? false : true;
    }

    public static void P2(com.itsmagic.engine.Engines.Engine.Animation.d animation, AnimationPlayer animationPlayer, GameObject animationObject) {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC15804c interfaceC15804c = list2.get(i10);
            if (interfaceC15804c != null) {
                interfaceC15804c.h(animation, animationPlayer, animationObject);
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
                list = f71296D0;
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

    public static void S2(GameObject o10) {
    }

    public static void T2(GameObject o10) {
    }

    public static void U2(GameObject o10) {
    }

    public static void W2() {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC15804c interfaceC15804c = list2.get(i10);
            if (interfaceC15804c != null) {
                interfaceC15804c.i();
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
                list = f71296D0;
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

    public static Frame X1() {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 < list2.size()) {
                InterfaceC15804c interfaceC15804c = list2.get(i10);
                if (interfaceC15804c != null) {
                    return interfaceC15804c.a();
                }
                i10++;
                z10 = true;
            } else {
                if (!z10) {
                    return null;
                }
                while (true) {
                    int i11 = 0;
                    while (true) {
                        list = f71296D0;
                        if (i11 >= list.size()) {
                            return null;
                        }
                        if (list.get(i11) == null) {
                            break;
                        }
                        i11++;
                    }
                    list.remove(i11);
                }
            }
        }
    }

    public static Frame Y1(int frameTime) {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 < list2.size()) {
                InterfaceC15804c interfaceC15804c = list2.get(i10);
                if (interfaceC15804c != null) {
                    return interfaceC15804c.f(frameTime);
                }
                i10++;
                z10 = true;
            } else {
                if (!z10) {
                    return null;
                }
                while (true) {
                    int i11 = 0;
                    while (true) {
                        list = f71296D0;
                        if (i11 >= list.size()) {
                            return null;
                        }
                        if (list.get(i11) == null) {
                            break;
                        }
                        i11++;
                    }
                    list.remove(i11);
                }
            }
        }
    }

    public static void d2() {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 >= list2.size()) {
                break;
            }
            InterfaceC15804c interfaceC15804c = list2.get(i10);
            if (interfaceC15804c != null) {
                interfaceC15804c.d();
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
                list = f71296D0;
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

    public void e3(List<C5.b> entries, LinearLayout content) {
        if (content != null) {
            try {
                content.removeAllViews();
                if (entries != null) {
                    for (int i10 = 0; i10 < entries.size(); i10++) {
                        C5.b bVar = entries.get(i10);
                        b.a aVar = bVar.f2079n;
                        if (aVar == b.a.Vector) {
                            C5.h.y(content, this.f70908j, bVar, 0, M());
                        } else if (aVar == b.a.Component) {
                            C5.h.w(content, this.f70908j, bVar, 0, M(), new w(entries, content));
                        } else {
                            C5.h.x(content, this.f70908j, bVar, 0, true, M());
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static boolean g3(Ac.b objectUID, Ac.b componentUID, String entryName, com.itsmagic.engine.Engines.Engine.Animation.c type, Object value) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.i3(objectUID, componentUID, entryName, type, value);
    }

    public static boolean h3(GameObject object, Component component, String entryName, com.itsmagic.engine.Engines.Engine.Animation.c type, Object value) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.j3(object, component, entryName, type, value);
    }

    public static com.itsmagic.engine.Engines.Engine.Animation.d i2() {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 < list2.size()) {
                InterfaceC15804c interfaceC15804c = list2.get(i10);
                if (interfaceC15804c != null) {
                    return interfaceC15804c.k();
                }
                i10++;
                z10 = true;
            } else {
                if (!z10) {
                    return null;
                }
                while (true) {
                    int i11 = 0;
                    while (true) {
                        list = f71296D0;
                        if (i11 >= list.size()) {
                            return null;
                        }
                        if (list.get(i11) == null) {
                            break;
                        }
                        i11++;
                    }
                    list.remove(i11);
                }
            }
        }
    }

    public static GameObject j2() {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 < list2.size()) {
                InterfaceC15804c interfaceC15804c = list2.get(i10);
                if (interfaceC15804c != null) {
                    return interfaceC15804c.b();
                }
                i10++;
                z10 = true;
            } else {
                if (!z10) {
                    return null;
                }
                while (true) {
                    int i11 = 0;
                    while (true) {
                        list = f71296D0;
                        if (i11 >= list.size()) {
                            return null;
                        }
                        if (list.get(i11) == null) {
                            break;
                        }
                        i11++;
                    }
                    list.remove(i11);
                }
            }
        }
    }

    public static AnimationPlayer k2() {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 < list2.size()) {
                InterfaceC15804c interfaceC15804c = list2.get(i10);
                if (interfaceC15804c != null) {
                    return interfaceC15804c.l();
                }
                i10++;
                z10 = true;
            } else {
                if (!z10) {
                    return null;
                }
                while (true) {
                    int i11 = 0;
                    while (true) {
                        list = f71296D0;
                        if (i11 >= list.size()) {
                            return null;
                        }
                        if (list.get(i11) == null) {
                            break;
                        }
                        i11++;
                    }
                    list.remove(i11);
                }
            }
        }
    }

    public static boolean k3(Ac.b objectUID, Vector3 position) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.q3(objectUID, com.itsmagic.engine.Engines.Engine.Animation.a.f72594b, com.itsmagic.engine.Engines.Engine.Animation.c.VEC3, position);
    }

    public static Frame l2() {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 < list2.size()) {
                InterfaceC15804c interfaceC15804c = list2.get(i10);
                if (interfaceC15804c != null) {
                    return interfaceC15804c.j();
                }
                i10++;
                z10 = true;
            } else {
                if (!z10) {
                    return null;
                }
                while (true) {
                    int i11 = 0;
                    while (true) {
                        list = f71296D0;
                        if (i11 >= list.size()) {
                            return null;
                        }
                        if (list.get(i11) == null) {
                            break;
                        }
                        i11++;
                    }
                    list.remove(i11);
                }
            }
        }
    }

    public static boolean l3(GameObject object, Vector3 position) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.r3(object, com.itsmagic.engine.Engines.Engine.Animation.a.f72594b, com.itsmagic.engine.Engines.Engine.Animation.c.VEC3, position);
    }

    public static a m2() {
        List<InterfaceC15804c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<InterfaceC15804c> list2 = f71296D0;
            if (i10 < list2.size()) {
                InterfaceC15804c interfaceC15804c = list2.get(i10);
                if (interfaceC15804c != null) {
                    return interfaceC15804c.getInstance();
                }
                i10++;
                z10 = true;
            } else {
                if (!z10) {
                    return null;
                }
                while (true) {
                    int i11 = 0;
                    while (true) {
                        list = f71296D0;
                        if (i11 >= list.size()) {
                            return null;
                        }
                        if (list.get(i11) == null) {
                            break;
                        }
                        i11++;
                    }
                    list.remove(i11);
                }
            }
        }
    }

    public static boolean m3(Ac.b objectUID, Quaternion rotation) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.q3(objectUID, com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, com.itsmagic.engine.Engines.Engine.Animation.c.QUAT, rotation);
    }

    public static boolean n3(GameObject object, Quaternion rotation) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.r3(object, com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, com.itsmagic.engine.Engines.Engine.Animation.c.QUAT, rotation);
    }

    public static boolean o3(Ac.b objectUID, Vector3 scale) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.q3(objectUID, "s", com.itsmagic.engine.Engines.Engine.Animation.c.VEC3, scale);
    }

    public static int p2() {
        a m22 = m2();
        if (m22 == null) {
            return 0;
        }
        return m22.f71323w0;
    }

    public static boolean p3(GameObject object, Vector3 scale) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.r3(object, "s", com.itsmagic.engine.Engines.Engine.Animation.c.VEC3, scale);
    }

    public static boolean u2(Ac.b objectUID, Ac.b componentUID, String entryName) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.w2(objectUID, componentUID, entryName, m22.f71323w0);
    }

    public static boolean v2(Ac.b objectUID, Ac.b componentUID, String entryName) {
        a m22 = m2();
        return (m22 == null || m22.g2(objectUID, componentUID, entryName) == null) ? false : true;
    }

    public static boolean y2(Ac.b objectUID, Ac.b componentUID, String entryName) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.w2(objectUID, componentUID, entryName, m22.f71323w0);
    }

    public static boolean z2(GameObject object, String entryName) {
        a m22 = m2();
        if (m22 == null) {
            return false;
        }
        return m22.x2(object, com.itsmagic.engine.Engines.Engine.Animation.a.f72593a, entryName, m22.f71323w0);
    }

    @Override
    public void B0() {
    }

    public void B2() {
        this.f71300Z.clear();
        d3();
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.animation_time_line_panel, (ViewGroup) null);
        this.f71298X = (ATLTimelineCanvasView) inflate.findViewById(R.id.recycler);
        this.f71301a0 = (RecyclerView) inflate.findViewById(R.id.leftPanelRecycler);
        this.f71299Y = (LinearLayout) inflate.findViewById(R.id.optionsContent);
        this.f71323w0 = 0;
        F2(inflate);
        E2(inflate);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.toolbar);
        this.f71310j0 = linearLayout;
        this.f71325y0 = new M7.h(linearLayout, M());
        H2();
        s3();
        f71296D0.add(this.f71324x0);
        D2();
        RecyclerView recyclerView = this.f71301a0;
        if (recyclerView != null) {
            this.f71302b0 = new F7.l<>(recyclerView, new s());
            X2();
        }
        return inflate;
    }

    public final void C2(GameObject object, Set<GameObject> objectsToInclude) {
        while (object != null) {
            objectsToInclude.add(object);
            if (object == this.f71306f0) {
                return;
            } else {
                object = object.f79294k;
            }
        }
    }

    public final void D2() {
        ATLTimelineCanvasView aTLTimelineCanvasView = this.f71298X;
        if (aTLTimelineCanvasView == null) {
            return;
        }
        aTLTimelineCanvasView.setInteractionListener(new l());
        this.f71298X.setPinSize(this.f71312l0);
        this.f71298X.setFramesPerSecond(30);
    }

    @Override
    public void E0() {
    }

    public final void E2(View v10) {
        this.f71319s0 = v10.findViewById(R.id.fpsEntry);
        this.f71320t0 = new C5.b(new y(), "", b.a.SLInt);
        E5.g gVar = new E5.g();
        this.f71318r0 = gVar;
        gVar.d(this.f71320t0, this.f71319s0, null);
    }

    public final void F2(View v10) {
        this.f71316p0 = v10.findViewById(R.id.frameIndex);
        this.f71317q0 = new C5.b(new x(), "", b.a.SLInt);
        E5.g gVar = new E5.g();
        this.f71315o0 = gVar;
        gVar.d(this.f71317q0, this.f71316p0, null);
    }

    @Override
    public void G0() {
        this.f71298X = null;
        this.f71302b0 = null;
        f71296D0.remove(this.f71324x0);
    }

    public final void G2(Frame frame) {
        Frame frame2;
        this.f71299Y.removeAllViews();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        boolean I22 = I2(this.f71303c0);
        Frame[] frameArr = new Frame[1];
        if (frame == null && I22) {
            frame2 = new Frame();
            frameArr[0] = frame2;
        } else {
            frame2 = frame;
        }
        if (frame2 != null) {
            steppedArrayList.add(J9.c.b("Easing", frame2.f(), M()));
            steppedArrayList.add(new C5.b(new t(I22, frameArr, frame), "Event", b.a.SLString));
            steppedArrayList.add(new C5.b(new u(I22, frame, frameArr), "Event arg", b.a.SLFloat));
            steppedArrayList.add(new C5.b(new v(frame), "Interpolate event", b.a.SLBoolean));
        }
        e3(steppedArrayList, this.f71299Y);
    }

    public final void H2() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        C1110a c1110a = new C1110a();
        c.b bVar = c.b.Disconnected;
        M7.c cVar = new M7.c(R.drawable.backward, c1110a, bVar, M());
        Ac.b bVar2 = f71294B0;
        M7.c U10 = cVar.U(bVar2);
        Ac.b bVar3 = f71295C0;
        M7.c Y10 = U10.M(bVar3).m0((int) M().getResources().getDimension(R.dimen.view3d_button_width)).Y((int) M().getResources().getDimension(R.dimen.view3d_button_height));
        this.f71314n0 = Y10;
        steppedArrayList.add(Y10);
        this.f71314n0.g();
        M7.e b02 = new M7.e(R.drawable.small_circle, "", new b(), M()).T(bVar2).M(bVar3).b0(new ColorINT(Theme.i(Theme.T.HIGH_ICON_TINT)));
        this.f71313m0 = b02;
        steppedArrayList.add(b02);
        steppedArrayList.add(new M7.c(R.drawable.refresh_btn, new c(), bVar, M()).U(bVar2).M(bVar3).m0((int) M().getResources().getDimension(R.dimen.view3d_button_width)).Y((int) M().getResources().getDimension(R.dimen.view3d_button_height)));
        d dVar = new d();
        c.b bVar4 = c.b.Left;
        M7.o oVar = new M7.o(R.drawable.play_reversed_btn, dVar, bVar4, M());
        oVar.N0(bVar2).B0(bVar3).m0((int) M().getResources().getDimension(R.dimen.view3d_button_width)).Y((int) M().getResources().getDimension(R.dimen.view3d_button_height));
        M7.o oVar2 = new M7.o(R.drawable.pause_btn, new e(), c.b.Middle, M());
        oVar2.N0(bVar2).B0(bVar3).m0((int) M().getResources().getDimension(R.dimen.view3d_button_width)).Y((int) M().getResources().getDimension(R.dimen.view3d_button_height));
        f fVar = new f();
        c.b bVar5 = c.b.Right;
        M7.o oVar3 = new M7.o(R.drawable.play_btn, fVar, bVar5, M());
        oVar3.N0(bVar2).B0(bVar3).m0((int) M().getResources().getDimension(R.dimen.view3d_button_width)).Y((int) M().getResources().getDimension(R.dimen.view3d_button_height));
        M7.p pVar = new M7.p(A());
        this.f71311k0 = pVar;
        pVar.s(oVar);
        this.f71311k0.s(oVar2);
        this.f71311k0.s(oVar3);
        steppedArrayList.add(this.f71311k0);
        steppedArrayList.add(new M7.c(R.drawable.move_left, new g(), bVar4, M()).U(bVar2).M(bVar3).m0((int) M().getResources().getDimension(R.dimen.view3d_button_width)).Y((int) M().getResources().getDimension(R.dimen.view3d_button_height)));
        steppedArrayList.add(new M7.c(R.drawable.move_right, new h(), bVar5, M()).U(bVar2).M(bVar3).m0((int) M().getResources().getDimension(R.dimen.view3d_button_width)).Y((int) M().getResources().getDimension(R.dimen.view3d_button_height)));
        steppedArrayList.add(new M7.c(R.drawable.bin_nopadding_v2, new i(), bVar, M()).U(bVar2).M(bVar3).m0((int) M().getResources().getDimension(R.dimen.view3d_button_width)).Y((int) M().getResources().getDimension(R.dimen.view3d_button_height)));
        steppedArrayList.add(new M7.c(R.drawable.jump_to, new j(), bVar, M()).U(bVar2).M(bVar3).m0((int) M().getResources().getDimension(R.dimen.view3d_button_width)).Y((int) M().getResources().getDimension(R.dimen.view3d_button_height)));
        this.f71322v0.clear();
        this.f71322v0.addAll(steppedArrayList.subList(2, steppedArrayList.size() - 1));
        this.f71325y0.g(steppedArrayList);
    }

    public final boolean I2(Timeline timeline) {
        return timeline != null && timeline.j() == com.itsmagic.engine.Engines.Engine.Animation.c.EVENTS;
    }

    @Override
    public void J0() {
        AnimationPlayer animationPlayer = this.f71307g0;
        if (animationPlayer != null) {
            animationPlayer.saveAnimations();
        }
    }

    public final boolean J2(GameObject object) {
        if (!C13317e.G(object) && !C13317e.G(this.f71306f0)) {
            while (object != null) {
                if (object == this.f71306f0) {
                    return true;
                }
                object = object.f79294k;
            }
        }
        return false;
    }

    public final boolean K2(GameObject o10, GameObject compareTo) {
        if (o10 == compareTo) {
            return true;
        }
        GameObject gameObject = o10.f79294k;
        if (gameObject != null) {
            return K2(gameObject, compareTo);
        }
        return false;
    }

    public final boolean L2(Timeline timeline) {
        return (timeline == null || timeline.f() == null) ? false : true;
    }

    @Override
    public void M0() {
        super.M0();
        M7.h hVar = this.f71325y0;
        if (hVar != null) {
            hVar.n();
        }
        ATLTimelineCanvasView aTLTimelineCanvasView = this.f71298X;
        if (aTLTimelineCanvasView != null) {
            aTLTimelineCanvasView.z();
        }
    }

    public final boolean M2(GameObject o10) {
        return K2(o10, this.f71307g0.f79250n);
    }

    @Override
    public void N0() {
    }

    public void N2(int frame) {
        this.f71323w0 = Math.max(0, frame);
        V2();
        c2(this.f71323w0, true);
        if (this.f71305e0 != null && C13317e.J(this.f71306f0)) {
            K8.a.I(new n());
            this.f71305e0.f72608g = this.f71323w0;
        }
        this.f71304d0 = q2(this.f71323w0);
        E5.g gVar = this.f71315o0;
        if (gVar != null) {
            gVar.h();
        }
    }

    public final List<z> O2(z element) {
        List<z> list = element.f71404m;
        for (int i10 = 0; i10 < list.size(); i10++) {
            z zVar = list.get(i10);
            zVar.q(element.e() + 1);
            zVar.r(!zVar.f71404m.isEmpty());
        }
        return list;
    }

    public final void Q2(com.itsmagic.engine.Engines.Engine.Animation.d animation, AnimationPlayer animationPlayer, GameObject animationObject) {
        if (animation != null) {
            this.f71305e0 = animation;
            this.f71321u0 = new L8.e();
            this.f71307g0 = animationPlayer;
            this.f71306f0 = animationObject;
            this.f71303c0 = null;
            this.f71304d0 = null;
            X2();
            s3();
            E5.g gVar = this.f71318r0;
            if (gVar != null) {
                gVar.h();
            }
            A5.a.y1();
            M7.c cVar = this.f71314n0;
            if (cVar != null) {
                cVar.p();
            }
            for (int i10 = 0; i10 < this.f71322v0.size(); i10++) {
                this.f71322v0.get(i10).p();
            }
        }
    }

    public void R2() {
    }

    public final void V1(GameObject object) {
        if (this.f71305e0 == null || C13317e.G(object)) {
            return;
        }
        Ac.b bVar = com.itsmagic.engine.Engines.Engine.Animation.a.f72597e;
        Timeline h22 = h2(object, bVar, com.itsmagic.engine.Engines.Engine.Animation.a.f72598f);
        if (h22 == null) {
            h22 = new Timeline();
            h22.n(new Ac.b(object.getGuid().j()));
            h22.l(bVar);
            h22.m(com.itsmagic.engine.Engines.Engine.Animation.a.f72598f);
            h22.o(com.itsmagic.engine.Engines.Engine.Animation.c.EVENTS);
            this.f71305e0.h().l().add(h22);
        }
        this.f71303c0 = h22;
        this.f71304d0 = null;
        X2();
    }

    public final void V2() {
        ATLTimelineCanvasView aTLTimelineCanvasView = this.f71298X;
        if (aTLTimelineCanvasView != null) {
            aTLTimelineCanvasView.setSelected(this.f71323w0);
        }
    }

    public final void W1(GameObject parent, Map<GameObject, z> objectNodes, Set<GameObject> objectsToInclude) {
        z zVar = objectNodes.get(parent);
        if (zVar == null) {
            zVar = z.A(parent);
            objectNodes.put(parent, zVar);
        }
        for (int i10 = 0; i10 < parent.z0().size(); i10++) {
            GameObject gameObject = parent.z0().get(i10);
            if (objectsToInclude.contains(gameObject)) {
                z zVar2 = objectNodes.get(gameObject);
                if (zVar2 == null) {
                    zVar2 = z.A(gameObject);
                    objectNodes.put(gameObject, zVar2);
                }
                zVar.f71404m.add(zVar2);
                W1(gameObject, objectNodes, objectsToInclude);
            }
        }
    }

    public final void X2() {
        if (this.f71302b0 == null) {
            return;
        }
        N7.c.j0(new p());
    }

    public final String Y2(GameObject object, Ac.b componentUID) {
        if (componentUID == null) {
            return "";
        }
        if (componentUID.W(com.itsmagic.engine.Engines.Engine.Animation.a.f72593a)) {
            return z1.f92049e;
        }
        if (componentUID.W(com.itsmagic.engine.Engines.Engine.Animation.a.f72597e)) {
            return FileRequest.FIELD_EXTRAS;
        }
        Component f22 = f2(object, componentUID);
        return f22 != null ? f22.getDisplayableTitle() : componentUID.toString();
    }

    public void Z1() {
        int i10;
        this.f71300Z.clear();
        com.itsmagic.engine.Engines.Engine.Animation.d dVar = this.f71305e0;
        if (dVar == null) {
            d3();
            return;
        }
        Timeline timeline = this.f71303c0;
        if (timeline != null) {
            if (dVar != null) {
                dVar.h().m();
            } else {
                timeline.p();
            }
            i10 = Math.max(100, this.f71303c0.h() + 1);
        } else {
            i10 = 0;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            this.f71300Z.add(new C15803b(i11, Z2(i11), this.f71303c0, this.f71305e0.h()));
        }
        com.itsmagic.engine.Engines.Engine.Animation.d dVar2 = this.f71305e0;
        if (!dVar2.f72609i) {
            c3();
        } else if (dVar2.f72610j > 0.0f) {
            a3();
        } else {
            b3();
        }
        d3();
    }

    public final Frame Z2(int frameTime) {
        Timeline timeline = this.f71303c0;
        if (timeline == null) {
            return null;
        }
        List<Frame> f10 = timeline.f();
        for (int i10 = 0; i10 < f10.size(); i10++) {
            Frame frame = f10.get(i10);
            if (frame != null && frame.i() == frameTime) {
                if (!I2(this.f71303c0) || t2(frame)) {
                    return frame;
                }
                return null;
            }
        }
        return null;
    }

    public final Frame a2(int frameTime) {
        Timeline timeline = this.f71303c0;
        if (timeline == null) {
            return null;
        }
        Frame s22 = s2(timeline, frameTime, true);
        this.f71304d0 = s22;
        Z1();
        return s22;
    }

    public final void a3() {
        this.f71311k0.y(2);
    }

    public final List<z> b2() {
        z zVar;
        String e10;
        int iconResource;
        LinkedList linkedList = new LinkedList();
        if (this.f71305e0 != null && !C13317e.G(this.f71306f0)) {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            HashSet hashSet = new HashSet();
            int k10 = this.f71305e0.h().k();
            for (int i10 = 0; i10 < k10; i10++) {
                Timeline j10 = this.f71305e0.h().j(i10);
                if (L2(j10) && j10.d() != null && (e10 = j10.e()) != null && !e10.isEmpty() && j10.i() != null) {
                    GameObject l10 = C13317e.l(this.f71306f0, j10.i());
                    if (!C13317e.G(l10) && J2(l10)) {
                        C2(l10, hashSet);
                        if (hashMap.get(l10) == null) {
                            hashMap.put(l10, z.A(l10));
                        }
                        String bVar = j10.d().toString();
                        LinkedHashMap linkedHashMap = (LinkedHashMap) hashMap2.get(l10);
                        if (linkedHashMap == null) {
                            linkedHashMap = new LinkedHashMap();
                            hashMap2.put(l10, linkedHashMap);
                        }
                        z zVar2 = (z) linkedHashMap.get(bVar);
                        if (zVar2 == null) {
                            if (com.itsmagic.engine.Engines.Engine.Animation.a.f72593a.W(j10.d())) {
                                iconResource = R.drawable.wo_multi;
                            } else {
                                Component f22 = f2(l10, j10.d());
                                iconResource = f22 != null ? f22.getIconResource() : 0;
                            }
                            zVar2 = z.z(Y2(l10, j10.d()), iconResource);
                            linkedHashMap.put(bVar, zVar2);
                        }
                        LinkedHashMap linkedHashMap2 = (LinkedHashMap) hashMap3.get(zVar2);
                        if (linkedHashMap2 == null) {
                            linkedHashMap2 = new LinkedHashMap();
                            hashMap3.put(zVar2, linkedHashMap2);
                        }
                        if (!linkedHashMap2.containsKey(e10)) {
                            linkedHashMap2.put(e10, z.B(e10, j10));
                        }
                    }
                }
            }
            if (!hashSet.contains(this.f71306f0)) {
                return linkedList;
            }
            z zVar3 = hashMap.get(this.f71306f0);
            if (zVar3 == null) {
                zVar3 = z.A(this.f71306f0);
                hashMap.put(this.f71306f0, zVar3);
            }
            W1(this.f71306f0, hashMap, hashSet);
            for (Map.Entry<GameObject, z> entry : hashMap.entrySet()) {
                GameObject key = entry.getKey();
                z value = entry.getValue();
                LinkedHashMap linkedHashMap3 = (LinkedHashMap) hashMap2.get(key);
                if (linkedHashMap3 != null && !linkedHashMap3.isEmpty()) {
                    SteppedArrayList<z> steppedArrayList = new SteppedArrayList();
                    z zVar4 = (z) linkedHashMap3.get(com.itsmagic.engine.Engines.Engine.Animation.a.f72593a.toString());
                    if (zVar4 != null) {
                        steppedArrayList.add(zVar4);
                    }
                    for (int i11 = 0; i11 < key.N(); i11++) {
                        Component L10 = key.L(i11);
                        if (L10 != null && (zVar = (z) linkedHashMap3.get(L10.getGuid().j())) != null && !steppedArrayList.contains(zVar)) {
                            steppedArrayList.add(zVar);
                        }
                    }
                    for (z zVar5 : linkedHashMap3.values()) {
                        if (!steppedArrayList.contains(zVar5)) {
                            steppedArrayList.add(zVar5);
                        }
                    }
                    for (z zVar6 : steppedArrayList) {
                        LinkedHashMap linkedHashMap4 = (LinkedHashMap) hashMap3.get(zVar6);
                        if (linkedHashMap4 != null && !linkedHashMap4.isEmpty()) {
                            zVar6.f71404m.addAll(linkedHashMap4.values());
                        }
                        zVar6.r(!zVar6.f71404m.isEmpty());
                        zVar6.f6684f.f6678c = true;
                        value.f71404m.add(zVar6);
                    }
                }
                value.r(!value.f71404m.isEmpty());
                value.f6684f.f6678c = true;
            }
            zVar3.q(0);
            linkedList.add(zVar3);
        }
        return linkedList;
    }

    public final void b3() {
        this.f71311k0.y(0);
    }

    public final void c2(int frame, boolean smooth) {
        ATLTimelineCanvasView aTLTimelineCanvasView = this.f71298X;
        if (aTLTimelineCanvasView == null) {
            return;
        }
        aTLTimelineCanvasView.t(frame, smooth);
    }

    public final void c3() {
        this.f71311k0.y(1);
    }

    public void d3() {
        ATLTimelineCanvasView aTLTimelineCanvasView = this.f71298X;
        if (aTLTimelineCanvasView == null) {
            return;
        }
        aTLTimelineCanvasView.post(new o());
    }

    public final void e2() {
        this.f71300Z.clear();
        this.f71305e0 = null;
        this.f71307g0 = null;
        this.f71321u0 = null;
        this.f71306f0 = null;
        this.f71303c0 = null;
        this.f71304d0 = null;
        Z1();
        X2();
        s3();
        M7.c cVar = this.f71314n0;
        if (cVar != null) {
            cVar.g();
        }
        for (int i10 = 0; i10 < this.f71322v0.size(); i10++) {
            this.f71322v0.get(i10).g();
        }
    }

    public final Component f2(GameObject object, Ac.b componentUID) {
        if (!C13317e.G(object) && componentUID != null) {
            for (int i10 = 0; i10 < object.N(); i10++) {
                Component L10 = object.L(i10);
                if (L10 != null && L10.getGuid().e(componentUID)) {
                    return L10;
                }
            }
        }
        return null;
    }

    public final void f3(C15803b keyFrame) {
        if (keyFrame == null || keyFrame.f121231b == null) {
            return;
        }
        Y6.a.F1(this.f71298X, C15147a.e.Left, new m(keyFrame));
    }

    public final Timeline g2(Ac.b objectUID, Ac.b componentUID, String entryName) {
        com.itsmagic.engine.Engines.Engine.Animation.d dVar = this.f71305e0;
        if (dVar != null && componentUID != null && entryName != null) {
            int k10 = dVar.h().k();
            for (int i10 = 0; i10 < k10; i10++) {
                Timeline j10 = this.f71305e0.h().j(i10);
                if (j10 != null && j10.i() != null && j10.d() != null && j10.i().W(objectUID) && j10.d().W(componentUID) && entryName.equals(j10.e())) {
                    return j10;
                }
            }
        }
        return null;
    }

    public final Timeline h2(GameObject object, Ac.b componentUID, String entryName) {
        if (this.f71305e0 != null && !C13317e.G(object) && componentUID != null && entryName != null) {
            String j10 = object.getGuid().j();
            int k10 = this.f71305e0.h().k();
            for (int i10 = 0; i10 < k10; i10++) {
                Timeline j11 = this.f71305e0.h().j(i10);
                if (j11 != null && j11.i() != null && j11.d() != null && j11.i().X(j10) && j11.d().W(componentUID) && entryName.equals(j11.e())) {
                    return j11;
                }
            }
        }
        return null;
    }

    public final boolean i3(Ac.b objectUID, Ac.b componentUID, String entryName, com.itsmagic.engine.Engines.Engine.Animation.c type, Object value) {
        Timeline n22;
        Frame s22;
        if (this.f71305e0 == null || componentUID == null || entryName == null || (n22 = n2(objectUID, componentUID, entryName, type)) == null || (s22 = s2(n22, this.f71323w0, true)) == null) {
            return false;
        }
        switch (q.f71376a[type.ordinal()]) {
            case 1:
                s22.E(Vector3.clone((Vector3) value));
                break;
            case 2:
                s22.B(Quaternion.k((Quaternion) value));
                break;
            case 3:
                s22.D(Vector2.y((Vector2) value));
                break;
            case 4:
            case 5:
                s22.D(Vector2.y((Vector2) value));
                break;
            case 6:
                s22.u(ColorINT.k((ColorINT) value));
                break;
            case 7:
                s22.w(((Float) value).floatValue());
                break;
            case 8:
                s22.z(((Integer) value).intValue());
                break;
            case 9:
                s22.C(value != null ? ((Square5I) value).clone() : null);
                break;
            case 10:
                s22.y((String) value);
                break;
        }
        if (this.f71303c0 == null) {
            this.f71303c0 = n22;
        }
        if (this.f71303c0 == n22) {
            this.f71304d0 = s22;
            Z1();
        } else {
            X2();
        }
        return true;
    }

    public final boolean j3(GameObject object, Component component, String entryName, com.itsmagic.engine.Engines.Engine.Animation.c type, Object value) {
        Timeline o22;
        Frame s22;
        if (this.f71305e0 == null || C13317e.G(object) || component == null || entryName == null || (o22 = o2(object, new Ac.b(component.getGuid().j()), entryName, type)) == null || (s22 = s2(o22, this.f71323w0, true)) == null) {
            return false;
        }
        switch (q.f71376a[type.ordinal()]) {
            case 1:
                s22.E(Vector3.clone((Vector3) value));
                break;
            case 2:
                s22.B(Quaternion.k((Quaternion) value));
                break;
            case 3:
                s22.D(Vector2.y((Vector2) value));
                break;
            case 4:
            case 5:
                s22.D(Vector2.y((Vector2) value));
                break;
            case 6:
                s22.u(ColorINT.k((ColorINT) value));
                break;
            case 7:
                s22.w(((Float) value).floatValue());
                break;
            case 8:
                s22.z(((Integer) value).intValue());
                break;
            case 9:
                s22.C(value != null ? ((Square5I) value).clone() : null);
                break;
            case 10:
                s22.y((String) value);
                break;
        }
        if (this.f71303c0 == null) {
            this.f71303c0 = o22;
        }
        if (this.f71303c0 == o22) {
            this.f71304d0 = s22;
            Z1();
        } else {
            X2();
        }
        return true;
    }

    @Override
    public EditorPanel k() {
        return new a();
    }

    @Override
    public void n1() {
        if (this.f71298X == null || this.f71305e0 == null) {
            return;
        }
        float e10 = this.f71309i0 - K8.d.e();
        this.f71309i0 = e10;
        if (e10 <= 0.0f) {
            try {
                int i10 = (int) this.f71305e0.f72608g;
                if (i10 != this.f71323w0) {
                    this.f71323w0 = i10;
                    this.f71298X.setSelected(i10);
                    E5.g gVar = this.f71315o0;
                    if (gVar != null) {
                        gVar.h();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.f71309i0 = 0.016666668f;
        }
    }

    public final Timeline n2(Ac.b objectUID, Ac.b componentUID, String entryName, com.itsmagic.engine.Engines.Engine.Animation.c type) {
        Timeline g22 = g2(objectUID, componentUID, entryName);
        if (g22 != null) {
            return g22;
        }
        Timeline timeline = new Timeline();
        timeline.n(objectUID);
        timeline.l(componentUID);
        timeline.m(entryName);
        timeline.o(type);
        this.f71305e0.h().l().add(timeline);
        X2();
        return timeline;
    }

    @Override
    public void o1() {
        com.itsmagic.engine.Engines.Engine.Animation.d dVar = this.f71305e0;
        if (dVar != null) {
            if (!dVar.f72609i) {
                c3();
            } else if (dVar.f72610j > 0.0f) {
                a3();
            } else {
                b3();
            }
        }
    }

    public final Timeline o2(GameObject object, Ac.b componentUID, String entryName, com.itsmagic.engine.Engines.Engine.Animation.c type) {
        Timeline h22 = h2(object, componentUID, entryName);
        if (h22 != null) {
            return h22;
        }
        Timeline timeline = new Timeline();
        timeline.n(new Ac.b(object.getGuid().j()));
        timeline.l(componentUID);
        timeline.m(entryName);
        timeline.o(type);
        this.f71305e0.h().l().add(timeline);
        X2();
        return timeline;
    }

    public final Frame q2(int frameTime) {
        Frame r22 = r2(frameTime, false);
        if (!I2(this.f71303c0) || t2(r22)) {
            return r22;
        }
        return null;
    }

    public final boolean q3(Ac.b objectUID, String entryName, com.itsmagic.engine.Engines.Engine.Animation.c type, Object value) {
        Timeline n22;
        Frame s22;
        if (this.f71305e0 == null || (n22 = n2(objectUID, com.itsmagic.engine.Engines.Engine.Animation.a.f72593a, entryName, type)) == null || (s22 = s2(n22, this.f71323w0, true)) == null) {
            return false;
        }
        int i10 = q.f71376a[type.ordinal()];
        if (i10 == 1) {
            s22.E(Vector3.clone((Vector3) value));
        } else if (i10 == 2) {
            s22.B(Quaternion.k((Quaternion) value));
        }
        if (this.f71303c0 == null) {
            this.f71303c0 = n22;
        }
        if (this.f71303c0 == n22) {
            this.f71304d0 = s22;
            Z1();
        } else {
            X2();
        }
        return true;
    }

    public final Frame r2(int frameTime, boolean createIfMissing) {
        return s2(this.f71303c0, frameTime, createIfMissing);
    }

    public final boolean r3(GameObject object, String entryName, com.itsmagic.engine.Engines.Engine.Animation.c type, Object value) {
        Timeline o22;
        Frame s22;
        if (this.f71305e0 == null || C13317e.G(object) || (o22 = o2(object, com.itsmagic.engine.Engines.Engine.Animation.a.f72593a, entryName, type)) == null || (s22 = s2(o22, this.f71323w0, true)) == null) {
            return false;
        }
        int i10 = q.f71376a[type.ordinal()];
        if (i10 == 1) {
            s22.E(Vector3.clone((Vector3) value));
        } else if (i10 == 2) {
            s22.B(Quaternion.k((Quaternion) value));
        }
        if (this.f71303c0 == null) {
            this.f71303c0 = o22;
        }
        if (this.f71303c0 == o22) {
            this.f71304d0 = s22;
            Z1();
        } else {
            X2();
        }
        return true;
    }

    public final Frame s2(Timeline timeline, int frameTime, boolean createIfMissing) {
        Frame frame = null;
        if (timeline == null) {
            return null;
        }
        List<Frame> f10 = timeline.f();
        int i10 = 0;
        while (true) {
            if (i10 < f10.size()) {
                Frame frame2 = f10.get(i10);
                if (frame2 != null && frame2.i() == frameTime) {
                    frame = frame2;
                    break;
                }
                i10++;
            } else {
                break;
            }
        }
        if (frame == null && createIfMissing) {
            frame = new Frame();
            frame.x(frameTime);
            timeline.f().add(frame);
            com.itsmagic.engine.Engines.Engine.Animation.d dVar = this.f71305e0;
            if (dVar != null) {
                dVar.h().m();
            } else {
                timeline.p();
            }
        }
        return frame;
    }

    public final void s3() {
        String str;
        if (this.f71313m0 == null) {
            return;
        }
        com.itsmagic.engine.Engines.Engine.Animation.d dVar = this.f71305e0;
        this.f71313m0.h0((dVar == null || (str = dVar.f72604b) == null) ? "Select.." : Tc.b.w(str, true));
    }

    public final boolean t2(Frame frame) {
        return (frame == null || frame.g() == null || frame.g().isEmpty()) ? false : true;
    }

    public final boolean w2(Ac.b objectUID, Ac.b componentUID, String entryName, int frameTime) {
        Timeline g22;
        return (this.f71305e0 == null || (g22 = g2(objectUID, componentUID, entryName)) == null || s2(g22, frameTime, false) == null) ? false : true;
    }

    public final boolean x2(GameObject object, Ac.b componentUID, String entryName, int frameTime) {
        Timeline h22;
        return (this.f71305e0 == null || C13317e.G(object) || (h22 = h2(object, componentUID, entryName)) == null || s2(h22, frameTime, false) == null) ? false : true;
    }

    @Override
    public void z(o4.b engineUpdateData) {
    }

    public a() {
        super(null, "Animation editor", f71297z0);
        this.f71300Z = new SteppedArrayList();
        this.f71308h0 = 0.016666668f;
        this.f71309i0 = 0.016666668f;
        this.f71312l0 = Nc.b.k0(8.0f);
        this.f71322v0 = new SteppedArrayList();
        this.f71324x0 = new r();
        super.c1(false);
    }
}
