package com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Animation;
import JAVARuntime.Runnable;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Animation.AnimationData;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import dd.C12908b;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import jd.C13823b;
import r4.C15147a;

public class AnimationPlayer extends Component implements Serializable {

    public static final String f72961K = "AnimationPlayer";

    public static final Class f72962L = AnimationPlayer.class;

    public boolean f72963E;

    public final List<com.itsmagic.engine.Engines.Engine.Animation.e> f72964F;

    public final L8.e f72965G;

    public final MiniJP f72966H;

    public L8.b f72967I;

    public JAVARuntime.Component f72968J;

    @Expose
    private final List<AnimationEntry> entriesList;

    @Expose
    @eb.f
    public int selectedAnimation;

    public class a implements Runnable {

        public final AtomicReference f72969b;

        public final com.itsmagic.engine.Engines.Engine.Animation.d f72970c;

        public final float f72971d;

        public final Curve f72972e;

        public a(final AtomicReference val$transitionRef, final com.itsmagic.engine.Engines.Engine.Animation.d val$to, final float val$delay, final Curve val$curve) {
            this.f72969b = val$transitionRef;
            this.f72970c = val$to;
            this.f72971d = val$delay;
            this.f72972e = val$curve;
        }

        @Override
        public void run() {
            this.f72969b.set(AnimationPlayer.this.addTransitionImmediate(this.f72970c, this.f72971d, this.f72972e));
        }
    }

    public class b implements Runnable {

        public final AtomicReference f72974b;

        public final com.itsmagic.engine.Engines.Engine.Animation.d f72975c;

        public final com.itsmagic.engine.Engines.Engine.Animation.d f72976d;

        public final float f72977e;

        public final Curve f72978f;

        public b(final AtomicReference val$transitionRef, final com.itsmagic.engine.Engines.Engine.Animation.d val$from, final com.itsmagic.engine.Engines.Engine.Animation.d val$to, final float val$delay, final Curve val$curve) {
            this.f72974b = val$transitionRef;
            this.f72975c = val$from;
            this.f72976d = val$to;
            this.f72977e = val$delay;
            this.f72978f = val$curve;
        }

        @Override
        public void run() {
            this.f72974b.set(AnimationPlayer.this.addTransitionImmediate(this.f72975c, this.f72976d, this.f72977e, this.f72978f));
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            for (int i10 = 0; i10 < AnimationPlayer.this.entriesList.size(); i10++) {
                AnimationEntry animationEntry = (AnimationEntry) AnimationPlayer.this.entriesList.get(i10);
                if (animationEntry.f72960c != null) {
                    com.itsmagic.engine.Engines.Engine.Animation.d b10 = animationEntry.b();
                    X7.a.b(b10.getFile(), b10.h().toJson(), N7.c.t());
                    com.itsmagic.engine.Engines.Engine.Animation.b.d(b10.getFile());
                }
            }
        }
    }

    public class d implements o {

        public final Lb.a f72981a;

        public d(final Lb.a val$listener) {
            this.f72981a = val$listener;
        }

        @Override
        public void a(String animation, int progress, int total) {
            this.f72981a.b("(" + AnimationPlayer.this.f79250n.getName() + "),(AnimationPlayer),(Loading Animations),(" + animation + " - " + progress + "/" + total + ")");
            this.f72981a.d(((float) progress) / ((float) total));
        }

        @Override
        public void b(String animation, int progress, int total) {
            this.f72981a.b("(" + AnimationPlayer.this.f79250n.getName() + "),(AnimationPlayer),(Loading Animations),(" + animation + " - " + progress + "/" + total + ")");
            this.f72981a.d(((float) progress) / ((float) total));
        }
    }

    public static class e {

        public static final int[] f72983a;

        static {
            int[] iArr = new int[T8.a.values().length];
            f72983a = iArr;
            try {
                iArr[T8.a.Off.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72983a[T8.a.Play.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f72983a[T8.a.PlayInLoop.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class f extends AbstractC13203c {
        @Override
        public Class b() {
            return AnimationPlayer.f72962L;
        }

        @Override
        public String c() {
            return AnimationPlayer.f72961K;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.ANIMATION);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.ANIMATION_PLAYER);
        }
    }

    public class g implements D5.a {

        public class a extends LinkedList<C12908b> {

            public class C1191a implements dd.d {

                public class C1192a implements Yc.g {

                    public class C1193a implements Runnable {

                        public final String f72988b;

                        public C1193a(final String val$file) {
                            this.f72988b = val$file;
                        }

                        @Override
                        public void run() {
                            t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationPlayer - add animation entry") : null;
                            try {
                                AnimationPlayer.this.addEntryInternal(new AnimationEntry(this.f72988b));
                                AnimationPlayer.this.reloadInspector();
                            } finally {
                                t6.j.P1(S12);
                            }
                        }
                    }

                    public C1192a() {
                    }

                    @Override
                    public void b(C13823b pfile) {
                        String f10;
                        if (pfile != null) {
                            try {
                                if (!pfile.f().isEmpty() && (f10 = pfile.f()) != null && !f10.isEmpty()) {
                                    K8.a.I(new C1193a(f10));
                                }
                            } catch (Error e10) {
                                e = e10;
                                e.printStackTrace();
                                return;
                            } catch (Exception e11) {
                                e = e11;
                                e.printStackTrace();
                                return;
                            }
                        }
                        N7.c.v0("No file selected");
                    }
                }

                public C1191a() {
                }

                @Override
                public void onSelected(View v10) {
                    Yc.c.a(".anim", new C1192a());
                }
            }

            public a() {
                add(new C12908b("From project", new C1191a()));
            }
        }

        public g() {
        }

        @Override
        public void a(View view, int adapterPosition) {
            Y6.a.F1(view, C15147a.e.Left, new a());
        }
    }

    public class h implements c.o0 {

        public final AnimationEntry f72990a;

        public class a implements D5.h {

            public class C1194a implements Runnable {

                public final Variable f72993b;

                public C1194a(final Variable val$variable) {
                    this.f72993b = val$variable;
                }

                @Override
                public void run() {
                    t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationPlayer - set animation file") : null;
                    try {
                        h.this.f72990a.file = this.f72993b.str_value;
                    } finally {
                        t6.j.P1(S12);
                    }
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                AnimationEntry animationEntry = h.this.f72990a;
                if (animationEntry == null || animationEntry.file == null) {
                    return new Variable("", "");
                }
                return new Variable("temp", h.this.f72990a.file + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1194a(variable));
                }
            }
        }

        public class b extends c.n0<T8.a> {
            public b() {
            }

            @Override
            public void set(T8.a value) {
                h.this.f72990a.startState = value;
            }
        }

        public class c implements D5.a {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationPlayer - play once") : null;
                    try {
                        com.itsmagic.engine.Engines.Engine.Animation.d b10 = h.this.f72990a.b();
                        if (b10 != null) {
                            b10.play();
                        }
                    } finally {
                        t6.j.P1(S12);
                    }
                }
            }

            public c() {
            }

            @Override
            public void a(View view, int adapterPosition) {
                K8.a.I(new a());
            }
        }

        public class d implements D5.a {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationPlayer - play once") : null;
                    try {
                        com.itsmagic.engine.Engines.Engine.Animation.d b10 = h.this.f72990a.b();
                        if (b10 != null) {
                            b10.playInLoop();
                        }
                    } finally {
                        t6.j.P1(S12);
                    }
                }
            }

            public d() {
            }

            @Override
            public void a(View view, int adapterPosition) {
                K8.a.I(new a());
            }
        }

        public class e implements D5.a {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationPlayer - play once") : null;
                    try {
                        com.itsmagic.engine.Engines.Engine.Animation.d b10 = h.this.f72990a.b();
                        if (b10 != null) {
                            b10.stop();
                        }
                    } finally {
                        t6.j.P1(S12);
                    }
                }
            }

            public e() {
            }

            @Override
            public void a(View view, int adapterPosition) {
                K8.a.I(new a());
            }
        }

        public class f implements D5.a {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationPlayer - remove animation entry") : null;
                    try {
                        h hVar = h.this;
                        AnimationPlayer.this.removeEntryInternal(hVar.f72990a);
                        AnimationPlayer.this.reloadInspector();
                    } finally {
                        t6.j.P1(S12);
                    }
                }
            }

            public f() {
            }

            @Override
            public void a(View view, int adapterPosition) {
                K8.a.I(new a());
            }
        }

        public h(final AnimationEntry val$animationEntry) {
            this.f72990a = val$animationEntry;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            com.itsmagic.engine.Engines.Engine.Animation.d b10 = this.f72990a.b();
            entries.add(new C5.b(new a(), (String) null, b.a.InputFile, ".mesh"));
            entries.add(F5.c.i("Start", T8.a.class, this.f72990a.startState, new b()));
            if (c8.b.k()) {
                entries.add(new C5.b(new c(), "Play once"));
                entries.add(new C5.b(new d(), "Play loop"));
                entries.add(new C5.b(new e(), "Stop"));
            }
            entries.add(new C5.b(new f(), "Exclude"));
            if (b10 != null && b10.f72609i) {
                entries.add(new C5.b("Animation is playing", 12));
            } else if (b10 == null) {
                entries.add(new C5.b("Animation is not loaded", 12));
            } else {
                entries.add(new C5.b("Animation is stopped", 12));
            }
            return entries;
        }
    }

    public class i implements D5.e {

        public ImageView f73004a;

        public ImageView f73005b;

        public ImageView f73006c;

        public int f73007d = Theme.i(Theme.T.PRIMARY_DARK);

        public int f73008e = Theme.i(Theme.T.PANEL_TOPBAR);

        public final Context f73009f;

        public class a implements View.OnClickListener {

            public final com.itsmagic.engine.Engines.Engine.Animation.d f73011b;

            public a(final com.itsmagic.engine.Engines.Engine.Animation.d val$animation) {
                this.f73011b = val$animation;
            }

            @Override
            public void onClick(View v10) {
                com.itsmagic.engine.Engines.Engine.Animation.d dVar = this.f73011b;
                if (dVar != null) {
                    dVar.playInLoop();
                    this.f73011b.setSpeed(-1.0f);
                    i.this.g();
                }
            }
        }

        public class b implements View.OnClickListener {

            public final com.itsmagic.engine.Engines.Engine.Animation.d f73013b;

            public b(final com.itsmagic.engine.Engines.Engine.Animation.d val$animation) {
                this.f73013b = val$animation;
            }

            @Override
            public void onClick(View v10) {
                com.itsmagic.engine.Engines.Engine.Animation.d dVar = this.f73013b;
                if (dVar != null) {
                    dVar.stop();
                    this.f73013b.setSpeed(1.0f);
                    i.this.h();
                }
            }
        }

        public class c implements View.OnClickListener {

            public final com.itsmagic.engine.Engines.Engine.Animation.d f73015b;

            public c(final com.itsmagic.engine.Engines.Engine.Animation.d val$animation) {
                this.f73015b = val$animation;
            }

            @Override
            public void onClick(View v10) {
                com.itsmagic.engine.Engines.Engine.Animation.d dVar = this.f73015b;
                if (dVar != null) {
                    dVar.playInLoop();
                    this.f73015b.setSpeed(1.0f);
                    i.this.f();
                }
            }
        }

        public i(final Context val$context) {
            this.f73009f = val$context;
        }

        public final void f() {
            Vc.e.x(this.f73004a, this.f73009f, this.f73008e);
            Vc.e.x(this.f73005b, this.f73009f, this.f73008e);
            Vc.e.x(this.f73006c, this.f73009f, this.f73007d);
        }

        public final void g() {
            Vc.e.x(this.f73004a, this.f73009f, this.f73007d);
            Vc.e.x(this.f73005b, this.f73009f, this.f73008e);
            Vc.e.x(this.f73006c, this.f73009f, this.f73008e);
        }

        public final void h() {
            Vc.e.x(this.f73004a, this.f73009f, this.f73008e);
            Vc.e.x(this.f73005b, this.f73009f, this.f73007d);
            Vc.e.x(this.f73006c, this.f73009f, this.f73008e);
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            com.itsmagic.engine.Engines.Engine.Animation.d dVar = (com.itsmagic.engine.Engines.Engine.Animation.d) entry.f2073h;
            if (dVar == null) {
                return;
            }
            TextView textView = (TextView) view.findViewById(R.id.name);
            if (textView != null) {
                textView.setText(Tc.b.w(dVar.f72604b, true));
            }
            FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.atl_reverse);
            this.f73004a = (ImageView) frameLayout.getChildAt(0);
            FrameLayout frameLayout2 = (FrameLayout) view.findViewById(R.id.atl_stop);
            this.f73005b = (ImageView) frameLayout2.getChildAt(0);
            FrameLayout frameLayout3 = (FrameLayout) view.findViewById(R.id.atl_play);
            this.f73006c = (ImageView) frameLayout3.getChildAt(0);
            if (!dVar.f72609i) {
                h();
            } else if (dVar.f72610j > 0.0f) {
                f();
            } else {
                g();
            }
            frameLayout.setOnClickListener(new a(dVar));
            frameLayout2.setOnClickListener(new b(dVar));
            frameLayout3.setOnClickListener(new c(dVar));
        }
    }

    public class j implements Runnable {

        public final Runnable f73017b;

        public j(final Runnable val$runnable) {
            this.f73017b = val$runnable;
        }

        @Override
        public void run() {
            t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationPlayer - list mutation") : null;
            try {
                this.f73017b.run();
            } finally {
                t6.j.P1(S12);
            }
        }
    }

    public class k implements Runnable {

        public final int f73019b;

        public final AnimationEntry f73020c;

        public k(final int val$idx, final AnimationEntry val$entry) {
            this.f73019b = val$idx;
            this.f73020c = val$entry;
        }

        @Override
        public void run() {
            AnimationPlayer.this.setEntryInternal(this.f73019b, this.f73020c);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override
        public void run() {
            AnimationPlayer.this.removeFinishedTransitionsInternal();
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override
        public void run() {
            AnimationPlayer.this.removeFinishedTransitionsInternal();
        }
    }

    public class n implements Runnable {

        public final com.itsmagic.engine.Engines.Engine.Animation.d f73024b;

        public n(final com.itsmagic.engine.Engines.Engine.Animation.d val$animation) {
            this.f73024b = val$animation;
        }

        @Override
        public void run() {
            com.itsmagic.engine.Engines.Engine.Animation.d dVar;
            if (this.f73024b == null) {
                AnimationPlayer.this.addEntryInternal(new AnimationEntry(""));
                return;
            }
            if (!AnimationPlayer.this.entriesList.isEmpty()) {
                for (int i10 = 0; i10 < AnimationPlayer.this.entriesList.size(); i10++) {
                    AnimationEntry animationEntry = (AnimationEntry) AnimationPlayer.this.entriesList.get(i10);
                    if (animationEntry != null && (dVar = animationEntry.f72960c) != null && dVar == this.f73024b) {
                        return;
                    }
                }
            }
            AnimationPlayer.this.addEntryInternal(new AnimationEntry(this.f73024b));
        }
    }

    public interface o {
        void a(String animation, int progress, int total);

        void b(String animation, int progress, int total);
    }

    static {
        C13201a.b(new f());
    }

    public AnimationPlayer() {
        super(f72961K);
        this.entriesList = new SteppedArrayList();
        this.selectedAnimation = 0;
        this.f72963E = false;
        this.f72964F = new SteppedArrayList();
        this.f72965G = new L8.e();
        this.f72966H = new MiniJP();
    }

    public void addEntryInternal(AnimationEntry entry) {
        requireImmediateListMutationThread();
        this.entriesList.add(entry);
    }

    public com.itsmagic.engine.Engines.Engine.Animation.e addTransitionImmediate(com.itsmagic.engine.Engines.Engine.Animation.d to, float delay, Curve curve) {
        com.itsmagic.engine.Engines.Engine.Animation.d dVar;
        if (!this.f72964F.isEmpty()) {
            for (int i10 = 0; i10 < this.f72964F.size(); i10++) {
                com.itsmagic.engine.Engines.Engine.Animation.e eVar = this.f72964F.get(i10);
                if (!eVar.g() && eVar.e() != to) {
                    dVar = eVar.e();
                    break;
                }
            }
        }
        dVar = null;
        if (dVar == null) {
            int i11 = 0;
            while (true) {
                if (i11 >= this.entriesList.size()) {
                    break;
                }
                AnimationEntry animationEntry = this.entriesList.get(i11);
                com.itsmagic.engine.Engines.Engine.Animation.d dVar2 = animationEntry.f72960c;
                if (dVar2 != null && dVar2.isPlaying()) {
                    dVar = animationEntry.f72960c;
                    break;
                }
                i11++;
            }
            if (dVar == null) {
                to.playInLoop();
                return new com.itsmagic.engine.Engines.Engine.Animation.e(null, to, 0.0f, null);
            }
        }
        for (int i12 = 0; i12 < this.entriesList.size(); i12++) {
            if (this.entriesList.get(i12).f72960c == to) {
                if (delay <= 0.0f) {
                    dVar.stop();
                    to.playInLoop();
                    return new com.itsmagic.engine.Engines.Engine.Animation.e(dVar, to, delay, null);
                }
                com.itsmagic.engine.Engines.Engine.Animation.e eVar2 = new com.itsmagic.engine.Engines.Engine.Animation.e(dVar, to, delay, curve);
                addTransitionInternal(eVar2);
                return eVar2;
            }
        }
        throw new RuntimeException("(to) animation is not on this AnimationPlayer");
    }

    private void addTransitionInternal(com.itsmagic.engine.Engines.Engine.Animation.e transition) {
        requireImmediateListMutationThread();
        this.f72964F.add(transition);
    }

    private void clampSelectedAnimation() {
        if (this.entriesList.size() <= this.selectedAnimation) {
            int size = this.entriesList.size() - 1;
            this.selectedAnimation = size;
            if (size < 0) {
                this.selectedAnimation = 0;
            }
        }
    }

    private void executeAnimations() {
        L8.b bVar = null;
        if (!this.f72964F.isEmpty()) {
            if (this.f72964F.size() == 1) {
                L8.b j10 = this.f72964F.get(0).j(this.f79250n, this.f72966H);
                if (finishedTransitionsCount() > 0) {
                    runOnEngineForListMutation(new l());
                }
                if (j10 != null) {
                    if (L8.a.e(j10, this.f79250n, this.f72965G, this.f72966H)) {
                        this.f72967I = j10;
                        return;
                    }
                    return;
                }
            } else {
                L8.b bVar2 = null;
                for (int i10 = 0; i10 < this.f72964F.size(); i10++) {
                    L8.b j11 = this.f72964F.get(i10).j(this.f79250n, this.f72966H);
                    if (bVar2 == null) {
                        bVar2 = j11;
                    } else {
                        L8.b f10 = L8.d.f(bVar2, j11, 0.5f, this.f72966H);
                        j11.d(this.f72966H);
                        if (f10 != null) {
                            bVar2.d(this.f72966H);
                            bVar2 = f10;
                        }
                    }
                }
                if (finishedTransitionsCount() > 0) {
                    runOnEngineForListMutation(new m());
                }
                if (bVar2 != null) {
                    if (L8.a.e(bVar2, this.f79250n, this.f72965G, this.f72966H)) {
                        this.f72967I = bVar2;
                        return;
                    }
                    return;
                }
            }
        }
        float f11 = 0.0f;
        for (int i11 = 0; i11 < this.entriesList.size(); i11++) {
            com.itsmagic.engine.Engines.Engine.Animation.d b10 = this.entriesList.get(i11).b();
            if (b10 != null) {
                float weight = b10.getWeight();
                if (b10.f72609i && weight > 0.0f) {
                    L8.b e10 = b10.e(this.f79250n, this.f72966H);
                    if (bVar == null) {
                        bVar = e10;
                        f11 = weight;
                    } else {
                        float f12 = f11 + weight;
                        L8.b f13 = L8.d.f(bVar, e10, f12 > 1.0E-8f ? weight / f12 : 1.0f, this.f72966H);
                        e10.d(this.f72966H);
                        if (f13 != null) {
                            bVar.d(this.f72966H);
                            bVar = f13;
                            f11 = f12;
                        }
                    }
                }
            }
        }
        if (bVar == null || !L8.a.e(bVar, this.f79250n, this.f72965G, this.f72966H)) {
            return;
        }
        this.f72967I = bVar;
    }

    private int finishedTransitionsCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f72964F.size(); i11++) {
            if (this.f72964F.get(i11).g()) {
                i10++;
            }
        }
        return i10;
    }

    public void removeEntryInternal(AnimationEntry entry) {
        requireImmediateListMutationThread();
        if (this.entriesList.remove(entry)) {
            clampSelectedAnimation();
        }
    }

    public void removeFinishedTransitionsInternal() {
        requireImmediateListMutationThread();
        for (int size = this.f72964F.size() - 1; size >= 0; size--) {
            if (this.f72964F.get(size).g()) {
                this.f72964F.remove(size);
            }
        }
    }

    private void requireImmediateListMutationThread() {
        K8.a.F();
    }

    private void runOnEngineForListMutation(Runnable runnable) {
        K8.a.I(new j(runnable));
    }

    public void setEntryInternal(int idx, AnimationEntry entry) {
        requireImmediateListMutationThread();
        this.entriesList.set(idx, entry);
    }

    private void updateAnimations() {
        updateAnimations(null);
    }

    public void addAnimation(com.itsmagic.engine.Engines.Engine.Animation.d animation) {
        runOnEngineForListMutation(new n(animation));
    }

    public com.itsmagic.engine.Engines.Engine.Animation.e addTransition(com.itsmagic.engine.Engines.Engine.Animation.d to, float delay) {
        return addTransition(to, delay, (Curve) null);
    }

    @Override
    public int countAsync() {
        return 1;
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.f72967I = null;
    }

    public com.itsmagic.engine.Engines.Engine.Animation.d findAnimation(String name) {
        if (name == null) {
            return null;
        }
        for (int i10 = 0; i10 < this.entriesList.size(); i10++) {
            AnimationEntry animationEntry = this.entriesList.get(i10);
            if (animationEntry.f72960c != null) {
                if (animationEntry.c().equalsIgnoreCase(name + ".anim")) {
                    return animationEntry.f72960c;
                }
            }
        }
        return null;
    }

    public List<C5.b> getAEAL(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(Lang.l(Lang.T.ANIMATION_LIST), 12));
        for (int i10 = 0; i10 < this.entriesList.size(); i10++) {
            com.itsmagic.engine.Engines.Engine.Animation.d b10 = this.entriesList.get(i10).b();
            if (b10 != null) {
                linkedList.add(new C5.b(new i(context), R.layout.inspector_ae_animation, b10));
            }
        }
        return linkedList;
    }

    public com.itsmagic.engine.Engines.Engine.Animation.d getCurrentAnimation() {
        int size = this.entriesList.size();
        int i10 = this.selectedAnimation;
        if (size > i10) {
            return this.entriesList.get(i10).b();
        }
        return null;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        for (int i10 = 0; i10 < this.entriesList.size(); i10++) {
            AnimationEntry animationEntry = this.entriesList.get(i10);
            if (animationEntry != null) {
                c2632k.f9114a.add(animationEntry.file);
            }
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.ANIMATION_PLAYER);
    }

    public List<AnimationEntry> getEntriesList() {
        return this.entriesList;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_animationplayer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new g(), Lang.l(Lang.T.ADD_ANIMATION)));
        List<AnimationEntry> entriesList = getEntriesList();
        for (int i10 = 0; i10 < entriesList.size(); i10++) {
            AnimationEntry animationEntry = entriesList.get(i10);
            linkedList.add(F5.c.d(getInspectorMemory(), Tc.b.w(animationEntry.file, true), new h(animationEntry)));
        }
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f72961K;
    }

    @Override
    public Component.e getType() {
        return Component.e.AnimationPlayer;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        updateAnimations(new d(listener));
        listener.e();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        this.f72966H.clear();
        this.f72967I = null;
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        this.f72966H.endFrame();
        this.f72966H.startFrame();
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        this.f72966H.endFrame();
        this.f72966H.startFrame();
        updateAnimations(null);
        if (!this.f72963E && c8.b.k()) {
            for (int i10 = 0; i10 < this.entriesList.size(); i10++) {
                try {
                    AnimationEntry animationEntry = this.entriesList.get(i10);
                    if (animationEntry.f72960c != null) {
                        int i11 = e.f72983a[animationEntry.startState.ordinal()];
                        if (i11 == 1) {
                            animationEntry.f72960c.stop();
                        } else if (i11 == 2) {
                            animationEntry.f72960c.play();
                        } else if (i11 == 3) {
                            animationEntry.f72960c.playInLoop();
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f72963E = true;
        }
        executeAnimations();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        L8.b bVar = this.f72967I;
        if (bVar != null) {
            L8.a.c(bVar);
            this.f72967I = null;
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        for (int i10 = 0; i10 < this.entriesList.size(); i10++) {
            AnimationEntry animationEntry = this.entriesList.get(i10);
            if (animationEntry != null) {
                String v10 = Tc.b.v(animationEntry.file);
                BuildDicFile f10 = dictionary.f(animationEntry.file);
                if (f10 != null) {
                    dictionary.h("MeshRenderer: REPLACING " + animationEntry.file + " TO " + f10.b());
                    animationEntry.file = f10.b();
                    animationEntry.h(v10);
                    animationEntry.compilled = true;
                }
            }
        }
    }

    public void saveAnimations() {
        runOnEngineForListMutation(new c());
    }

    public void setAnimation(int idx, Animation animation) {
        runOnEngineForListMutation(new k(idx, new AnimationEntry(animation.instance)));
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f72968J = run;
    }

    public void setSelectedAnimation(com.itsmagic.engine.Engines.Engine.Animation.d animation) {
        for (int i10 = 0; i10 < this.entriesList.size(); i10++) {
            if (this.entriesList.get(i10).b() == animation) {
                this.selectedAnimation = i10;
            }
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f72968J;
        if (component != null) {
            return component;
        }
        JAVARuntime.AnimationPlayer animationPlayer = new JAVARuntime.AnimationPlayer(this);
        this.f72968J = animationPlayer;
        return animationPlayer;
    }

    private void updateAnimations(o listener) {
        String str;
        for (int i10 = 0; i10 < this.entriesList.size(); i10++) {
            AnimationEntry animationEntry = this.entriesList.get(i10);
            String str2 = animationEntry.file;
            if (str2 != null && !str2.isEmpty()) {
                String str3 = animationEntry.f72959b;
                if ((str3 == null || !str3.equals(animationEntry.origName)) && ((str = animationEntry.f72959b) == null || !str.equals(animationEntry.file))) {
                    if (listener != null) {
                        listener.b(animationEntry.file, i10, this.entriesList.size());
                    }
                    AnimationData c10 = com.itsmagic.engine.Engines.Engine.Animation.b.c(animationEntry.file);
                    if (c10 != null) {
                        animationEntry.f72960c = new com.itsmagic.engine.Engines.Engine.Animation.d(c10, animationEntry.file);
                        if (animationEntry.compilled) {
                            String str4 = animationEntry.origName;
                            animationEntry.f72959b = str4;
                            animationEntry.h(str4);
                        } else {
                            String str5 = animationEntry.file;
                            animationEntry.f72959b = str5;
                            animationEntry.h(Tc.b.v(str5));
                        }
                    } else {
                        if (animationEntry.compilled) {
                            String str6 = animationEntry.origName;
                            animationEntry.f72959b = str6;
                            animationEntry.h(str6);
                        } else {
                            String str7 = animationEntry.file;
                            animationEntry.f72959b = str7;
                            animationEntry.h(Tc.b.v(str7));
                        }
                        System.out.println("Failed to load animation file:" + animationEntry.file);
                    }
                    if (listener != null) {
                        listener.a(animationEntry.file, i10, this.entriesList.size());
                    }
                }
            } else {
                animationEntry.f72960c = null;
                animationEntry.f72959b = null;
            }
        }
    }

    public com.itsmagic.engine.Engines.Engine.Animation.e addTransition(com.itsmagic.engine.Engines.Engine.Animation.d to, float delay, Curve curve) {
        requireImmediateListMutationThread();
        AtomicReference atomicReference = new AtomicReference();
        runOnEngineForListMutation(new a(atomicReference, to, delay, curve));
        return (com.itsmagic.engine.Engines.Engine.Animation.e) atomicReference.get();
    }

    @Override
    public Component mo1248clone() {
        AnimationPlayer animationPlayer = new AnimationPlayer();
        for (int i10 = 0; i10 < this.entriesList.size(); i10++) {
            animationPlayer.entriesList.add(this.entriesList.get(i10).clone());
        }
        return animationPlayer;
    }

    public com.itsmagic.engine.Engines.Engine.Animation.d findAnimation(int index) {
        if (this.entriesList.size() > index) {
            return this.entriesList.get(index).f72960c;
        }
        return null;
    }

    public com.itsmagic.engine.Engines.Engine.Animation.e addTransition(com.itsmagic.engine.Engines.Engine.Animation.d from, com.itsmagic.engine.Engines.Engine.Animation.d to, float delay) {
        return addTransition(from, to, delay, null);
    }

    public com.itsmagic.engine.Engines.Engine.Animation.e addTransition(com.itsmagic.engine.Engines.Engine.Animation.d from, com.itsmagic.engine.Engines.Engine.Animation.d to, float delay, Curve curve) {
        requireImmediateListMutationThread();
        AtomicReference atomicReference = new AtomicReference();
        runOnEngineForListMutation(new b(atomicReference, from, to, delay, curve));
        return (com.itsmagic.engine.Engines.Engine.Animation.e) atomicReference.get();
    }

    public AnimationPlayer(List<AnimationEntry> entriesList) {
        super(f72961K);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.entriesList = steppedArrayList;
        this.selectedAnimation = 0;
        this.f72963E = false;
        this.f72964F = new SteppedArrayList();
        this.f72965G = new L8.e();
        this.f72966H = new MiniJP();
        steppedArrayList.clear();
        steppedArrayList.addAll(entriesList);
    }

    public com.itsmagic.engine.Engines.Engine.Animation.e addTransitionImmediate(com.itsmagic.engine.Engines.Engine.Animation.d from, com.itsmagic.engine.Engines.Engine.Animation.d to, float delay, Curve curve) {
        if (delay <= 0.0f) {
            from.stop();
            to.playInLoop();
            return new com.itsmagic.engine.Engines.Engine.Animation.e(from, to, delay, null);
        }
        for (int i10 = 0; i10 < this.entriesList.size(); i10++) {
            if (this.entriesList.get(i10).f72960c == from) {
                for (int i11 = 0; i11 < this.entriesList.size(); i11++) {
                    if (this.entriesList.get(i11).f72960c == to) {
                        com.itsmagic.engine.Engines.Engine.Animation.e eVar = new com.itsmagic.engine.Engines.Engine.Animation.e(from, to, delay, curve);
                        addTransitionInternal(eVar);
                        return eVar;
                    }
                }
                throw new RuntimeException("(to) animation is not on this AnimationPlayer");
            }
        }
        throw new RuntimeException("(From) animation is not on this AnimationPlayer");
    }
}
