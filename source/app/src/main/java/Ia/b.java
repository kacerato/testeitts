package ia;

import R8.f;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundListener;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundPlayer;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

public class b extends NoCodeNode implements F {

    public static final String f91636i = "Play3DAudioOnce";

    public static final int f91637j = 0;

    public static final int f91638k = 1;

    public static final int f91639l = 2;

    public static final int f91640m = 3;

    public static final int f91641n = 4;

    public static final int f91642o = 0;

    public final NoCodeSlot[] f91643g;

    public final NoCodeSlot[] f91644h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return b.f91636i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Actions/Audio";
        }

        @Override
        public String f() {
            return "Play 3D Audio Once";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public b() {
        NoCodeSlot c10 = new NoCodeSlot("Sound File", H.SOUND_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_SOUND_FILE));
        H h10 = H.NUMBER;
        this.f91643g = new NoCodeSlot[]{c10, new NoCodeSlot("Diameter", h10).c(Lang.l(Lang.T.NOCODE_SLOT_DIAMETER)), new NoCodeSlot("Volume", h10).c(Lang.l(Lang.T.NOCODE_SLOT_VOLUME)), new NoCodeSlot("Pitch", h10).c(Lang.l(Lang.T.NOCODE_SLOT_PITCH)), new NoCodeSlot("Speed", h10).c(Lang.l(Lang.T.NOCODE_SLOT_SPEED))};
        this.f91644h = new NoCodeSlot[]{new NoCodeSlot("audio object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_AUDIO_OBJECT))};
        this.serializedNodeType = f91636i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f91643g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f91644h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Play 3D Audio Once";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 1 ? "20" : (inputIndex == 2 || inputIndex == 3 || inputIndex == 4) ? "1" : "";
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [JAVARuntime.SoundFile, jb.a] */
    @Override
    public void m0() {
        GameObject gameObject;
        Vector3 t02;
        ?? h02 = m.h0(Q(this.f91643g[0]));
        if (h02 == 0 || h02.getFilePath() == null || h02.getFilePath().trim().isEmpty()) {
            s();
            return;
        }
        NoCodeData noCodeData = this.f79021a;
        GameObject h03 = noCodeData != null ? noCodeData.h0() : null;
        GameObject gameObject2 = new GameObject("3D Audio Once");
        if (C13317e.J(h03) && (t02 = h03.J0().t0()) != null) {
            gameObject2.transform.p3(t02.m1249clone());
        }
        if (f.h(SoundListener.class).isEmpty()) {
            SoundListener soundListener = new SoundListener();
            Camera mainCamera = Camera.mainCamera();
            if (mainCamera != null && (gameObject = mainCamera.f79250n) != null) {
                gameObject.r(soundListener);
            }
        }
        SoundPlayer soundPlayer = new SoundPlayer();
        soundPlayer.setFile(h02.getFilePath());
        soundPlayer.setMode(SoundPlayer.q.Play_3D);
        soundPlayer.setLoop(false);
        soundPlayer.setDestroyOnFinish(true);
        soundPlayer.playOnStart = false;
        soundPlayer.diameter = Math.max(0.0f, m.V(Q(this.f91643g[1])));
        soundPlayer.setVolume(m.V(Q(this.f91643g[2])));
        soundPlayer.setPitch(m.V(Q(this.f91643g[3])));
        soundPlayer.setSpeed(m.V(Q(this.f91643g[4])));
        gameObject2.r(soundPlayer);
        gameObject2.Q1();
        soundPlayer.play();
        y0(this.f91644h[0], gameObject2);
        u(this.f91644h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_PLAY_3D_AUDIO_ONCE);
    }
}
