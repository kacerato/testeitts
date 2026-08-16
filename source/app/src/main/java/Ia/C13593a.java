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
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

public class C13593a extends NoCodeNode implements F {

    public static final String f91629h = "Play3DAudioInLoop";

    public static final int f91630i = 0;

    public static final int f91631j = 1;

    public static final int f91632k = 2;

    public static final int f91633l = 3;

    public static final int f91634m = 4;

    public final NoCodeSlot[] f91635g;

    public class C1773a implements p {
        @Override
        public NoCodeNode a() {
            return new C13593a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C13593a.class;
        }

        @Override
        public String c() {
            return C13593a.f91629h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C13593a.class);
        }

        @Override
        public String e() {
            return "Actions/Audio";
        }

        @Override
        public String f() {
            return "Play 3D Audio Play3DAudioInLoop";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C1773a());
    }

    public C13593a() {
        NoCodeSlot c10 = new NoCodeSlot("Sound File", H.SOUND_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_SOUND_FILE));
        H h10 = H.NUMBER;
        this.f91635g = new NoCodeSlot[]{c10, new NoCodeSlot("Diameter", h10).c(Lang.l(Lang.T.NOCODE_SLOT_DIAMETER)), new NoCodeSlot("Volume", h10).c(Lang.l(Lang.T.NOCODE_SLOT_VOLUME)), new NoCodeSlot("Pitch", h10).c(Lang.l(Lang.T.NOCODE_SLOT_PITCH)), new NoCodeSlot("Speed", h10).c(Lang.l(Lang.T.NOCODE_SLOT_SPEED))};
        this.serializedNodeType = f91629h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f91635g;
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
        ?? h02 = m.h0(Q(this.f91635g[0]));
        if (h02 == 0 || h02.getFilePath() == null || h02.getFilePath().trim().isEmpty()) {
            s();
            return;
        }
        if (f.h(SoundListener.class).isEmpty()) {
            SoundListener soundListener = new SoundListener();
            Camera mainCamera = Camera.mainCamera();
            if (mainCamera != null && (gameObject = mainCamera.f79250n) != null) {
                gameObject.r(soundListener);
            }
        }
        NoCodeData noCodeData = this.f79021a;
        GameObject h03 = noCodeData != null ? noCodeData.h0() : null;
        if (C13317e.J(h03)) {
            SoundPlayer soundPlayer = (SoundPlayer) h03.c0(Component.e.SoundPlayer);
            if (soundPlayer == null) {
                soundPlayer = new SoundPlayer();
                h03.r(soundPlayer);
            }
            soundPlayer.setFile(h02.getFilePath());
            soundPlayer.setMode(SoundPlayer.q.Play_3D);
            soundPlayer.setLoop(true);
            soundPlayer.setDestroyOnFinish(false);
            soundPlayer.playOnStart = false;
            soundPlayer.diameter = Math.max(0.0f, m.V(Q(this.f91635g[1])));
            soundPlayer.setVolume(m.V(Q(this.f91635g[2])));
            soundPlayer.setPitch(m.V(Q(this.f91635g[3])));
            soundPlayer.setSpeed(m.V(Q(this.f91635g[4])));
            soundPlayer.play();
        }
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_PLAY_3D_AUDIO_IN_LOOP);
    }
}
