package com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone;

import C5.b;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.Armature;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import ib.InterfaceC13601h;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class SkinJoint extends Component implements Serializable {

    public static final String f76378P = "SkinJoint";

    public static final Class f76379Q = SkinJoint.class;

    public final float[] f76380E;

    public final float[] f76381F;

    public final float[] f76382G;

    public p9.b f76383H;

    public SkinnedModelRenderer f76384I;

    public Armature f76385J;

    public boolean f76386K;

    public String f76387L;

    public float[] f76388M;

    public final InterfaceC13601h f76389N;

    public JAVARuntime.Component f76390O;

    @Expose
    @f
    public int index;

    @Expose
    @f
    public float[] inverseMatrix;

    @Expose
    @f
    private float[] localOriginalMatrix;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return SkinJoint.f76379Q;
        }

        @Override
        public String c() {
            return SkinJoint.f76378P;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.MODEL_RENDERERS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.SKIN_JOINT);
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            if (SkinJoint.this.f76385J != null) {
                SkinJoint.this.f76385J.notifyBonePoseChanged();
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public SkinJoint() {
        super(f76378P);
        this.f76380E = new float[16];
        this.f76381F = new float[16];
        this.f76382G = new float[16];
        this.f76386K = false;
        this.f76388M = null;
        this.f76389N = new b();
    }

    private boolean calculateParent(GameObject o10, GameObject c10) {
        if (o10 == null) {
            return false;
        }
        if (o10 == c10) {
            return true;
        }
        return calculateParent(o10.f79294k, c10);
    }

    private void clearSkinningOwners(boolean notifyStructureChange) {
        Transform transform;
        Armature armature = this.f76385J;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76389N);
        }
        this.f76384I = null;
        this.f76385J = null;
        if (!notifyStructureChange || armature == null) {
            return;
        }
        armature.notifyBoneStructureChanged();
    }

    private void drawCG(X8.a gizmo, Transform copyFrom, float scale) {
        gizmo.g(copyFrom.t0());
        gizmo.i(scale);
        gizmo.h(Quaternion.X0());
        gizmo.d(this.f79250n);
    }

    private boolean isSelectedAParent(GameObject gameObject) {
        GameObject gameObject2;
        GameObject gameObject3 = W7.b.f27309i.f31909a.f31910a;
        if (gameObject3 == gameObject) {
            return true;
        }
        if (gameObject == null || (gameObject2 = gameObject.f79294k) == null) {
            return false;
        }
        return calculateParent(gameObject2, gameObject3);
    }

    private void refreshSkinningOwners(boolean notifyStructureChange) {
        Transform transform;
        Transform transform2;
        Armature armature = this.f76385J;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform2 = gameObject.transform) != null) {
            transform2.O2(this.f76389N);
        }
        GameObject gameObject2 = this.f79250n;
        this.f76384I = gameObject2 != null ? (SkinnedModelRenderer) gameObject2.h0(Component.e.SkinnedModelRenderer) : null;
        GameObject gameObject3 = this.f79250n;
        K8.f h02 = gameObject3 != null ? gameObject3.h0(Component.e.Armature) : null;
        Armature armature2 = h02 instanceof Armature ? (Armature) h02 : null;
        this.f76385J = armature2;
        GameObject gameObject4 = this.f79250n;
        if (gameObject4 != null && (transform = gameObject4.transform) != null && armature2 != null) {
            transform.u(this.f76389N);
        }
        if (notifyStructureChange) {
            if (armature != null) {
                armature.notifyBoneStructureChanged();
            }
            Armature armature3 = this.f76385J;
            if (armature3 == null || armature3 == armature) {
                return;
            }
            armature3.notifyBoneStructureChanged();
        }
    }

    public void createGizmo() {
        if (this.f76383H == null) {
            this.f76383H = new p9.b();
        }
        this.f76383H.f103699a = new X8.a();
        this.f76383H.f103700b = new X8.a();
        this.f76383H.f103701c = new X8.a();
        X8.a aVar = this.f76383H.f103699a;
        C8.a aVar2 = W7.b.f27306f;
        aVar.a("@BONEPIVOT", aVar2.f2458a.f4954q);
        this.f76383H.f103700b.a("@BONETARGET", aVar2.f2458a.f4954q);
        this.f76383H.f103701c.a("@BONEMODEL", aVar2.f2458a.f4955r);
    }

    public void drawGizmo() {
        SkinnedModelRenderer skinnedModelRenderer;
        if ((isSelectedAParent(this.f79250n) && (skinnedModelRenderer = this.f76384I) != null && skinnedModelRenderer.showSkinBonesGizmo) || this.f76386K) {
            if (this.f76383H == null) {
                createGizmo();
            }
            if (C13317e.J(this.f79250n) && C13317e.J(this.f79250n.f79294k) && ((SkinJoint) this.f79250n.f79294k.c0(Component.e.SkinJoint)) != null) {
                float distance = this.f79250n.f79294k.transform.u0((Vector3) JP.acquire(Vector3.class)).distance(this.f79250n.transform.u0((Vector3) JP.acquire(Vector3.class)));
                float f10 = 0.03f * distance;
                drawCG(this.f76383H.f103699a, this.f79250n.f79294k.transform, 0.02f);
                drawCG(this.f76383H.f103700b, this.f79250n.transform, 0.02f);
                drawCG(this.f76383H.f103701c, this.f79250n.f79294k.transform.u0((Vector3) JP.acquire(Vector3.class)), Quaternion.S(this.f79250n.f79294k.transform.u0((Vector3) JP.acquire(Vector3.class)), this.f79250n.transform.u0((Vector3) JP.acquire(Vector3.class))), new Vector3(f10, f10, distance));
            }
        }
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.SKIN_JOINT);
    }

    @InterfaceC15237a
    public int getIndex() {
        return this.index;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_skeletonbone;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(Lang.l(Lang.T.INDEX) + " (" + this.index + ")", b.a.NoteText));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f76378P;
    }

    @Override
    public Component.e getType() {
        return Component.e.SkinJoint;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        refreshSkinningOwners(true);
    }

    @Override
    public void onDetach() {
        clearSkinningOwners(true);
        p9.b bVar = this.f76383H;
        if (bVar != null) {
            bVar.a();
        }
        super.onDetach();
    }

    @Override
    public void onParentChanged() {
        super.onParentChanged();
        refreshSkinningOwners(true);
    }

    public boolean restoreOriginalTransform() {
        float[] fArr = this.localOriginalMatrix;
        if (fArr == null) {
            return false;
        }
        this.f79250n.transform.set(fArr);
        return true;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76390O = run;
    }

    public void storeOriginalTransform() {
        if (this.localOriginalMatrix == null) {
            this.localOriginalMatrix = new float[16];
        }
        this.f79250n.transform.W0(this.localOriginalMatrix);
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76390O;
        if (component != null) {
            return component;
        }
        JAVARuntime.SkinJoint skinJoint = new JAVARuntime.SkinJoint(this);
        this.f76390O = skinJoint;
        return skinJoint;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        drawGizmo();
    }

    @Override
    public Component mo1248clone() {
        return new SkinJoint(this.index, this.localOriginalMatrix, this.inverseMatrix);
    }

    private void drawCG(X8.a gizmo, Vector3 position, Quaternion rotation, Vector3 scale) {
        gizmo.f(position.getX(), position.getY(), position.getZ());
        gizmo.k(scale);
        gizmo.h(rotation);
        gizmo.d(this.f79250n);
    }

    public SkinJoint(int index, float[] localOriginalMatrix, float[] inverseMatrix) {
        super(f76378P);
        this.f76380E = new float[16];
        this.f76381F = new float[16];
        this.f76382G = new float[16];
        this.f76386K = false;
        this.f76388M = null;
        this.f76389N = new b();
        this.index = index;
        float[] fArr = new float[16];
        this.localOriginalMatrix = fArr;
        System.arraycopy(localOriginalMatrix, 0, fArr, 0, localOriginalMatrix.length);
        float[] fArr2 = new float[16];
        this.inverseMatrix = fArr2;
        System.arraycopy(inverseMatrix, 0, fArr2, 0, inverseMatrix.length);
    }

    public SkinJoint(int index, float[] localOriginalMatrix) {
        super(f76378P);
        this.f76380E = new float[16];
        this.f76381F = new float[16];
        this.f76382G = new float[16];
        this.f76386K = false;
        this.f76388M = null;
        this.f76389N = new b();
        this.index = index;
        this.localOriginalMatrix = localOriginalMatrix;
    }
}
