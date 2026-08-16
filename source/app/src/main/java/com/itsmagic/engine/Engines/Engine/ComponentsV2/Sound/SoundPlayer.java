package com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import Ic.C2633l;
import JAVARuntime.GizmoObject;
import JAVARuntime.Runnable;
import android.content.Context;
import android.util.Log;
import android.view.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Sound.Imported.d;
import com.itsmagic.engine.Engines.Sound.Native.NativeSoundEmitter;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import s8.InterfaceC15237a;
import yb.C16165b;

public class SoundPlayer extends Component implements Serializable {

    public static final String f76628X = "SoundPlayer";

    public static final Class f76629Y = SoundPlayer.class;

    public File f76630E;

    public boolean f76631F;

    public boolean f76632G;

    public float f76633H;

    public float f76634I;

    public Fc.a f76635J;

    public final Vector3 f76636K;

    public NativeSoundEmitter.c f76637L;

    public GizmoObject f76638M;

    public GizmoObject f76639N;

    public boolean f76640O;

    public boolean f76641P;

    public boolean f76642Q;

    public final AtomicBoolean f76643R;

    public volatile boolean f76644S;

    public transient boolean f76645T;

    public boolean f76646U;

    public final InterfaceC13601h f76647V;

    public JAVARuntime.Component f76648W;

    @Expose
    private boolean destroyOnFinish;

    @Expose
    @eb.f
    public float diameter;

    @Expose
    private Curve distanceCurve;

    @Expose
    public String file;

    @Expose
    private boolean loop;

    @Expose
    private q mode;

    @Expose
    @eb.f
    private float pitch;

    @Expose
    public boolean playOnStart;

    @Expose
    @eb.f
    private float speed;

    @Expose
    @eb.f
    private float volume;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoundPlayer.this.getSpeed() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoundPlayer.this.setSpeed(variable.float_value);
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoundPlayer.this.volume + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoundPlayer.this.setVolume(variable.float_value);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoundPlayer.this.getPitch() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoundPlayer.this.setPitch(variable.float_value);
            }
        }
    }

    public class d extends c.n0<q> {
        public d() {
        }

        @Override
        public void a() {
            SoundPlayer.this.reloadInspector();
        }

        @Override
        public void set(q value) {
            SoundPlayer.this.setMode(value);
        }

        @Override
        public String c(q enumObject) {
            int ordinal = enumObject.ordinal();
            return ordinal != 0 ? ordinal != 1 ? enumObject.toString() : "2D" : "3D";
        }
    }

    public class e implements D5.b {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("SoundPlayer - stop") : null;
                try {
                    SoundPlayer.this.stop();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public e() {
        }

        @Override
        public void a(View view) {
            K8.a.I(new a());
        }
    }

    public class f implements D5.b {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("SoundPlayer - play") : null;
                try {
                    SoundPlayer.this.play();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public f() {
        }

        @Override
        public void a(View view) {
            K8.a.I(new a());
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            t6.e S12 = t6.j.J1() ? t6.j.S1("SoundPlayer - unpause by engine") : null;
            try {
                if (SoundPlayer.this.f76643R.get()) {
                    SoundPlayer.this.f76637L = NativeSoundEmitter.c.Playing;
                    SoundPlayer.this.ensureEmitterForCurrentSource();
                    SoundPlayer.this.applyEmitterStateAndProperties();
                    SoundPlayer.this.f76643R.set(false);
                }
            } finally {
                t6.j.P1(S12);
            }
        }
    }

    public class h extends AbstractC13203c {
        @Override
        public Class b() {
            return SoundPlayer.f76629Y;
        }

        @Override
        public String c() {
            return SoundPlayer.f76628X;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SOUND);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.SOUND_PLAYER);
        }
    }

    public class i implements InterfaceC13601h {
        public i() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            SoundPlayer.this.syncGlobalPosition();
        }
    }

    public class j implements NativeSoundEmitter.b {
        public j() {
        }

        @Override
        public void a() {
            GameObject gameObject;
            if (c8.b.j() && SoundPlayer.this.destroyOnFinish && (gameObject = SoundPlayer.this.f79250n) != null) {
                gameObject.destroy();
            }
        }

        @Override
        public void b() {
            SoundPlayer.this.f76637L = NativeSoundEmitter.c.Stopped;
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override
        public void run() {
            t6.e S12 = t6.j.J1() ? t6.j.S1("SoundPlayer - refresh emitter source") : null;
            try {
                SoundPlayer.this.ensureEmitterForCurrentSource();
            } finally {
                t6.j.P1(S12);
            }
        }
    }

    public class l implements D5.h {

        public class a implements Runnable {

            public final Variable f76662b;

            public a(final Variable val$variable) {
                this.f76662b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("SoundPlayer - set file") : null;
                try {
                    SoundPlayer.this.setFile(this.f76662b.str_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public l() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", SoundPlayer.this.file + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class m implements D5.h {
        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoundPlayer.this.playOnStart + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoundPlayer.this.playOnStart = variable.booolean_value.booleanValue();
            }
        }
    }

    public class n implements D5.h {
        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoundPlayer.this.diameter + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoundPlayer.this.diameter = variable.float_value;
            }
        }
    }

    public class o implements D5.h {
        public o() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoundPlayer.this.loop + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoundPlayer.this.setLoop(variable.booolean_value.booleanValue());
            }
        }
    }

    public class p implements D5.h {
        public p() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoundPlayer.this.destroyOnFinish + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoundPlayer.this.setDestroyOnFinish(variable.booolean_value.booleanValue());
            }
        }
    }

    public enum q {
        Play_3D,
        Play_2D
    }

    static {
        C13201a.b(new h());
    }

    public SoundPlayer() {
        super(f76628X);
        this.playOnStart = true;
        this.volume = 1.0f;
        this.diameter = 20.0f;
        this.pitch = 1.0f;
        this.speed = 1.0f;
        this.mode = q.Play_3D;
        this.f76633H = 1.0f;
        this.f76634I = 1.0f;
        this.f76636K = new Vector3();
        this.f76637L = NativeSoundEmitter.c.Stopped;
        this.f76639N = null;
        this.f76640O = false;
        this.f76641P = false;
        this.f76642Q = false;
        this.f76643R = new AtomicBoolean();
        this.f76644S = true;
        this.f76647V = new i();
        Curve curve = new Curve(N7.c.t());
        this.distanceCurve = curve;
        curve.clear();
        this.distanceCurve.f(0.0f, 1.0f);
        this.distanceCurve.f(0.25f, 0.8f);
        this.distanceCurve.f(0.75f, 0.2f);
        this.distanceCurve.f(1.0f, 0.0f);
        this.distanceCurve.apply();
    }

    private void applyEmitterProperties() {
        Fc.a aVar = this.f76635J;
        if (aVar == null) {
            return;
        }
        aVar.setPitch(getPitch());
        this.f76635J.setSpeed(getSpeed());
        this.f76635J.setLoop(isEffectiveLoop());
        applyEmitterVolumes();
    }

    private void applyEmitterState() {
        Fc.a aVar = this.f76635J;
        if (aVar == null) {
            return;
        }
        aVar.Q(this.f76637L);
    }

    public void applyEmitterStateAndProperties() {
        applyEmitterState();
        applyEmitterProperties();
    }

    private void applyEmitterVolumes() {
        Fc.a aVar = this.f76635J;
        if (aVar == null) {
            return;
        }
        if (this.mode == q.Play_2D) {
            this.f76633H = 1.0f;
            this.f76634I = 1.0f;
        }
        aVar.T(this.f76633H, this.f76634I, this.volume);
    }

    private void applyGameStatePause(boolean running, boolean paused) {
        Fc.a aVar = this.f76635J;
        if (aVar == null) {
            return;
        }
        if (paused) {
            if (isPlaying() && this.f76635J.isPlaying() && !this.f76642Q) {
                pause();
                this.f76642Q = true;
                return;
            }
            return;
        }
        if (running && aVar.isPaused() && this.f76642Q) {
            play();
            this.f76642Q = false;
        }
    }

    private void attachEmitterListeners(Fc.a emitter) {
        if (emitter == null) {
            return;
        }
        emitter.P(new j());
    }

    private void destroyEmitter() {
        Fc.a aVar = this.f76635J;
        if (aVar != null) {
            aVar.destroy();
            this.f76635J = null;
        }
    }

    public void ensureEmitterForCurrentSource() {
        boolean z10;
        this.f76644S = false;
        String str = this.file;
        if (str == null || str.isEmpty()) {
            destroyEmitter();
            return;
        }
        try {
            if (!this.file.equals("@IO")) {
                d.b d10 = com.itsmagic.engine.Engines.Sound.Imported.d.d(this.file);
                z10 = d10.f81448b.durationSeconds > 5.0f;
                Fc.a aVar = this.f76635J;
                if (aVar != null && (!aVar.getFile().equals(this.file) || this.f76635J.e0() != z10)) {
                    destroyEmitter();
                }
                if (this.f76635J == null) {
                    this.f76635J = z10 ? new Fc.d(this.file, d10) : Hc.c.o(this.file);
                    onEmitterReady();
                    return;
                }
                return;
            }
            File file = this.f76630E;
            if (file == null) {
                destroyEmitter();
                return;
            }
            d.b c10 = com.itsmagic.engine.Engines.Sound.Imported.d.c(file);
            z10 = c10.f81448b.durationSeconds > 5.0f;
            Fc.a aVar2 = this.f76635J;
            if (aVar2 != null && (!aVar2.getFile().equals(this.f76630E.getAbsolutePath()) || this.f76635J.e0() != z10)) {
                destroyEmitter();
            }
            if (this.f76635J == null) {
                this.f76635J = z10 ? new Fc.d(this.f76630E.getAbsolutePath(), c10) : Hc.c.n(this.f76630E);
                onEmitterReady();
            }
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            J4.d.E1();
            StringBuilder sb2 = new StringBuilder();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SoundPlayer [");
            GameObject gameObject = this.f79250n;
            sb3.append(gameObject != null ? gameObject.P0() : "detached");
            sb3.append("] ");
            sb2.append(J4.d.y2(sb3.toString()));
            sb2.append(J4.d.q2("FileNotFoundException"));
            J4.d.b2(sb2.toString());
            J4.d.b2(J4.d.y2("I/Performance is being affected by this exception, resolve it!!"));
        } catch (Exception e11) {
            e11.printStackTrace();
            J4.d.E1();
            StringBuilder sb4 = new StringBuilder();
            StringBuilder sb5 = new StringBuilder();
            sb5.append("SoundPlayer [");
            GameObject gameObject2 = this.f79250n;
            sb5.append(gameObject2 != null ? gameObject2.P0() : "detached");
            sb5.append("] ");
            sb4.append(J4.d.y2(sb5.toString()));
            sb4.append(e11.getMessage());
            J4.d.b2(sb4.toString());
            J4.d.b2(J4.d.y2("I/Performance is being affected by this exception, resolve it!!"));
        }
    }

    private void markEmitterSourceDirty() {
        this.f76644S = true;
    }

    private void onEmitterReady() {
        attachEmitterListeners(this.f76635J);
        applyEmitterStateAndProperties();
        applyGameStatePause(c8.b.k(), c8.b.i());
    }

    private void refreshEmitterSourceOnEngine() {
        K8.a.I(new k());
    }

    public void syncGlobalPosition() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.transform == null) {
            return;
        }
        synchronized (this.f76636K) {
            this.f79250n.transform.u0(this.f76636K);
        }
    }

    private void triggerOnStarted(boolean running, boolean paused) {
        if (isHierarchyActive()) {
            if (running && !this.f76645T) {
                triggerPlayOnStart();
            }
            this.f76645T = running;
            applyGameStatePause(running, paused);
        }
    }

    private void triggerPlayOnStart() {
        if (this.f76632G) {
            return;
        }
        if (this.playOnStart) {
            play();
        }
        this.f76632G = true;
    }

    @Override
    public int countAsync() {
        return 1;
    }

    public void createGizmo() {
        if (this.f76638M == null) {
            D8.b bVar = W7.b.f27306f.f2458a.f4951n;
            this.f76638M = new GizmoObject();
            try {
                TextureConfig textureConfig = new TextureConfig();
                textureConfig.j0(TextureConfig.c.Nearest);
                ub.g v10 = C16165b.v(bVar.f4960d, textureConfig);
                if (v10 != null) {
                    this.f76638M.setTexture(v10.p0());
                } else {
                    Log.e(f76628X, "Failed to load gizmo texture");
                }
                this.f76638M.setScaleBasedCamera(true);
                this.f76638M.setScale(0.15f);
                try {
                    this.f76638M.setVertex(bVar.c().x2());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f76638M = null;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                this.f76638M = null;
            }
        }
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.add(this.file);
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.SOUND_PLAYER);
    }

    public Curve getDistanceCurve() {
        return this.distanceCurve;
    }

    public String getFile() {
        return this.file;
    }

    public void getGlobalPositionForAudio(Vector3 output) {
        synchronized (this.f76636K) {
            output.set(this.f76636K);
        }
    }

    @Override
    public int getIconResource() {
        return R.drawable.sound_file;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_soundplayer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new l(), Lang.l(Lang.T.SOUND_FILE), b.a.InputFile, C2633l.d(".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv", ".imvs", ".sound")));
        m mVar = new m();
        String l10 = Lang.l(Lang.T.PLAY_ON_START);
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(mVar, l10, aVar));
        n nVar = new n();
        String l11 = Lang.l(Lang.T.DIAMETER);
        b.a aVar2 = b.a.SLFloat;
        C5.b bVar = new C5.b(nVar, l11, aVar2);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar.d(gameObject, this, "diameter", cVar);
        linkedList.add(bVar);
        linkedList.add(new C5.b(new o(), Lang.l(Lang.T.LOOP), aVar));
        linkedList.add(new C5.b(new p(), "Destroy On Finish", aVar));
        C5.b bVar2 = new C5.b(new a(), Lang.l(Lang.T.SPEED), aVar2);
        bVar2.d(gameObject, this, "speed", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new b(), "Volume ", b.a.SLFloat01);
        bVar3.d(gameObject, this, "volume", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new c(), Lang.l(Lang.T.PITCH), b.a.SLFloatSlider, 0.0f, 2.0f, 0.0f);
        bVar4.d(gameObject, this, "pitch", cVar);
        linkedList.add(bVar4);
        linkedList.add(F5.c.i(Lang.l(Lang.T.MODE), q.class, this.mode, new d()));
        if (this.mode == q.Play_3D) {
            linkedList.add(J9.c.a(Lang.l(Lang.T.DISTANCE_CURVE), this.distanceCurve, context));
        }
        C5.b bVar5 = new C5.b((String) null, b.a.Vector, new C5.b[3]);
        C5.b[] bVarArr = bVar5.f2081p;
        e eVar = new e();
        String l12 = Lang.l(Lang.T.STOP);
        b.a aVar3 = b.a.ButtonMatchParent;
        bVarArr[0] = new C5.b(eVar, l12, aVar3);
        bVar5.f2081p[1] = new C5.b("", 12);
        bVar5.f2081p[2] = new C5.b(new f(), Lang.l(Lang.T.PLAY), aVar3);
        linkedList.add(bVar5);
        if (this.f76640O) {
            linkedList.add(new C5.b(Lang.l(Lang.T.LOADING_SOUND_IN_BACKGROUND), 12, R.color.theme_error));
        }
        if (this.f76637L == NativeSoundEmitter.c.Playing && SoundListener.getFirstListener() == null) {
            linkedList.add(new C5.b(Lang.l(Lang.T.SOUND_PLAYING_IN_3D_SPACE), 12, R.color.theme_error));
        }
        return linkedList;
    }

    @InterfaceC15237a
    public float getLeftVolume() {
        return this.f76633H;
    }

    @InterfaceC15237a
    public q getMode() {
        return this.mode;
    }

    public float getPitch() {
        return this.pitch;
    }

    @InterfaceC15237a
    public float getRightVolume() {
        return this.f76634I;
    }

    public float getSpeed() {
        return this.speed;
    }

    @Override
    public String getTitle() {
        return f76628X;
    }

    @Override
    public Component.e getType() {
        return Component.e.SoundPlayer;
    }

    @InterfaceC15237a
    public float getVolume() {
        return this.volume;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isDestroyOnFinish() {
        return this.destroyOnFinish;
    }

    public boolean isEffectiveLoop() {
        return this.loop && !this.destroyOnFinish;
    }

    @InterfaceC15237a
    public boolean isLoop() {
        return this.loop;
    }

    public boolean isPaused() {
        return this.f76637L == NativeSoundEmitter.c.Paused;
    }

    public boolean isPausedByEngine() {
        return this.f76643R.get();
    }

    public boolean isPlaying() {
        return this.f76637L == NativeSoundEmitter.c.Playing;
    }

    public boolean isStopped() {
        return this.f76637L == NativeSoundEmitter.c.Stopped;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        String str = this.file;
        if (str != null && !str.isEmpty()) {
            listener.b("Loading sound " + Tc.b.v(this.file));
            this.f76637L = NativeSoundEmitter.c.Stopped;
            ensureEmitterForCurrentSource();
        }
        listener.e();
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        Fc.a aVar = this.f76635J;
        if (aVar != null) {
            aVar.Y();
            try {
                this.f76637L = this.f76635J.F();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f79250n.transform.u(this.f76647V);
        syncGlobalPosition();
        if (this.mode == q.Play_3D) {
            this.f76633H = 0.0f;
            this.f76634I = 0.0f;
            applyEmitterVolumes();
        } else {
            this.f76633H = 1.0f;
            this.f76634I = 1.0f;
            applyEmitterVolumes();
        }
        if (this.f76644S) {
            ensureEmitterForCurrentSource();
        }
        if (isHierarchyActive()) {
            triggerOnStarted(c8.b.k(), c8.b.i());
            return;
        }
        Fc.a aVar = this.f76635J;
        if (aVar != null) {
            aVar.Q(NativeSoundEmitter.c.Paused);
        }
    }

    @Override
    public void onDetach() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76647V);
        }
        super.onDetach();
        this.f76632G = false;
        Fc.a aVar = this.f76635J;
        if (aVar != null) {
            aVar.Q(NativeSoundEmitter.c.Stopped);
            this.f76635J.destroy();
            this.f76635J = null;
        }
        this.f76631F = false;
    }

    @Override
    public void onGameStateChanged(boolean running, boolean paused) {
        super.onGameStateChanged(running, paused);
        if (this.f76644S) {
            ensureEmitterForCurrentSource();
        }
        triggerOnStarted(running, paused);
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (!enabled) {
            Fc.a aVar = this.f76635J;
            if (aVar == null || !aVar.isPlaying()) {
                return;
            }
            this.f76635J.Q(NativeSoundEmitter.c.Paused);
            this.f76646U = true;
            return;
        }
        if (!this.f76646U) {
            triggerOnStarted(c8.b.k(), c8.b.i());
            return;
        }
        this.f76646U = false;
        Fc.a aVar2 = this.f76635J;
        if (aVar2 != null) {
            aVar2.Q(NativeSoundEmitter.c.Playing);
        }
    }

    public void pause() {
        this.f76637L = NativeSoundEmitter.c.Paused;
        applyEmitterState();
    }

    public void pauseByEngine() {
        if (this.f76637L != NativeSoundEmitter.c.Playing) {
            return;
        }
        this.f76643R.set(true);
        this.f76637L = NativeSoundEmitter.c.Paused;
        applyEmitterState();
    }

    public void play() {
        this.f76637L = NativeSoundEmitter.c.Playing;
        ensureEmitterForCurrentSource();
        applyEmitterStateAndProperties();
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10 = dictionary.f(this.file);
        if (f10 != null) {
            dictionary.h("SoundPlayer: REPLACING " + this.file + " TO " + f10.b());
            this.file = f10.b();
        }
    }

    public void seekTo(int msec) {
        Fc.a aVar = this.f76635J;
        if (aVar != null) {
            aVar.seekTo(msec);
        }
    }

    @InterfaceC15237a
    public void setDestroyOnFinish(boolean destroyOnFinish) {
        this.destroyOnFinish = destroyOnFinish;
        applyEmitterProperties();
    }

    public void setDistanceCurve(Curve distanceCurve) {
        if (distanceCurve == null) {
            throw new NullPointerException("Distance curve can't be null");
        }
        this.distanceCurve = distanceCurve;
    }

    public void setFile(String file) {
        String str = this.file;
        if ((str == null ? file == null : str.equals(file)) && this.f76630E == null) {
            return;
        }
        this.file = file;
        this.f76630E = null;
        markEmitterSourceDirty();
        if (this.f79250n != null) {
            refreshEmitterSourceOnEngine();
        }
    }

    @InterfaceC15237a
    public void setLeftVolume(float leftVolume) {
        this.f76633H = leftVolume;
        applyEmitterVolumes();
    }

    @InterfaceC15237a
    public void setLoop(boolean loop) {
        this.loop = loop;
        applyEmitterProperties();
    }

    @InterfaceC15237a
    public void setMode(q mode) {
        this.mode = mode;
        if (mode == q.Play_2D) {
            setStereoVolumes(1.0f, 1.0f);
        } else if (SoundListener.getFirstListener() == null) {
            setStereoVolumes(0.0f, 0.0f);
        }
        applyEmitterProperties();
    }

    public void setPitch(float pitch) {
        this.pitch = Nc.b.E(0.0f, pitch, 2.0f);
        applyEmitterProperties();
    }

    @InterfaceC15237a
    public void setRightVolume(float rightVolume) {
        this.f76634I = rightVolume;
        applyEmitterVolumes();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76648W = run;
    }

    public void setSpeed(float speed) {
        this.speed = speed;
        applyEmitterProperties();
    }

    public void setStereoVolumes(float leftVolume, float rightVolume) {
        this.f76633H = leftVolume;
        this.f76634I = rightVolume;
        applyEmitterVolumes();
    }

    @InterfaceC15237a
    public void setVolume(float volume) {
        this.volume = volume;
        applyEmitterProperties();
    }

    public void stop() {
        this.f76637L = NativeSoundEmitter.c.Stopped;
        applyEmitterState();
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76648W;
        if (component != null) {
            return component;
        }
        JAVARuntime.SoundPlayer soundPlayer = new JAVARuntime.SoundPlayer(this);
        this.f76648W = soundPlayer;
        return soundPlayer;
    }

    public void unPauseByEngine() {
        K8.a.I(new g());
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        createGizmo();
        if (this.f76638M != null) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
            this.f79250n.transform.u0(vector3);
            this.f76638M.setPosition(vector3.toJAVARuntime());
            this.f79250n.transform.C0(quaternion);
            this.f76638M.setRotation(quaternion.N0());
            JP.release(vector3);
            JP.release(quaternion);
            Ub.a.a(this.f76638M);
        }
    }

    public void useIOFile(File file) {
        if (file == null) {
            this.file = null;
            this.f76630E = null;
        } else {
            this.file = "@IO";
            this.f76630E = file;
        }
        markEmitterSourceDirty();
        if (this.f79250n != null) {
            refreshEmitterSourceOnEngine();
        }
    }

    @Override
    public Component mo1248clone() {
        SoundPlayer soundPlayer = new SoundPlayer();
        soundPlayer.file = this.file;
        soundPlayer.playOnStart = this.playOnStart;
        soundPlayer.volume = this.volume;
        soundPlayer.diameter = this.diameter;
        soundPlayer.loop = this.loop;
        soundPlayer.destroyOnFinish = this.destroyOnFinish;
        soundPlayer.pitch = this.pitch;
        soundPlayer.speed = this.speed;
        soundPlayer.mode = this.mode;
        soundPlayer.distanceCurve = Curve.k(this.distanceCurve);
        return soundPlayer;
    }

    public SoundPlayer(String file) {
        super(f76628X);
        this.playOnStart = true;
        this.volume = 1.0f;
        this.diameter = 20.0f;
        this.pitch = 1.0f;
        this.speed = 1.0f;
        this.mode = q.Play_3D;
        this.f76633H = 1.0f;
        this.f76634I = 1.0f;
        this.f76636K = new Vector3();
        this.f76637L = NativeSoundEmitter.c.Stopped;
        this.f76639N = null;
        this.f76640O = false;
        this.f76641P = false;
        this.f76642Q = false;
        this.f76643R = new AtomicBoolean();
        this.f76644S = true;
        this.f76647V = new i();
        this.file = file;
        Curve curve = new Curve(N7.c.t());
        this.distanceCurve = curve;
        curve.clear();
        this.distanceCurve.f(0.0f, 1.0f);
        this.distanceCurve.f(0.25f, 0.8f);
        this.distanceCurve.f(0.75f, 0.2f);
        this.distanceCurve.f(1.0f, 0.0f);
        this.distanceCurve.apply();
    }

    public SoundPlayer(String file, boolean loop) {
        super(f76628X);
        this.playOnStart = true;
        this.volume = 1.0f;
        this.diameter = 20.0f;
        this.pitch = 1.0f;
        this.speed = 1.0f;
        this.mode = q.Play_3D;
        this.f76633H = 1.0f;
        this.f76634I = 1.0f;
        this.f76636K = new Vector3();
        this.f76637L = NativeSoundEmitter.c.Stopped;
        this.f76639N = null;
        this.f76640O = false;
        this.f76641P = false;
        this.f76642Q = false;
        this.f76643R = new AtomicBoolean();
        this.f76644S = true;
        this.f76647V = new i();
        this.file = file;
        this.loop = loop;
        Curve curve = new Curve(N7.c.t());
        this.distanceCurve = curve;
        curve.clear();
        this.distanceCurve.f(0.0f, 1.0f);
        this.distanceCurve.f(0.25f, 0.8f);
        this.distanceCurve.f(0.75f, 0.2f);
        this.distanceCurve.f(1.0f, 0.0f);
        this.distanceCurve.apply();
    }

    public SoundPlayer(boolean fromInit) {
        super(f76628X);
        this.playOnStart = true;
        this.volume = 1.0f;
        this.diameter = 20.0f;
        this.pitch = 1.0f;
        this.speed = 1.0f;
        this.mode = q.Play_3D;
        this.f76633H = 1.0f;
        this.f76634I = 1.0f;
        this.f76636K = new Vector3();
        this.f76637L = NativeSoundEmitter.c.Stopped;
        this.f76639N = null;
        this.f76640O = false;
        this.f76641P = false;
        this.f76642Q = false;
        this.f76643R = new AtomicBoolean();
        this.f76644S = true;
        this.f76647V = new i();
    }
}
