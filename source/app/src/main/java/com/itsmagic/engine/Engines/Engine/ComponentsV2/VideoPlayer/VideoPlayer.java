package com.itsmagic.engine.Engines.Engine.ComponentsV2.VideoPlayer;

import C5.b;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Runnable;
import android.content.Context;
import android.net.Uri;
import android.util.DisplayMetrics;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundPlayer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGB8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGBA8;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import ub.q;
import yb.C16165b;

public class VideoPlayer extends Component {

    public static final String f77631Y = "VideoPlayer";

    public static final Class f77632Z = VideoPlayer.class;

    public boolean f77633E;

    public l f77634F;

    public l f77635G;

    public String f77636H;

    public String f77637I;

    public int f77638J;

    public int f77639K;

    public int f77640L;

    public boolean f77641M;

    public float f77642N;

    public VideoFramePullDecoder f77643O;

    public q f77644P;

    public NativeTextureRGB8 f77645Q;

    public NativeTextureRGBA8 f77646R;

    public boolean f77647S;

    public boolean f77648T;

    public NativeByteBuffer f77649U;

    public final AtomicBoolean f77650V;

    public final Runnable f77651W;

    public JAVARuntime.Component f77652X;

    @Expose
    private ColorINT chromaKeyColor;

    @Expose
    private boolean chromaKeyEnabled;

    @Expose
    private float chromaKeyTolerance;

    @Expose
    @eb.f
    private int height;

    @Expose
    public boolean loop;

    @Expose
    public String outTextureFile;

    @Expose
    public boolean playOnStart;

    @Expose
    public String videoFile;

    @Expose
    @eb.f
    private int width;

    public class a implements D5.h {

        public class C1288a implements Runnable {

            public final Variable f77654b;

            public C1288a(final Variable val$variable) {
                this.f77654b = val$variable;
            }

            @Override
            public void run() {
                VideoPlayer.this.setChromaKeyColor(new ColorINT(this.f77654b.color_value.intColor));
                VideoPlayer.this.reloadInspector();
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", VideoPlayer.this.resolveChromaKeyColor());
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.color_value == null) {
                return;
            }
            K8.a.I(new C1288a(variable));
        }
    }

    public class b implements D5.h {

        public class a implements Runnable {

            public final Variable f77657b;

            public a(final Variable val$variable) {
                this.f77657b = val$variable;
            }

            @Override
            public void run() {
                VideoPlayer.this.setChromaKeyTolerance(this.f77657b.float_value);
                VideoPlayer.this.reloadInspector();
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", VideoPlayer.this.chromaKeyTolerance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return VideoPlayer.f77632Z;
        }

        @Override
        public String c() {
            return VideoPlayer.f77631Y;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.VIDEO);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            if (VideoPlayer.this.f77643O != null && VideoPlayer.this.f77649U != null) {
                VideoPlayer.this.f77643O.s(VideoPlayer.this.f77649U);
            }
            VideoPlayer.this.f77649U = null;
            VideoPlayer.this.f77650V.set(false);
            if (VideoPlayer.this.f77644P != null) {
                VideoPlayer.this.f77644P.Q();
            }
        }
    }

    public class e implements D5.h {

        public class a implements Runnable {

            public final Variable f77661b;

            public a(final Variable val$variable) {
                this.f77661b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("VideoPlayer - set video file") : null;
                try {
                    VideoPlayer videoPlayer = VideoPlayer.this;
                    videoPlayer.videoFile = this.f77661b.str_value;
                    videoPlayer.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            if (VideoPlayer.this.videoFile == null) {
                return new Variable("", "");
            }
            return new Variable("", VideoPlayer.this.videoFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public class a implements Runnable {

            public final Variable f77664b;

            public a(final Variable val$variable) {
                this.f77664b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("VideoPlayer - set output texture") : null;
                try {
                    VideoPlayer videoPlayer = VideoPlayer.this;
                    videoPlayer.outTextureFile = this.f77664b.str_value;
                    videoPlayer.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public f() {
        }

        @Override
        public Variable get() {
            if (VideoPlayer.this.outTextureFile == null) {
                return new Variable("", "");
            }
            return new Variable("", VideoPlayer.this.outTextureFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class g implements D5.h {

        public class a implements Runnable {

            public final Variable f77667b;

            public a(final Variable val$variable) {
                this.f77667b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("VideoPlayer - set width") : null;
                try {
                    VideoPlayer.this.width = Math.max(1, this.f77667b.int_value);
                    VideoPlayer.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", VideoPlayer.this.width + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class h implements D5.h {

        public class a implements Runnable {

            public final Variable f77670b;

            public a(final Variable val$variable) {
                this.f77670b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("VideoPlayer - set height") : null;
                try {
                    VideoPlayer.this.height = Math.max(1, this.f77670b.int_value);
                    VideoPlayer.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", VideoPlayer.this.height + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", VideoPlayer.this.playOnStart + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VideoPlayer.this.playOnStart = variable.booolean_value.booleanValue();
            }
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", VideoPlayer.this.loop + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VideoPlayer.this.loop = variable.booolean_value.booleanValue();
            }
        }
    }

    public class k implements D5.h {
        public k() {
        }

        @Override
        public Variable get() {
            return new Variable("", VideoPlayer.this.chromaKeyEnabled + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VideoPlayer.this.setChromaKeyEnabled(variable.booolean_value.booleanValue());
            }
        }
    }

    public enum l {
        STOPPED,
        PAUSED,
        PLAYING
    }

    static {
        C13201a.b(new c());
    }

    public VideoPlayer() {
        super(f77631Y);
        this.playOnStart = true;
        this.loop = true;
        this.chromaKeyColor = new ColorINT(0, 255, 0);
        this.chromaKeyEnabled = false;
        this.chromaKeyTolerance = 0.02f;
        this.width = DisplayMetrics.DENSITY_XXHIGH;
        this.height = 270;
        this.f77634F = l.STOPPED;
        this.f77638J = -1;
        this.f77639K = -1;
        this.f77640L = Integer.MIN_VALUE;
        this.f77642N = Float.NaN;
        this.f77650V = new AtomicBoolean();
        this.f77651W = new d();
    }

    private File getFile() {
        String str = this.f77636H;
        if (!isAsset(str)) {
            if (this.f77633E) {
                return new File(str);
            }
            return new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str));
        }
        String str2 = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str;
        if (str2.contains("//")) {
            str2 = str2.replace("//", "/");
        }
        String replace = str2.replace("@@ASSET@@", "");
        while (replace.startsWith("/")) {
            replace = replace.substring(1);
        }
        File a10 = B9.a.a(replace);
        if (a10 != null) {
            return a10;
        }
        return null;
    }

    private static boolean isAsset(String file) {
        if (com.itsmagic.engine.Core.Components.ProjectController.a.T().equals("@compiled@")) {
            return true;
        }
        return file.startsWith("@@ASSET@@") || com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()).startsWith("@@ASSET@@");
    }

    private void releaseNativeTextures() {
        this.f77649U = null;
        this.f77650V.set(false);
        NativeTextureRGB8 nativeTextureRGB8 = this.f77645Q;
        if (nativeTextureRGB8 != null) {
            try {
                nativeTextureRGB8.destroyImmediate();
            } catch (Exception unused) {
            }
            this.f77645Q = null;
        }
        NativeTextureRGBA8 nativeTextureRGBA8 = this.f77646R;
        if (nativeTextureRGBA8 != null) {
            try {
                nativeTextureRGBA8.destroyImmediate();
            } catch (Exception unused2) {
            }
            this.f77646R = null;
        }
    }

    public ColorINT resolveChromaKeyColor() {
        ColorINT colorINT = this.chromaKeyColor;
        return colorINT != null ? colorINT : new ColorINT(0, 255, 0);
    }

    private int resolveChromaKeyColorInt() {
        return resolveChromaKeyColor().intColor;
    }

    public ColorINT getChromaKeyColor() {
        return this.chromaKeyColor;
    }

    public float getChromaKeyTolerance() {
        return this.chromaKeyTolerance;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.videoFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.videoFile);
        }
        String str2 = this.outTextureFile;
        if (str2 != null && !str2.isEmpty()) {
            c2632k.f9114a.add(this.outTextureFile);
        }
        return c2632k;
    }

    @Override
    public int getIconResource() {
        return R.drawable.video_player2;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        e eVar = new e();
        String l10 = Lang.l(Lang.T.VIDEO);
        b.a aVar = b.a.InputFile;
        linkedList.add(new C5.b(eVar, l10, aVar, ".imv"));
        C5.b bVar = new C5.b(new f(), Lang.l(Lang.T.OUTPUT_TEXTURE), aVar, ".ivo");
        g gVar = new g();
        String l11 = Lang.l(Lang.T.WIDTH);
        b.a aVar2 = b.a.SLInt;
        linkedList.add(new C5.b(gVar, l11, aVar2));
        if (gameObject != null) {
            bVar.d(gameObject, this, "width", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        }
        linkedList.add(bVar);
        C5.b bVar2 = new C5.b(new h(), Lang.l(Lang.T.HEIGHT), aVar2);
        if (gameObject != null) {
            bVar2.d(gameObject, this, "height", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        }
        linkedList.add(bVar2);
        i iVar = new i();
        String l12 = Lang.l(Lang.T.PLAY_ON_START);
        b.a aVar3 = b.a.SLBoolean;
        linkedList.add(new C5.b(iVar, l12, aVar3));
        linkedList.add(new C5.b(new j(), Lang.l(Lang.T.LOOP), aVar3));
        linkedList.add(new C5.b(new k(), "Chroma key enabled", aVar3));
        linkedList.add(new C5.b(new a(), "Chroma key color", b.a.Color, context));
        linkedList.add(new C5.b(new b(), "Chroma key tolerance", b.a.SLFloat01));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f77631Y;
    }

    @Override
    public Component.e getType() {
        return Component.e.VideoPlayer;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    public boolean isChromaKeyEnabled() {
        return this.chromaKeyEnabled;
    }

    public boolean isPaused() {
        return this.f77634F == l.PAUSED;
    }

    public boolean isPlaying() {
        return this.f77634F == l.PLAYING;
    }

    public boolean isStopped() {
        return this.f77634F == l.STOPPED;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        this.f77636H = null;
        this.f77637I = null;
        this.f77638J = -1;
        this.f77639K = -1;
        VideoFramePullDecoder videoFramePullDecoder = this.f77643O;
        if (videoFramePullDecoder != null) {
            videoFramePullDecoder.r();
            this.f77643O = null;
        }
        q qVar = this.f77644P;
        if (qVar != null) {
            qVar.I0(null);
            this.f77644P = null;
        }
        releaseNativeTextures();
    }

    public void pause() {
        this.f77634F = l.PAUSED;
    }

    public void play() {
        this.f77634F = l.PLAYING;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        NativeByteBuffer nativeByteBuffer;
        String str;
        String str2;
        super.preUpdate(gameObject, isEditor);
        this.width = Nc.b.F(16, this.width, 4096);
        this.height = Nc.b.F(16, this.height, 4096);
        if (!this.f77650V.get() && ((str = this.f77636H) == null || !str.equals(this.videoFile) || (str2 = this.f77637I) == null || !str2.equals(this.outTextureFile) || this.f77638J != this.width || this.f77639K != this.height || this.f77641M != this.chromaKeyEnabled || this.f77642N != this.chromaKeyTolerance || this.f77640L != resolveChromaKeyColorInt())) {
            VideoFramePullDecoder videoFramePullDecoder = this.f77643O;
            if (videoFramePullDecoder != null) {
                videoFramePullDecoder.r();
                this.f77643O = null;
            }
            q qVar = this.f77644P;
            if (qVar != null) {
                qVar.I0(null);
                this.f77644P = null;
            }
            releaseNativeTextures();
            this.f77636H = this.videoFile;
            this.f77637I = this.outTextureFile;
            this.f77638J = this.width;
            this.f77639K = this.height;
            this.f77641M = this.chromaKeyEnabled;
            this.f77642N = this.chromaKeyTolerance;
            this.f77640L = resolveChromaKeyColorInt();
            String str3 = this.videoFile;
            if (str3 == null || str3.isEmpty() || getFile() == null || !getFile().exists()) {
                System.out.println("VIDEOPLAYER:FAILED: FILE DOESNT EXISTS");
            } else {
                String str4 = this.outTextureFile;
                if (str4 == null || str4.isEmpty()) {
                    System.out.println("VIDEOPLAYER:FAILED: OUTTEXTURE NULL");
                } else {
                    q qVar2 = (q) C16165b.u(this.outTextureFile);
                    this.f77644P = qVar2;
                    if (qVar2 != null) {
                        VideoFramePullDecoder videoFramePullDecoder2 = new VideoFramePullDecoder(N7.c.t(), Uri.fromFile(getFile()), this.width, this.height, 4, this.chromaKeyEnabled, resolveChromaKeyColor().C(), resolveChromaKeyColor().x(), resolveChromaKeyColor().p(), this.chromaKeyTolerance);
                        this.f77643O = videoFramePullDecoder2;
                        try {
                            videoFramePullDecoder2.x();
                            this.f77635G = null;
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        TextureConfig textureConfig = new TextureConfig();
                        textureConfig.allowModifications = true;
                        textureConfig.gammaCorrection = true;
                        textureConfig.genMipmaps = false;
                        if (this.chromaKeyEnabled) {
                            NativeTextureRGBA8 nativeTextureRGBA8 = new NativeTextureRGBA8(this.f77643O.l(), this.f77643O.k(), textureConfig);
                            this.f77646R = nativeTextureRGBA8;
                            this.f77644P.I0(nativeTextureRGBA8);
                        } else {
                            NativeTextureRGB8 nativeTextureRGB8 = new NativeTextureRGB8(this.f77643O.l(), this.f77643O.k(), textureConfig);
                            this.f77645Q = nativeTextureRGB8;
                            this.f77644P.I0(nativeTextureRGB8);
                        }
                    } else {
                        System.out.println("VIDEOPLAYER:FAILED: TEXTURE NOT RENDERABLE");
                    }
                }
            }
        }
        if (this.f77643O != null) {
            if (this.f77650V.compareAndSet(false, true)) {
                B9.c j10 = this.f77643O.j();
                if (j10 != null) {
                    NativeByteBuffer nativeByteBuffer2 = j10.f1601a;
                    this.f77649U = nativeByteBuffer2;
                    try {
                        if (this.chromaKeyEnabled) {
                            NativeTextureRGBA8 nativeTextureRGBA82 = this.f77646R;
                            if (nativeTextureRGBA82 == null) {
                                throw new IllegalStateException("RGBA texture is not initialized");
                            }
                            nativeTextureRGBA82.Z0(nativeByteBuffer2, this.f77651W);
                        } else {
                            NativeTextureRGB8 nativeTextureRGB82 = this.f77645Q;
                            if (nativeTextureRGB82 == null) {
                                throw new IllegalStateException("RGB texture is not initialized");
                            }
                            nativeTextureRGB82.O0(nativeByteBuffer2, this.f77651W);
                        }
                    } catch (RuntimeException e11) {
                        e11.printStackTrace();
                        VideoFramePullDecoder videoFramePullDecoder3 = this.f77643O;
                        if (videoFramePullDecoder3 != null && (nativeByteBuffer = this.f77649U) != null) {
                            videoFramePullDecoder3.s(nativeByteBuffer);
                        }
                        this.f77649U = null;
                        this.f77650V.set(false);
                    }
                } else {
                    this.f77650V.set(false);
                }
            }
            this.f77643O.v(this.loop);
            if (c8.b.k()) {
                if (this.f77634F == l.PAUSED && this.f77647S) {
                    this.f77647S = false;
                    play();
                }
                if (!this.f77648T) {
                    if (this.playOnStart) {
                        play();
                    }
                    this.f77648T = true;
                }
            } else if (this.f77634F == l.PLAYING && !this.f77647S) {
                this.f77647S = true;
                pause();
            }
            l lVar = this.f77635G;
            l lVar2 = this.f77634F;
            if (lVar != lVar2) {
                int ordinal = lVar2.ordinal();
                if (ordinal == 0) {
                    l lVar3 = this.f77635G;
                    if (lVar3 == l.PLAYING || lVar3 == l.PAUSED || lVar3 == null) {
                        this.f77643O.y();
                    }
                } else if (ordinal == 1) {
                    l lVar4 = this.f77635G;
                    if (lVar4 == l.PLAYING || lVar4 == null) {
                        this.f77643O.o();
                    }
                } else if (ordinal == 2) {
                    l lVar5 = this.f77635G;
                    if (lVar5 == l.PAUSED) {
                        try {
                            this.f77643O.x();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    } else if (lVar5 == l.STOPPED || lVar5 == null) {
                        try {
                            this.f77643O.x();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                }
                this.f77635G = this.f77634F;
            }
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        BuildDicFile f11;
        String str = this.videoFile;
        if (str != null && !str.isEmpty() && (f11 = dictionary.f(this.videoFile)) != null) {
            dictionary.h("VideoPlayer: REPLACING " + this.videoFile + " TO " + f11.b());
            this.videoFile = f11.b();
        }
        String str2 = this.outTextureFile;
        if (str2 == null || str2.isEmpty() || (f10 = dictionary.f(this.outTextureFile)) == null) {
            return;
        }
        dictionary.h("VideoPlayer: REPLACING " + this.outTextureFile + " TO " + f10.b());
        this.outTextureFile = f10.b();
    }

    public void resume() {
        this.f77634F = l.PLAYING;
    }

    public void seekTo(int msec) {
        SoundPlayer soundPlayer;
        VideoFramePullDecoder videoFramePullDecoder = this.f77643O;
        if (videoFramePullDecoder == null) {
            throw new RuntimeException("Video is not loaded!");
        }
        try {
            videoFramePullDecoder.t(msec);
            GameObject gameObject = this.f79250n;
            if (gameObject == null || (soundPlayer = (SoundPlayer) gameObject.d0(SoundPlayer.class)) == null) {
                return;
            }
            soundPlayer.seekTo(msec);
        } catch (IllegalStateException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void setChromaKeyColor(ColorINT chromaKeyColor) {
        this.chromaKeyColor = chromaKeyColor != null ? chromaKeyColor.clone() : new ColorINT(0, 255, 0);
    }

    public void setChromaKeyEnabled(boolean chromaKeyEnabled) {
        this.chromaKeyEnabled = chromaKeyEnabled;
    }

    public void setChromaKeyTolerance(float chromaKeyTolerance) {
        this.chromaKeyTolerance = Nc.b.E(0.0f, chromaKeyTolerance, 1.0f);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f77652X = run;
    }

    public void stop() {
        this.f77634F = l.STOPPED;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f77652X;
        if (component != null) {
            return component;
        }
        JAVARuntime.VideoPlayer videoPlayer = new JAVARuntime.VideoPlayer(this);
        this.f77652X = videoPlayer;
        return videoPlayer;
    }

    @Override
    public Component mo1248clone() {
        VideoPlayer videoPlayer = new VideoPlayer();
        videoPlayer.videoFile = this.videoFile;
        videoPlayer.outTextureFile = this.outTextureFile;
        videoPlayer.playOnStart = this.playOnStart;
        videoPlayer.loop = this.loop;
        ColorINT colorINT = this.chromaKeyColor;
        videoPlayer.chromaKeyColor = colorINT != null ? colorINT.clone() : null;
        videoPlayer.chromaKeyEnabled = this.chromaKeyEnabled;
        videoPlayer.chromaKeyTolerance = this.chromaKeyTolerance;
        videoPlayer.width = this.width;
        videoPlayer.height = this.height;
        videoPlayer.f77633E = this.f77633E;
        return videoPlayer;
    }

    public VideoPlayer(String videoFile, String outTextureFile) {
        super(f77631Y);
        this.playOnStart = true;
        this.loop = true;
        this.chromaKeyColor = new ColorINT(0, 255, 0);
        this.chromaKeyEnabled = false;
        this.chromaKeyTolerance = 0.02f;
        this.width = DisplayMetrics.DENSITY_XXHIGH;
        this.height = 270;
        this.f77634F = l.STOPPED;
        this.f77638J = -1;
        this.f77639K = -1;
        this.f77640L = Integer.MIN_VALUE;
        this.f77642N = Float.NaN;
        this.f77650V = new AtomicBoolean();
        this.f77651W = new d();
        this.videoFile = videoFile;
        this.outTextureFile = outTextureFile;
    }
}
