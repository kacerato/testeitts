package com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer;

import C5.b;
import D5.h;
import Ib.g;
import JAVARuntime.Runnable;
import Z6.e;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.AnimatedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.BakedArmature;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.Bone;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationEntry;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.SkinJoint;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.TransformUpdateController;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.lang.constant.ConstantDescs;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import q7.C15045a;

public class Armature extends Component {

    public static final String f76395L = "Armature";

    public static final Class f76396M = Armature.class;

    public transient SkinJoint[] f76397E;

    public transient GameObject f76398F;

    public transient long f76399G;

    public transient boolean f76400H;

    public transient int f76401I;

    public final InterfaceC13601h f76402J;

    public JAVARuntime.Component f76403K;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Armature.f76396M;
        }

        @Override
        public String c() {
            return Armature.f76395L;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.MODEL_RENDERERS);
        }

        @Override
        public String f() {
            return Armature.f76395L;
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(f globalMatrix) {
            Armature.this.notifyBonePoseChanged();
        }
    }

    public class c implements h {

        public class a implements e.i {

            public class C1245a implements C15045a.d {

                public final float f76407a;

                public class RunnableC1246a implements Runnable {

                    public final C15045a f76409b;

                    public class RunnableC1247a implements Runnable {

                        public final List f76411b;

                        public final Map f76412c;

                        public class RunnableC1248a implements Runnable {

                            public class C1249a implements e {
                                public C1249a() {
                                }

                                @Override
                                public void a(GameObject gameObject) {
                                }

                                @Override
                                public String b(String meshFile) {
                                    return (String) RunnableC1247a.this.f76412c.get(meshFile);
                                }
                            }

                            public RunnableC1248a() {
                            }

                            @Override
                            public void run() {
                                Armature.buildBakedOf(Armature.this, new C1249a());
                                N7.c.v0("Done");
                                RunnableC1246a.this.f76409b.p1();
                            }
                        }

                        public RunnableC1247a(final List val$meshes, final Map val$meshesToNe) {
                            this.f76411b = val$meshes;
                            this.f76412c = val$meshesToNe;
                        }

                        @Override
                        public void run() {
                            for (String str : this.f76411b) {
                                String str2 = Tc.b.u(str) + "/" + Tc.b.w(str, true) + "_d" + Tc.b.q(C1245a.this.f76407a, 2, ConstantDescs.DEFAULT_NAME) + ".mesh";
                                try {
                                    Vertex A12 = Vertex.A1(str);
                                    if (!MeshSerializer.k(str2)) {
                                        MeshSerializer.o(MeshSerializer.m(str2), new g(A12).D(C1245a.this.f76407a, 10.0d));
                                    }
                                    this.f76412c.put(str, str2);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                    MeshSerializer.g(str2);
                                    N7.c.v0(Lang.l(Lang.T.FAILED_PREFIX) + e10.getMessage());
                                }
                            }
                            K8.a.I(new RunnableC1248a());
                        }
                    }

                    public RunnableC1246a(final C15045a val$loadingPanel) {
                        this.f76409b = val$loadingPanel;
                    }

                    @Override
                    public void run() {
                        SteppedArrayList steppedArrayList = new SteppedArrayList();
                        HashMap hashMap = new HashMap();
                        List<Component> s02 = Armature.this.f79250n.s0(Component.e.SkinnedModelRenderer);
                        for (int i10 = 0; i10 < s02.size(); i10++) {
                            String str = ((SkinnedModelRenderer) s02.get(i10)).meshFile;
                            if (str != null) {
                                steppedArrayList.add(str);
                            }
                        }
                        O9.b.d(new RunnableC1247a(steppedArrayList, hashMap));
                    }
                }

                public C1245a(final float val$value) {
                    this.f76407a = val$value;
                }

                @Override
                public void a(C15045a loadingPanel) {
                    K8.a.I(new RunnableC1246a(loadingPanel));
                }
            }

            public a() {
            }

            @Override
            public void a(float value, boolean canceled) {
                if (canceled) {
                    return;
                }
                if (value < 1.0f) {
                    C15045a.u1(true, new C1245a(value));
                } else {
                    Armature.buildBakedOf(Armature.this);
                }
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Z6.e.B1("Decimate percentage", 1.0f, 0.0f, 1.0f, new a());
        }
    }

    public class d implements Runnable {

        public final e f76417c;

        public d(final e val$listener) {
            this.f76417c = val$listener;
        }

        public GameObject a(SkinJoint rootJoint, Armature armature) {
            return rootJoint.f79250n.H0() == armature.f79250n ? rootJoint.f79250n : b(rootJoint.f79250n, armature);
        }

        public GameObject b(GameObject bone, Armature armature) {
            return bone.H0() == armature.f79250n ? bone : b(bone.H0(), armature);
        }

        public SkinJoint c(GameObject gameObject) {
            SkinJoint skinJoint = (SkinJoint) gameObject.d0(SkinJoint.class);
            if (skinJoint != null) {
                return skinJoint;
            }
            for (int i10 = 0; i10 < gameObject.D(); i10++) {
                SkinJoint skinJoint2 = (SkinJoint) gameObject.C(i10).d0(SkinJoint.class);
                if (skinJoint2 != null) {
                    return skinJoint2;
                }
            }
            for (int i11 = 0; i11 < gameObject.D(); i11++) {
                SkinJoint c10 = c(gameObject.C(i11));
                if (c10 != null) {
                    return c10;
                }
            }
            return null;
        }

        public void d(GameObject gameObject, List<Bone> boneList) {
            for (int i10 = 0; i10 < gameObject.D(); i10++) {
                GameObject C10 = gameObject.C(i10);
                SkinJoint skinJoint = (SkinJoint) C10.d0(SkinJoint.class);
                if (skinJoint != null) {
                    Bone bone = new Bone();
                    bone.h(C10.getGuid().j());
                    bone.i(skinJoint.getIndex());
                    bone.j(C10.transform.Z0().m1249clone());
                    bone.k(C10.transform.h1().clone());
                    bone.l(C10.transform.getScale().m1249clone());
                    boneList.add(bone);
                    d(C10, bone.b());
                } else {
                    Bone bone2 = new Bone();
                    bone2.h(C10.getGuid().j());
                    bone2.i(-1);
                    bone2.j(C10.transform.Z0().m1249clone());
                    bone2.k(C10.transform.h1().clone());
                    bone2.l(C10.transform.getScale().m1249clone());
                    boneList.add(bone2);
                    d(C10, bone2.b());
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            List<Component> s02 = Armature.this.f79250n.F0().s0(Component.e.AnimationPlayer);
            for (int i10 = 0; i10 < s02.size(); i10++) {
                steppedArrayList.add((AnimationPlayer) s02.get(i10));
            }
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            List<Component> s03 = Armature.this.f79250n.F0().s0(Component.e.SkinnedModelRenderer);
            for (int i11 = 0; i11 < s03.size(); i11++) {
                steppedArrayList2.add((SkinnedModelRenderer) s03.get(i11));
            }
            GameObject gameObject = new GameObject("Baked-" + Armature.this.f79250n.getName());
            gameObject.Q1();
            BakedArmature bakedArmature = new BakedArmature(Nc.d.c());
            Bone bone = new Bone();
            GameObject a10 = a(c(Armature.this.f79250n), Armature.this);
            bone.h(a10.getGuid().j());
            bone.i(-1);
            bone.j(a10.transform.Z0().m1249clone());
            bone.k(a10.transform.h1().clone());
            bone.l(a10.transform.getScale().m1249clone());
            bakedArmature.getBoneList().add(bone);
            d(a10, bone.b());
            for (int i12 = 0; i12 < steppedArrayList.size(); i12++) {
                AnimationPlayer animationPlayer = (AnimationPlayer) steppedArrayList.get(i12);
                for (int i13 = 0; i13 < animationPlayer.getEntriesList().size(); i13++) {
                    AnimationEntry animationEntry = animationPlayer.getEntriesList().get(i13);
                    com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.AnimationEntry animationEntry2 = new com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.AnimationEntry();
                    animationEntry2.g(animationEntry.file);
                    animationEntry2.h(animationEntry.origName);
                    animationEntry2.f(animationEntry.compilled);
                    bakedArmature.getAnimationsList().add(animationEntry2);
                }
            }
            gameObject.r(bakedArmature);
            for (int i14 = 0; i14 < steppedArrayList2.size(); i14++) {
                SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) steppedArrayList2.get(i14);
                AnimatedModelRenderer animatedModelRenderer = new AnimatedModelRenderer();
                e eVar = this.f76417c;
                if (eVar != null) {
                    animatedModelRenderer.setMeshFile(eVar.b(skinnedModelRenderer.meshFile), skinnedModelRenderer.meshFileFromAssets);
                } else {
                    animatedModelRenderer.setMeshFile(skinnedModelRenderer.meshFile, skinnedModelRenderer.meshFileFromAssets);
                }
                animatedModelRenderer.materialFile = skinnedModelRenderer.materialFile;
                animatedModelRenderer.castShadow = skinnedModelRenderer.castShadow;
                animatedModelRenderer.receiveShadow = skinnedModelRenderer.receiveShadow;
                HashMap<Integer, float[]> hashMap = skinnedModelRenderer.inverseBindBoneMatrix;
                HashMap<Integer, Integer> hashMap2 = skinnedModelRenderer.boneGlobalToLocalMap;
                animatedModelRenderer.boneBoundingRadius = skinnedModelRenderer.boneBoundingRadius;
                animatedModelRenderer.inverseBindBoneMatrix = hashMap;
                animatedModelRenderer.boneGlobalToLocalMap = hashMap2;
                gameObject.r(animatedModelRenderer);
            }
            e eVar2 = this.f76417c;
            if (eVar2 != null) {
                eVar2.a(gameObject);
            }
        }
    }

    public interface e {
        void a(GameObject gameObject);

        String b(String meshFile);
    }

    static {
        C13201a.b(new a());
        System.loadLibrary("native-skinning");
    }

    public Armature() {
        super(f76395L);
        this.f76400H = true;
        this.f76401I = 1;
        this.f76402J = new b();
    }

    private void bindRootTransformListener() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.O2(this.f76402J);
        this.f79250n.transform.u(this.f76402J);
    }

    public static void buildBakedOf(Armature armature) {
        buildBakedOf(armature, null);
    }

    private void configureNativeSkinningArmature() {
        GameObject gameObject;
        Transform transform;
        GameObject gameObject2 = this.f79250n;
        if (gameObject2 == null || gameObject2.transform == null) {
            destroyNativeSkinningArmature();
            return;
        }
        ensureNativeSkinningArmature();
        long r10 = TransformUpdateController.r(this.f79250n.transform);
        SkinJoint[] skinJointArr = this.f76397E;
        int length = skinJointArr != null ? skinJointArr.length : 0;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            SkinJoint skinJoint = this.f76397E[i10];
            if (skinJoint != null && (gameObject = skinJoint.f79250n) != null && (transform = gameObject.transform) != null) {
                jArr[i10] = TransformUpdateController.r(transform);
            }
        }
        nativeConfigureSkinningArmature(this.f76399G, r10, jArr);
    }

    private void destroyNativeSkinningArmature() {
        long j10 = this.f76399G;
        if (j10 != 0) {
            nativeDestroySkinningArmature(j10);
            this.f76399G = 0L;
        }
    }

    private void ensureNativeSkinningArmature() {
        if (this.f76399G == 0) {
            this.f76399G = nativeCreateSkinningArmature();
        }
    }

    private void ensureSkinningCache() {
        if (this.f76400H || this.f76397E == null || this.f76398F != this.f79250n) {
            unbindRootTransformListener();
            int findMaxBoneIndex = findMaxBoneIndex(this.f79250n, -1);
            SkinJoint[] skinJointArr = findMaxBoneIndex >= 0 ? new SkinJoint[findMaxBoneIndex + 1] : new SkinJoint[0];
            this.f76397E = skinJointArr;
            fillBonesRecursive(this.f79250n, skinJointArr);
            this.f76398F = this.f79250n;
            bindRootTransformListener();
            configureNativeSkinningArmature();
            this.f76400H = false;
        }
    }

    private void ensureSkinningRuntimePrepared() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.transform == null) {
            invalidateSkinningRuntimeState();
        } else {
            ensureSkinningCache();
        }
    }

    private void fillBonesRecursive(GameObject current, SkinJoint[] outBones) {
        int i10;
        if (current == null || outBones == null) {
            return;
        }
        SkinJoint skinJoint = (SkinJoint) current.c0(Component.e.SkinJoint);
        if (skinJoint != null && (i10 = skinJoint.index) >= 0 && i10 < outBones.length) {
            outBones[i10] = skinJoint;
        }
        for (int i11 = 0; i11 < current.D(); i11++) {
            fillBonesRecursive(current.C(i11), outBones);
        }
    }

    private int findMaxBoneIndex(GameObject current, int currentMax) {
        if (current == null) {
            return currentMax;
        }
        SkinJoint skinJoint = (SkinJoint) current.c0(Component.e.SkinJoint);
        if (skinJoint != null) {
            currentMax = Math.max(currentMax, skinJoint.index);
        }
        for (int i10 = 0; i10 < current.D(); i10++) {
            currentMax = findMaxBoneIndex(current.C(i10), currentMax);
        }
        return currentMax;
    }

    private void invalidateSkinningRuntimeState() {
        unbindRootTransformListener();
        this.f76397E = null;
        this.f76398F = null;
        this.f76400H = true;
        destroyNativeSkinningArmature();
    }

    private static native void nativeConfigureSkinningArmature(long handle, long rootTransformHandle, long[] boneTransformHandlesByGlobalIndex);

    private static native long nativeCreateSkinningArmature();

    private static native void nativeDestroySkinningArmature(long handle);

    private static native void nativeMarkSkinningArmatureDirty(long handle);

    private void unbindRootTransformListener() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.O2(this.f76402J);
    }

    public SkinJoint findBoneByGlobalIndex(int globalBoneIndex) {
        ensureSkinningRuntimePrepared();
        SkinJoint[] skinJointArr = this.f76397E;
        if (skinJointArr == null || globalBoneIndex < 0 || globalBoneIndex >= skinJointArr.length) {
            return null;
        }
        return skinJointArr[globalBoneIndex];
    }

    public int getCurrentPoseVersion() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.transform == null) {
            invalidateSkinningRuntimeState();
            return Integer.MIN_VALUE;
        }
        if (this.f76400H) {
            ensureSkinningRuntimePrepared();
        }
        if (this.f76401I == 0) {
            this.f76401I = 1;
        }
        return this.f76401I;
    }

    @Override
    public String getDisplayableTitle() {
        return f76395L;
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
        linkedList.add(new C5.b(new c(), "Build baked renderer", b.a.Button));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f76395L;
    }

    @Override
    public Component.e getType() {
        return Component.e.Armature;
    }

    public void notifyBonePoseChanged() {
        this.f76401I++;
        long j10 = this.f76399G;
        if (j10 != 0) {
            nativeMarkSkinningArmatureDirty(j10);
        }
    }

    public void notifyBoneStructureChanged() {
        this.f76401I++;
        this.f76400H = true;
    }

    @Override
    public void onDetach() {
        invalidateSkinningRuntimeState();
        super.onDetach();
    }

    public long prepareNativeSkinningArmature() {
        ensureSkinningRuntimePrepared();
        return this.f76399G;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76403K = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76403K;
        if (component != null) {
            return component;
        }
        JAVARuntime.Armature armature = new JAVARuntime.Armature(this);
        this.f76403K = armature;
        return armature;
    }

    public static void buildBakedOf(Armature armature, e listener) {
        K8.a.I(new d(listener));
    }

    @Override
    public Component mo1248clone() {
        return new Armature();
    }
}
