package com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound;

import JAVARuntime.GizmoObject;
import N7.c;
import R8.f;
import android.content.Context;
import android.util.Log;
import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundPlayer;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.j;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import ub.g;
import v3.i;
import yb.C16165b;

public class SoundListener extends Component implements Serializable {

    public static final String f76614H = "SoundListener";

    public static final Class f76615I = SoundListener.class;

    public static final Vector3 f76616J;

    public static final Vector3 f76617K;

    public static final Vector3 f76618L;

    public static final Vector3 f76619M;

    public static final Vector3 f76620N;

    public static final Vector3 f76621O;

    public static final float f76622P = 0.2f;

    public static final float f76623Q = 0.3f;

    public static final float f76624R = 0.9f;

    public GizmoObject f76625E;

    public transient ModelRenderer f76626F;

    public JAVARuntime.Component f76627G;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return SoundListener.f76615I;
        }

        @Override
        public String c() {
            return SoundListener.f76614H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SOUND);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.SOUND_LISTENER);
        }
    }

    public class b implements i {
        @Override
        public void a(c.g currentPage) {
            try {
                List<Component> h10 = f.h(SoundPlayer.class);
                for (int i10 = 0; i10 < h10.size(); i10++) {
                    try {
                        SoundPlayer soundPlayer = (SoundPlayer) h10.get(i10);
                        if (currentPage == c.g.OutOfApp) {
                            soundPlayer.pauseByEngine();
                        } else if (soundPlayer.isPausedByEngine()) {
                            soundPlayer.unPauseByEngine();
                        }
                    } catch (Exception e10) {
                        throw new RuntimeException(e10);
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    static {
        C13201a.b(new a());
        EditorActivity.Q(new b());
        f76616J = new Vector3();
        f76617K = new Vector3();
        f76618L = new Vector3();
        f76619M = new Vector3();
        f76620N = new Vector3();
        f76621O = new Vector3();
    }

    public SoundListener() {
        super(f76614H);
    }

    private void ensureAudioCacheForFrame() {
        this.f79250n.transform.u0(f76619M);
        Transform transform = this.f79250n.transform;
        Vector3 vector3 = f76616J;
        transform.a0(vector3);
        Transform transform2 = this.f79250n.transform;
        Vector3 vector32 = f76617K;
        transform2.S2(vector32);
        Transform transform3 = this.f79250n.transform;
        Vector3 vector33 = f76618L;
        transform3.c2(vector33);
        vector32.addLocal(vector3, 0.2f);
        vector33.addLocal(vector3, 0.2f);
        vector32.normalizeLocal();
        vector33.normalizeLocal();
    }

    public static SoundListener getFirstListener() {
        try {
            List<Component> h10 = f.h(SoundListener.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                SoundListener soundListener = (SoundListener) h10.get(i10);
                if (soundListener.isHierarchyActive() && soundListener.f79250n != null) {
                    return soundListener;
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static void onListenerDeleted(SoundListener listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        if (getFirstListener() == null) {
            try {
                List<Component> h10 = f.h(SoundPlayer.class);
                for (int i10 = 0; i10 < h10.size(); i10++) {
                    try {
                        ((SoundPlayer) h10.get(i10)).setStereoVolumes(0.0f, 0.0f);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void calculateSound(SoundPlayer player) {
        if (player.getMode() == SoundPlayer.q.Play_2D) {
            player.setStereoVolumes(1.0f, 1.0f);
            return;
        }
        Vector3 vector3 = f76620N;
        player.getGlobalPositionForAudio(vector3);
        Vector3 vector32 = f76619M;
        if (j.h(vector32, vector3)) {
            player.setStereoVolumes(1.0f, 1.0f);
            return;
        }
        Vector3 vector33 = f76621O;
        vector3.sub(vector32, vector33);
        float lengthF = vector33.lengthF();
        vector33.normalizeLocal();
        float p10 = player.getDistanceCurve().p(Nc.b.I(lengthF / (player.diameter / 2.0f)));
        if (p10 <= 0.0f) {
            player.setStereoVolumes(0.0f, 0.0f);
            return;
        }
        float dot = f76617K.dot(vector33);
        float dot2 = f76618L.dot(vector33);
        float f10 = -((0.59999996f * p10) + 0.3f);
        player.setStereoVolumes(Nc.b.h1(Nc.b.M(dot, f10), f10, 1.0f, 0.0f, 1.0f) * p10, Nc.b.h1(Nc.b.M(dot2, f10), f10, 1.0f, 0.0f, 1.0f) * p10);
    }

    public void createGizmo() {
        D8.b bVar = W7.b.f27306f.f2458a.f4952o;
        if (this.f76625E == null) {
            GizmoObject gizmoObject = new GizmoObject();
            this.f76625E = gizmoObject;
            try {
                gizmoObject.setVertex(bVar.c().x2());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.j0(TextureConfig.c.Nearest);
            g v10 = C16165b.v(bVar.f4960d, textureConfig);
            if (v10 != null) {
                this.f76625E.setTexture(v10.p0());
            } else {
                Log.e(f76614H, "Failed to load gizmo texture");
            }
            this.f76625E.setScaleBasedCamera(true);
            this.f76625E.setScale(0.15f);
            this.f76625E.setMaxScaleBasedCameraSize(1.0f);
        }
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.SOUND_LISTENER);
    }

    @Override
    public int getIconResource() {
        return R.drawable.sound_file;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_soundlistener;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f76614H;
    }

    @Override
    public Component.e getType() {
        return Component.e.SoundListener;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        try {
            if (getFirstListener() == this) {
                List<Component> h10 = f.h(SoundPlayer.class);
                for (int i10 = 0; i10 < h10.size(); i10++) {
                    try {
                        calculateSound((SoundPlayer) h10.get(i10));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override
    public void onDetach() {
        ModelRenderer modelRenderer = this.f76626F;
        if (modelRenderer != null) {
            modelRenderer.onDetach();
            this.f76626F = null;
        }
        onListenerDeleted(this);
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            return;
        }
        onListenerDeleted(this);
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        try {
            if (getFirstListener() == this) {
                ensureAudioCacheForFrame();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76627G = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76627G;
        if (component != null) {
            return component;
        }
        JAVARuntime.SoundListener soundListener = new JAVARuntime.SoundListener(this);
        this.f76627G = soundListener;
        return soundListener;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        createGizmo();
        if (this.f76625E != null) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
            this.f79250n.transform.u0(vector3);
            this.f76625E.setPosition(vector3.toJAVARuntime());
            this.f79250n.transform.C0(quaternion);
            this.f76625E.setRotation(quaternion.N0());
            JP.release(vector3);
            JP.release(quaternion);
            Ub.a.a(this.f76625E);
        }
    }

    @Override
    public Component mo1248clone() {
        return new SoundListener();
    }
}
