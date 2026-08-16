package com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool;

import C5.b;
import D5.h;
import F5.c;
import JAVARuntime.Runnable;
import M7.c;
import M7.g;
import M7.o;
import Mc.i;
import Nc.d;
import O8.a;
import aa.C3593a;
import aa.C3595c;
import aa.e;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ComponentUtils.BakeChildSuppressor;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Native.MeshBakeNative;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import da.InterfaceC12890d;
import eb.f;
import f5.C13189d;
import h5.C13427a;
import h9.C13436b;
import h9.InterfaceC13435a;
import ib.C13600g;
import ib.InterfaceC13601h;
import j9.C13813a;
import j9.C13814b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import lb.C14068e;
import m9.C14197c;
import m9.C14199e;
import m9.C14202h;
import m9.k;
import n9.C14366a;
import n9.b;
import rb.InterfaceC15168a;
import t6.j;
import u9.InterfaceC15583c;

public abstract class BasePool extends Component implements InterfaceC13435a, InterfaceC15583c {

    public static final float f74551F6 = 0.01f;

    public static final ThreadLocal<Vector3> f74552F7 = new H();

    public static final ThreadLocal<Vector3> f74553F8 = new I();

    public static final int f74554H6 = 16;

    public volatile boolean f74555D0;

    public final Vector3f f74556D2;

    public boolean f74557D3;

    public boolean f74558D4;

    public final Object f74559D5;

    public final AtomicBoolean f74560D6;

    public Vertex f74561E;

    public int f74562F;

    public volatile boolean f74563F1;

    public final C13814b f74564F2;

    public a f74565F3;

    public volatile boolean f74566F4;

    public boolean f74567F5;

    public final Object f74568G;

    public final Object f74569H;

    public volatile boolean f74570H1;

    public final Transform f74571H2;

    public int f74572H3;

    public Runnable f74573H4;

    public final Mc.a<PooledObject> f74574H5;

    public final AtomicBoolean f74575I;

    public volatile float f74576J;

    public final List<C14197c> f74577K;

    public volatile List<C14197c> f74578L;

    public volatile boolean f74579L1;

    public final C14366a f74580L2;

    public final Map<Material, C14197c> f74581M;

    public volatile boolean f74582M1;

    public final b f74583M2;

    public boolean f74584M3;

    public final Map<Material, InterfaceC12890d> f74585N;

    public final Map<ModelRenderer, Cb.a> f74586O;

    public final List<GameObject> f74587P;

    public final Map<GameObject, InterfaceC13601h> f74588Q;

    public volatile boolean f74589R;

    public boolean f74590R1;

    public final C14199e f74591R2;

    public boolean f74592S;

    public final GameObject.h f74593T;

    public final Runnable f74594U;

    public final List<ModelRenderer> f74595V;

    public volatile Dc.a f74596V1;

    public final Runnable f74597V2;

    public final List<Collider> f74598W;

    public final Map<Collider, Integer> f74599X;

    public final C14202h f74600Y;

    public volatile boolean f74601Z;

    public volatile boolean f74602b1;

    public volatile PooledObject f74603b2;

    @Expose
    @f
    private float bounciness;

    @Expose
    @f
    public float brushIntensity;

    @Expose
    @f
    public float brushObjectSpacing;

    @Expose
    @f
    public float brushPlaceObjectsPerMeter;

    @Expose
    @f
    public float brushSize;

    @Expose
    public volatile boolean castShadow;

    @Expose
    public volatile boolean enableImpostorSystem;

    @Expose
    public volatile boolean enableMaxRenderDistanceV2;

    @Expose
    @f
    private float friction;

    public volatile boolean f74604i1;

    public final i<L> f74605i2;

    public final PooledObject.a f74606i3;

    @Expose
    public volatile boolean impostorLighting;

    @Expose
    public volatile float impostorStartDistance;

    @Expose
    public int impostorTextureResolutionID;

    @Expose
    public float impostorWindEffect;

    @Expose
    private ExposableLayerReference layerReference;

    public volatile boolean f74607m1;

    public final Map<PooledObject, L> f74608m2;

    public volatile boolean f74609m3;

    public boolean f74610m4;

    @Expose
    @f
    public volatile float maxRenderDistance;

    @Expose
    @f
    public float maxScale;

    @Expose
    @f
    public float minScale;

    @Expose
    private final List<PooledObject> objects;

    public final AtomicInteger f74611q0;

    public volatile boolean f74612q1;

    public final Vector3 f74613q2;

    public J f74614q3;

    @Expose
    public boolean randomizeRotationX;

    @Expose
    public boolean randomizeRotationY;

    @Expose
    public boolean randomizeRotationZ;

    @Expose
    public volatile boolean receiveShadow;

    @Expose
    @f
    public int selectedBrushID;

    @Expose
    private boolean staticMesh;

    @Expose
    private N stickMode;

    @Expose
    @f
    private boolean stickToTerrain;

    @Expose
    private O tab;

    public volatile int f74615v0;

    public final AtomicReference<M> f74616v1;

    public final Quaternion f74617v2;

    public final Vector3 f74618v3;

    public boolean f74619v4;

    public volatile boolean f74620y1;

    public class A implements Runnable {
        public A() {
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:100:0x0237  */
        /* JADX WARN: Removed duplicated region for block: B:101:0x022b  */
        /* JADX WARN: Removed duplicated region for block: B:102:0x021d  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01dd A[Catch: all -> 0x0152, Exception -> 0x0156, TryCatch #4 {Exception -> 0x0156, blocks: (B:3:0x0003, B:9:0x002a, B:14:0x003c, B:17:0x006d, B:20:0x0080, B:23:0x0093, B:26:0x00af, B:28:0x00d6, B:30:0x00dc, B:32:0x00e2, B:38:0x00ef, B:41:0x010a, B:44:0x0116, B:47:0x0125, B:50:0x012e, B:51:0x013a, B:53:0x0140, B:55:0x014c, B:85:0x01dd, B:87:0x01e7, B:88:0x01ef, B:91:0x021f, B:94:0x022c, B:97:0x0238, B:115:0x01d5, B:121:0x018e), top: B:2:0x0003, outer: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x021a  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0229  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x0236  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            Vector2 vector2;
            a selectedBrush;
            int ceil;
            a aVar;
            float f10;
            float f11;
            float f12;
            AtomicBoolean atomicBoolean;
            try {
                try {
                    vector2 = new Vector2(BasePool.this.f74618v3.getX(), BasePool.this.f74618v3.getZ());
                    selectedBrush = BasePool.this.getSelectedBrush();
                } catch (Throwable th2) {
                    BasePool.this.f74560D6.set(false);
                    throw th2;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (selectedBrush != null) {
                BasePool basePool = BasePool.this;
                float f13 = basePool.brushSize;
                float f14 = 0.0f;
                if (f13 <= 0.0f) {
                    atomicBoolean = basePool.f74560D6;
                    atomicBoolean.set(false);
                }
                float f15 = 2.0f;
                float f16 = f13 / 2.0f;
                Vector2 l02 = vector2.l0(f16);
                Vector2 d10 = vector2.d(f16);
                float J10 = Nc.b.J(BasePool.this.f74576J * d.h(0.6f, 1.0f), BasePool.this.brushSize * 0.8f);
                float G10 = Nc.b.G(BasePool.this.brushPlaceObjectsPerMeter);
                if (G10 > 0.0f) {
                    float G11 = Nc.b.G(BasePool.this.brushObjectSpacing);
                    if (BasePool.this.calculateBrushAreaRatio(selectedBrush) > 0.0f && (ceil = ((int) Math.ceil(((f13 * f13) * r0) * G10)) - BasePool.this.countObjectsInsideBrush(l02, d10, selectedBrush)) > 0) {
                        float f17 = 0.01f;
                        float f18 = G10;
                        int max = Math.max(1, (int) Math.ceil(ceil / Nc.b.M(0.01f, r0)));
                        int i10 = 0;
                        int i11 = 0;
                        while (i11 < ceil && i10 < max) {
                            int i12 = i10 + 1;
                            float h10 = d.h(l02.f79838x, d10.f79838x);
                            float h11 = d.h(l02.f79839y, d10.f79839y);
                            float f19 = (-J10) / f15;
                            float f20 = J10 / f15;
                            float h12 = h10 + d.h(f19, f20);
                            float h13 = h11 + d.h(f19, f20);
                            float f21 = l02.f79838x;
                            if (h12 >= f21) {
                                float f22 = d10.f79838x;
                                if (h12 <= f22) {
                                    float f23 = l02.f79839y;
                                    if (h13 >= f23) {
                                        float f24 = d10.f79839y;
                                        if (h13 <= f24) {
                                            float I10 = Nc.b.I(selectedBrush.c((h12 - f21) / (f22 - f21), (h13 - f23) / (f24 - f23)) * BasePool.this.brushIntensity);
                                            if (I10 > f17 && d.h(0.0f, 1.0f) < I10) {
                                                float f25 = f18;
                                                if (BasePool.this.canPlaceInSquareMeterCell(h12, h13, f25) && BasePool.this.canPlaceAtMinimumSpacing(h12, h13, G11)) {
                                                    SteppedArrayList steppedArrayList = new SteppedArrayList();
                                                    List<Component> h14 = R8.f.h(Terrain.class);
                                                    for (int i13 = 0; i13 < h14.size(); i13++) {
                                                        Component component = h14.get(i13);
                                                        if (component.isHierarchyActive()) {
                                                            steppedArrayList.add((Terrain) component);
                                                        }
                                                    }
                                                    float f26 = -3.4028235E38f;
                                                    f11 = f25;
                                                    float f27 = -3.4028235E38f;
                                                    boolean z10 = false;
                                                    for (int i14 = 0; i14 < steppedArrayList.size(); i14++) {
                                                        try {
                                                            Terrain terrain = (Terrain) steppedArrayList.get(i14);
                                                            if (terrain.isDataLoaded() && terrain.isInsideTerrain(h12, h13)) {
                                                                try {
                                                                    float worldY = terrain.getWorldY(h12, h13);
                                                                    if (worldY > f26) {
                                                                        f26 = worldY;
                                                                        f27 = f26;
                                                                    }
                                                                } catch (Exception unused) {
                                                                }
                                                                z10 = true;
                                                            }
                                                        } catch (Exception e11) {
                                                            e11.printStackTrace();
                                                        }
                                                    }
                                                    if (z10) {
                                                        aVar = selectedBrush;
                                                    } else {
                                                        try {
                                                            e eVar = new e();
                                                            eVar.o(false);
                                                            eVar.n(false);
                                                            aVar = selectedBrush;
                                                            try {
                                                                C3593a y10 = eVar.y(new C3595c(new Vector3(h12, 99999.0f, h13), Vector3.down(), 0.0f));
                                                                if (y10 != null && y10.i().getY() >= f27) {
                                                                    f27 = y10.i().getY();
                                                                    z10 = true;
                                                                }
                                                            } catch (Exception e12) {
                                                                e = e12;
                                                                e.printStackTrace();
                                                                if (!z10) {
                                                                }
                                                                Vector3 vector3 = new Vector3();
                                                                vector3.setX(h12);
                                                                vector3.setY(f27);
                                                                vector3.setZ(h13);
                                                                PooledObject add = BasePool.this.add(vector3);
                                                                BasePool basePool2 = BasePool.this;
                                                                add.setScale(d.h(basePool2.minScale, basePool2.maxScale));
                                                                float f28 = 360.0f;
                                                                if (BasePool.this.randomizeRotationX) {
                                                                }
                                                                float h15 = d.h(f10, f12);
                                                                float h16 = d.h(f10, !BasePool.this.randomizeRotationY ? 360.0f : f10);
                                                                if (BasePool.this.randomizeRotationZ) {
                                                                }
                                                                add.y(new Quaternion(h15, h16, d.h(f10, f28)));
                                                                i11++;
                                                                f14 = f10;
                                                                i10 = i12;
                                                                f18 = f11;
                                                                selectedBrush = aVar;
                                                                f15 = 2.0f;
                                                                f17 = 0.01f;
                                                            }
                                                        } catch (Exception e13) {
                                                            e = e13;
                                                            aVar = selectedBrush;
                                                        }
                                                    }
                                                    if (!z10) {
                                                        if (BasePool.this.stickMode == N.None) {
                                                            f27 = BasePool.this.f74618v3.getY();
                                                        }
                                                        f10 = 0.0f;
                                                        f14 = f10;
                                                        i10 = i12;
                                                        f18 = f11;
                                                        selectedBrush = aVar;
                                                        f15 = 2.0f;
                                                        f17 = 0.01f;
                                                    }
                                                    Vector3 vector32 = new Vector3();
                                                    vector32.setX(h12);
                                                    vector32.setY(f27);
                                                    vector32.setZ(h13);
                                                    PooledObject add2 = BasePool.this.add(vector32);
                                                    BasePool basePool22 = BasePool.this;
                                                    add2.setScale(d.h(basePool22.minScale, basePool22.maxScale));
                                                    float f282 = 360.0f;
                                                    if (BasePool.this.randomizeRotationX) {
                                                        f10 = 0.0f;
                                                        f12 = 0.0f;
                                                    } else {
                                                        f12 = 360.0f;
                                                        f10 = 0.0f;
                                                    }
                                                    float h152 = d.h(f10, f12);
                                                    float h162 = d.h(f10, !BasePool.this.randomizeRotationY ? 360.0f : f10);
                                                    if (BasePool.this.randomizeRotationZ) {
                                                        f282 = f10;
                                                    }
                                                    add2.y(new Quaternion(h152, h162, d.h(f10, f282)));
                                                    i11++;
                                                    f14 = f10;
                                                    i10 = i12;
                                                    f18 = f11;
                                                    selectedBrush = aVar;
                                                    f15 = 2.0f;
                                                    f17 = 0.01f;
                                                }
                                                f11 = f25;
                                                aVar = selectedBrush;
                                                f10 = 0.0f;
                                                f14 = f10;
                                                i10 = i12;
                                                f18 = f11;
                                                selectedBrush = aVar;
                                                f15 = 2.0f;
                                                f17 = 0.01f;
                                            }
                                        }
                                        aVar = selectedBrush;
                                        f11 = f18;
                                        f10 = 0.0f;
                                        f14 = f10;
                                        i10 = i12;
                                        f18 = f11;
                                        selectedBrush = aVar;
                                        f15 = 2.0f;
                                        f17 = 0.01f;
                                    }
                                }
                            }
                            aVar = selectedBrush;
                            f10 = f14;
                            f11 = f18;
                            f14 = f10;
                            i10 = i12;
                            f18 = f11;
                            selectedBrush = aVar;
                            f15 = 2.0f;
                            f17 = 0.01f;
                        }
                        BasePool.this.f74560D6.set(false);
                        return;
                    }
                }
            }
            atomicBoolean = BasePool.this.f74560D6;
            atomicBoolean.set(false);
        }
    }

    public class B implements Runnable {
        public B() {
        }

        @Override
        public void run() {
            AtomicBoolean atomicBoolean;
            try {
                Vector2 vector2 = new Vector2(BasePool.this.f74618v3.getX(), BasePool.this.f74618v3.getZ());
                a selectedBrush = BasePool.this.getSelectedBrush();
                if (selectedBrush != null) {
                    BasePool basePool = BasePool.this;
                    float f10 = basePool.brushSize;
                    if (f10 <= 0.0f) {
                        atomicBoolean = basePool.f74560D6;
                        atomicBoolean.set(false);
                    }
                    float f11 = f10 / 2.0f;
                    Vector2 l02 = vector2.l0(f11);
                    Vector2 d10 = vector2.d(f11);
                    float f12 = d10.f79838x - l02.f79838x;
                    float f13 = d10.f79839y - l02.f79839y;
                    if (f12 > 0.0f && f13 > 0.0f) {
                        List<k> findInSquare = BasePool.this.findInSquare(l02, d10);
                        SteppedArrayList steppedArrayList = new SteppedArrayList();
                        for (int i10 = 0; i10 < findInSquare.size(); i10++) {
                            k kVar = findInSquare.get(i10);
                            try {
                                Vector3 l10 = kVar.b().l();
                                float I10 = Nc.b.I(selectedBrush.c((l10.getX() - l02.f79838x) / f12, (l10.getZ() - l02.f79839y) / f13) * BasePool.this.brushIntensity);
                                if (I10 > 0.01f && d.h(0.0f, 1.0f) < I10) {
                                    steppedArrayList.add(kVar);
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        BasePool.this.deleteHPOs(steppedArrayList);
                        return;
                    }
                }
                atomicBoolean = BasePool.this.f74560D6;
                atomicBoolean.set(false);
            } finally {
                BasePool.this.f74560D6.set(false);
            }
        }
    }

    public class C implements Runnable {
        public C() {
        }

        @Override
        public void run() {
            BasePool.this.f74558D4 = false;
            if (!BasePool.this.rebuildRenderable()) {
                BasePool.this.f74610m4 = true;
                return;
            }
            BasePool basePool = BasePool.this;
            basePool.f74610m4 = false;
            basePool.f74620y1 = true;
        }
    }

    public class D implements PooledObject.a {
        public D() {
        }

        @Override
        public void a(PooledObject object) {
            if (BasePool.this.f74558D4) {
                return;
            }
            if (BasePool.this.f74596V1 != null) {
                BasePool.this.f74600Y.p(object);
            }
            BasePool.this.f74591R2.B(object);
            if (BasePool.this.f74603b2 == object) {
                BasePool.this.f74563F1 = true;
            }
        }
    }

    public class E implements InterfaceC12890d {

        public final Material f74625a;

        public E(final Material val$material) {
            this.f74625a = val$material;
        }

        @Override
        public void a(FilamentMaterial filamentMaterial) {
            BasePool.this.onPoolMaterialChanged(this.f74625a, filamentMaterial);
        }
    }

    public class F implements Cb.a {
        public F() {
        }

        @Override
        public void a() {
            BasePool.this.requestBaseRebuildFromHook();
        }
    }

    public class G implements InterfaceC13601h {
        public G() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            BasePool.this.requestBaseRebuildFromHook();
        }
    }

    public class H extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class I extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public enum J {
        None,
        Add,
        Remove
    }

    public static class K implements InterfaceC13435a {

        public final BasePool f74629b;

        public final PooledObject f74630c;

        public final CompoundCollisionShape f74631d;

        public transient C13436b f74632e;

        public K(BasePool objectPool, PooledObject pooledObject, CompoundCollisionShape bulletShape) {
            this.f74629b = objectPool;
            this.f74630c = pooledObject;
            this.f74631d = bulletShape;
        }

        public final C13436b a() {
            if (this.f74632e == null) {
                this.f74632e = new C13436b();
            }
            return this.f74632e;
        }

        @Override
        public void addCollision(C13813a collision) {
            BasePool basePool = this.f74629b;
            if (basePool != null) {
                basePool.addCollision(collision);
            }
        }

        public BasePool b() {
            return this.f74629b;
        }

        @Override
        public void beforeCollisionEvents() {
        }

        public PooledObject c() {
            return this.f74630c;
        }

        @Override
        public void disabledUpdatePhysics() {
        }

        @Override
        public boolean enableCollisionEvents() {
            BasePool basePool = this.f74629b;
            return basePool != null && basePool.enableCollisionEvents();
        }

        @Override
        public Collider findColliderFromHash(int hash) {
            BasePool basePool = this.f74629b;
            if (basePool != null) {
                return basePool.findColliderFromHash(hash);
            }
            return null;
        }

        @Override
        public C13813a findCollision(GameObject other) {
            BasePool basePool = this.f74629b;
            if (basePool != null) {
                return basePool.findCollision(other);
            }
            return null;
        }

        @Override
        public CompoundCollisionShape getBulletShape() {
            return this.f74631d;
        }

        @Override
        public ChildCollisionShape[] getBulletShapeChildren() {
            return a().b(getBulletShape());
        }

        @Override
        public GameObject getGameObjectForPhysics() {
            BasePool basePool = this.f74629b;
            if (basePool != null) {
                return basePool.f79250n;
            }
            return null;
        }

        public int hashCode() {
            return this.f74630c.hashCode();
        }

        @Override
        public void invalidateBulletShapeChildrenCache() {
            a().c();
        }

        @Override
        public boolean isActiveForPhysics() {
            BasePool basePool = this.f74629b;
            return basePool != null && basePool.isEnabled();
        }

        @Override
        public void onPhysicsGetTransformations() {
        }

        @Override
        public void resyncOnFrame() {
        }

        @Override
        public void updatePhysics() {
        }
    }

    public static class L {

        public final PooledObject f74633a;

        public final i9.b f74634b;

        public final K f74635c;

        public L(PooledObject pooledObject, i9.b localStaticbody, K opce) {
            this.f74633a = pooledObject;
            this.f74634b = localStaticbody;
            this.f74635c = opce;
        }
    }

    public static final class M {

        public final Vertex f74636a;

        public final Dc.a f74637b;

        public M(Vertex vertex, Dc.a mesh) {
            this.f74636a = vertex;
            this.f74637b = mesh;
        }
    }

    public enum N {
        Terrain,
        Physics,
        None
    }

    public enum O {
        Brush,
        Model,
        Data,
        Physics,
        Impostor
    }

    public class RunnableC12766a implements Runnable {

        public final Vector3 f74638b;

        public final com.itsmagic.engine.Engines.Engine.Vector.f f74639c;

        public RunnableC12766a(final Vector3 val$ObjectPoolPos, final com.itsmagic.engine.Engines.Engine.Vector.f val$inverseBaseObjectMat) {
            this.f74638b = val$ObjectPoolPos;
            this.f74639c = val$inverseBaseObjectMat;
        }

        @Override
        public void run() {
            BasePool.this.startPreparationOfBase();
            BasePool.this.f74576J = 0.0f;
            List copyMaterialObjects = BasePool.this.copyMaterialObjects();
            boolean z10 = false;
            for (int i10 = 0; i10 < copyMaterialObjects.size(); i10++) {
                C14197c c14197c = (C14197c) copyMaterialObjects.get(i10);
                try {
                    c14197c.b();
                    if (c14197c.c() != null && c14197c.c().V0() != null) {
                        float distance = c14197c.c().d0().m().distance(this.f74638b) + c14197c.c().d0().getRadius();
                        BasePool basePool = BasePool.this;
                        basePool.f74576J = Nc.b.S0(basePool.f74576J, distance);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    z10 = true;
                }
            }
            BasePool.this.updateImpostorOwnerMaterialObject();
            if (!z10) {
                BasePool.this.scheduleCollisionBake(BasePool.this.buildCollisionBakeFromBaseColliders(this.f74639c));
                BasePool.this.f74612q1 = true;
            }
            if (z10) {
                BasePool.this.f74602b1 = true;
                BasePool.this.f74604i1 = true;
                BasePool.this.scheduleCollisionBake(null);
            }
            K8.a.I(BasePool.this.f74594U);
        }
    }

    public class RunnableC12767b implements Runnable {

        public final List f74641b;

        public final Runnable f74642c;

        public RunnableC12767b(final List val$deleteObjects, final Runnable val$runnable) {
            this.f74641b = val$deleteObjects;
            this.f74642c = val$runnable;
        }

        @Override
        public void run() {
            t6.e S12 = j.J1() ? j.S1("BasePool - level terrain cleanup") : null;
            try {
                if (!this.f74641b.isEmpty()) {
                    for (int i10 = 0; i10 < this.f74641b.size(); i10++) {
                        BasePool.this.delete((PooledObject) this.f74641b.get(i10));
                    }
                }
                Runnable runnable = this.f74642c;
                if (runnable != null) {
                    runnable.run();
                }
                j.P1(S12);
            } catch (Throwable th2) {
                j.P1(S12);
                throw th2;
            }
        }
    }

    public class C12768c implements D5.e {

        public static final int f74644f = 2;

        public LinearLayout f74645a;

        public final List<g> f74646b = new LinkedList();

        public LayoutInflater f74647c;

        public final Context f74648d;

        public class a implements M7.r {
            public a() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    O o10 = BasePool.this.tab;
                    O o11 = O.Brush;
                    if (o10 != o11) {
                        BasePool.this.tab = o11;
                        BasePool.this.reloadInspector();
                    }
                }
            }
        }

        public class b implements M7.r {
            public b() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    O o10 = BasePool.this.tab;
                    O o11 = O.Model;
                    if (o10 != o11) {
                        BasePool.this.tab = o11;
                        BasePool.this.reloadInspector();
                    }
                }
            }
        }

        public class C1217c implements M7.r {
            public C1217c() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    O o10 = BasePool.this.tab;
                    O o11 = O.Data;
                    if (o10 != o11) {
                        BasePool.this.tab = o11;
                        BasePool.this.reloadInspector();
                    }
                }
            }
        }

        public class d implements M7.r {
            public d() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    O o10 = BasePool.this.tab;
                    O o11 = O.Physics;
                    if (o10 != o11) {
                        BasePool.this.tab = o11;
                        BasePool.this.reloadInspector();
                    }
                }
            }
        }

        public class e implements M7.r {
            public e() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    O o10 = BasePool.this.tab;
                    O o11 = O.Impostor;
                    if (o10 != o11) {
                        BasePool.this.tab = o11;
                        BasePool.this.reloadInspector();
                    }
                }
            }
        }

        public C12768c(final Context val$context) {
            this.f74648d = val$context;
        }

        private void c() {
            this.f74645a.removeAllViews();
            for (int i10 = 0; i10 < this.f74646b.size(); i10++) {
                d(this.f74646b.get(i10));
            }
        }

        private void d(g element) {
            element.a(this.f74645a, this.f74648d, this.f74647c);
            element.n(f(this.f74645a).e());
        }

        private M7.k f(LinearLayout parent) {
            return e(this.f74648d, parent, this.f74647c);
        }

        public M7.k e(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
            M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
            kVar.a(parent, context, layoutInflater);
            return kVar;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.content);
            this.f74645a = linearLayout;
            linearLayout.removeAllViews();
            this.f74647c = LayoutInflater.from(context);
            this.f74646b.clear();
            o oVar = new o(R.drawable.terrain_paint_v1, new a(), c.b.Left, context);
            b bVar = new b();
            c.b bVar2 = c.b.Middle;
            o oVar2 = new o(R.drawable.cube_v2, bVar, bVar2, context);
            o oVar3 = new o(R.drawable.wrench, new C1217c(), bVar2, context);
            o oVar4 = new o(R.drawable.walk, new d(), bVar2, context);
            o oVar5 = new o(R.drawable.esp_tree, new e(), c.b.Right, context);
            oVar.W(true);
            oVar2.W(true);
            oVar3.W(true);
            oVar4.W(true);
            oVar5.W(true);
            M7.p pVar = new M7.p(context);
            pVar.s(oVar);
            pVar.s(oVar2);
            pVar.s(oVar3);
            pVar.s(oVar4);
            pVar.s(oVar5);
            O[] values = O.values();
            int i10 = 0;
            while (true) {
                if (i10 >= values.length) {
                    break;
                }
                if (values[i10] == BasePool.this.tab) {
                    pVar.z(i10, false);
                    break;
                }
                i10++;
            }
            this.f74646b.add(pVar);
            c();
        }
    }

    public class C12769d implements h {
        public C12769d() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.randomizeRotationX + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.randomizeRotationX = variable.booolean_value.booleanValue();
            }
        }
    }

    public class C12770e implements h {
        public C12770e() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.randomizeRotationY + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.randomizeRotationY = variable.booolean_value.booleanValue();
            }
        }
    }

    public class C12771f implements h {
        public C12771f() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.randomizeRotationZ + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.randomizeRotationZ = variable.booolean_value.booleanValue();
            }
        }
    }

    public class C12772g implements h {
        public C12772g() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.minScale + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    BasePool.this.minScale = variable.float_value;
                } catch (Exception unused) {
                }
            }
        }
    }

    public class C12773h implements h {
        public C12773h() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.maxScale + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    BasePool.this.maxScale = variable.float_value;
                } catch (Exception unused) {
                }
            }
        }
    }

    public class C12774i implements h {

        public class a implements Runnable {

            public final Variable f74661b;

            public a(final Variable val$variable) {
                this.f74661b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("BasePool - set static mesh") : null;
                try {
                    BasePool.this.staticMesh = this.f74661b.booolean_value.booleanValue();
                } finally {
                    j.P1(S12);
                }
            }
        }

        public C12774i() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.staticMesh + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class C12775j extends c.n0<N> {
        public C12775j() {
        }

        @Override
        public void set(N value) {
            BasePool.this.stickMode = value;
        }
    }

    public class C12776k implements GameObject.h {
        public C12776k() {
        }

        @Override
        public void a(GameObject object) {
            if (BasePool.this.f74592S) {
                return;
            }
            BasePool.this.requestBaseRebuildFromHook();
        }
    }

    public class C12777l implements h {
        public C12777l() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.stickToTerrain + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.setStickToTerrain(variable.booolean_value.booleanValue());
            }
        }
    }

    public class C12778m implements h {
        public C12778m() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.castShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.castShadow = variable.booolean_value.booleanValue();
                BasePool.this.reloadInspector();
            }
        }
    }

    public class C12779n implements h {
        public C12779n() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.receiveShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.receiveShadow = variable.booolean_value.booleanValue();
                BasePool.this.reloadInspector();
            }
        }
    }

    public class C12780o implements h {

        public class a implements Runnable {

            public final Variable f74669b;

            public a(final Variable val$variable) {
                this.f74669b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("BasePool - set max render distance toggle") : null;
                try {
                    BasePool.this.enableMaxRenderDistanceV2 = this.f74669b.booolean_value.booleanValue();
                    BasePool.this.reloadInspector();
                } finally {
                    j.P1(S12);
                }
            }
        }

        public C12780o() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.enableMaxRenderDistanceV2 + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class p implements h {
        public p() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.maxRenderDistance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.maxRenderDistance = variable.float_value;
            }
        }
    }

    public class q implements D5.a {

        public class a implements Runnable {

            public class RunnableC1218a implements Runnable {
                public RunnableC1218a() {
                }

                @Override
                public void run() {
                    t6.e S12 = j.J1() ? j.S1("BasePool - clear all objects") : null;
                    try {
                        Iterator it = new SteppedArrayList(BasePool.this.objects).iterator();
                        while (it.hasNext()) {
                            BasePool.this.delete((PooledObject) it.next());
                        }
                    } finally {
                        j.P1(S12);
                    }
                }
            }

            public a() {
            }

            @Override
            public void run() {
                K8.a.I(new RunnableC1218a());
                BasePool.this.reloadInspector();
            }
        }

        public q() {
        }

        @Override
        public void a(View view, int adapterPosition) {
            K8.a.I(new a());
        }
    }

    public class r implements h {
        public r() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.enableImpostorSystem + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.setEnableImpostorSystem(variable.booolean_value.booleanValue());
            }
        }
    }

    public class s implements h {
        public s() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.impostorLighting + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.setImpostorLighting(variable.booolean_value.booleanValue());
            }
        }
    }

    public class t implements c.s0 {

        public class a implements Runnable {

            public final int f74678b;

            public a(final int val$id) {
                this.f74678b = val$id;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("BasePool - set impostor texture resolution") : null;
                try {
                    BasePool.this.setImpostorTextureResolutionID(this.f74678b);
                } finally {
                    j.P1(S12);
                }
            }
        }

        public t() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(int id2) {
            K8.a.I(new a(id2));
        }
    }

    public class u implements h {
        public u() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.impostorStartDistance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.setImpostorStartDistance(variable.float_value);
            }
        }
    }

    public class v implements Runnable {
        public v() {
        }

        @Override
        public void run() {
            t6.e S12 = j.J1() ? j.S1("BasePool - apply base hooks") : null;
            try {
                if (BasePool.this.f74589R) {
                    BasePool.this.applyBaseHookRegistrations();
                } else {
                    BasePool.this.clearBaseState();
                }
                BasePool.this.f74575I.set(false);
                j.P1(S12);
            } catch (Throwable th2) {
                BasePool.this.f74575I.set(false);
                j.P1(S12);
                throw th2;
            }
        }
    }

    public class w implements h {
        public w() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.impostorWindEffect + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.setImpostorWindEffect(Nc.b.G(variable.float_value));
            }
        }
    }

    public class x implements h {
        public x() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.bounciness + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.bounciness = variable.float_value;
            }
        }
    }

    public class y implements h {
        public y() {
        }

        @Override
        public Variable get() {
            return new Variable("", BasePool.this.friction + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BasePool.this.friction = variable.float_value;
            }
        }
    }

    public class z implements InterfaceC15168a {
        public z() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void a(Layer newLayer) {
            i9.b bVar;
            synchronized (Cc.c.f2503k) {
                for (int i10 = 0; i10 < BasePool.this.f74605i2.size(); i10++) {
                    try {
                        L l10 = (L) BasePool.this.f74605i2.get(i10);
                        if (l10 != null && (bVar = l10.f74634b) != null) {
                            bVar.p(BasePool.this.layerReference);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public BasePool(String serializedComponentType) {
        super(serializedComponentType);
        this.tab = O.Data;
        this.enableMaxRenderDistanceV2 = true;
        this.maxRenderDistance = 250.0f;
        this.enableImpostorSystem = true;
        this.impostorLighting = true;
        this.impostorTextureResolutionID = 5;
        this.impostorStartDistance = 32.0f;
        this.impostorWindEffect = 0.5f;
        this.objects = new SteppedArrayList(1000);
        this.castShadow = true;
        this.receiveShadow = true;
        this.stickMode = N.Terrain;
        this.stickToTerrain = true;
        this.f74568G = new Object();
        this.f74569H = new Object();
        this.f74575I = new AtomicBoolean();
        this.f74577K = new SteppedArrayList(50);
        this.f74578L = new SteppedArrayList(0);
        this.f74581M = new HashMap(50);
        this.f74585N = new HashMap(50);
        this.f74586O = new HashMap(50);
        this.f74587P = new SteppedArrayList(50);
        this.f74588Q = new HashMap(50);
        this.f74593T = new C12776k();
        this.f74594U = new v();
        this.f74595V = new SteppedArrayList(50);
        this.f74598W = new SteppedArrayList(50);
        this.f74599X = new HashMap(50);
        this.f74600Y = new C14202h();
        this.f74611q0 = new AtomicInteger();
        this.f74555D0 = false;
        this.f74602b1 = false;
        this.f74604i1 = true;
        this.f74607m1 = false;
        this.f74612q1 = false;
        this.f74616v1 = new AtomicReference<>();
        this.f74563F1 = true;
        this.f74570H1 = true;
        this.f74605i2 = new i<>(100);
        this.f74608m2 = new HashMap(100);
        this.f74613q2 = new Vector3();
        this.f74617v2 = new Quaternion();
        this.f74556D2 = new Vector3f();
        this.f74564F2 = new C13814b(this);
        this.f74571H2 = new Transform();
        this.f74580L2 = new C14366a();
        this.f74583M2 = new b();
        this.f74591R2 = new C14199e();
        this.f74597V2 = new C();
        this.f74606i3 = new D();
        this.brushSize = 50.0f;
        this.brushIntensity = 0.1f;
        this.selectedBrushID = 1;
        this.brushPlaceObjectsPerMeter = 2.0f;
        this.brushObjectSpacing = 0.5f;
        this.layerReference = new ExposableLayerReference();
        this.bounciness = 0.0f;
        this.friction = 0.5f;
        this.randomizeRotationX = false;
        this.randomizeRotationY = true;
        this.randomizeRotationZ = false;
        this.staticMesh = true;
        this.minScale = 0.8f;
        this.maxScale = 1.2f;
        this.f74614q3 = J.None;
        this.f74618v3 = new Vector3();
        this.f74557D3 = true;
        this.f74572H3 = 0;
        this.f74584M3 = false;
        this.f74619v4 = false;
        this.f74559D5 = new Object();
        this.f74574H5 = new Mc.a<>();
        this.f74560D6 = new AtomicBoolean();
    }

    public void applyBaseHookRegistrations() {
        synchronized (this.f74569H) {
            for (int i10 = 0; i10 < this.f74587P.size(); i10++) {
                try {
                    registerBaseStructureListenerLocked(this.f74587P.get(i10));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            for (int i11 = 0; i11 < this.f74595V.size(); i11++) {
                registerBaseSourceListenersLocked(this.f74595V.get(i11));
            }
            Iterator<Material> it = this.f74581M.o().iterator();
            while (it.hasNext()) {
                registerMaterialListenerLocked(it.next());
            }
        }
    }

    private void applyColliderShapeSizing(Collider collider, Vertex sourceVertex, com.itsmagic.engine.Engines.Engine.Vector.f localMat4) {
        float f10;
        float f11;
        AABB d02;
        float abs;
        Collider.o shape = collider.getShape();
        if (shape == null || sourceVertex == null || localMat4 == null) {
            return;
        }
        boolean z10 = true;
        float f12 = 1.0f;
        if (shape != Collider.o.Box && shape != Collider.o.Sphere) {
            if (shape == Collider.o.Capsule) {
                f12 = Nc.b.M(0.1f, collider.getCapsuleWidth());
                f10 = Nc.b.M(0.1f, collider.getCapsuleLength()) + f12;
                f11 = f12;
                if (z10 || (d02 = sourceVertex.d0()) == null) {
                    return;
                }
                Vector3 z11 = d02.z();
                Vector3 u10 = d02.u();
                abs = Math.abs(u10.getX() - z11.getX());
                float abs2 = Math.abs(u10.getY() - z11.getY());
                float abs3 = Math.abs(u10.getZ() - z11.getZ());
                if (abs >= 1.0E-5f || abs2 < 1.0E-5f || abs3 < 1.0E-5f) {
                    return;
                }
                com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f();
                fVar.G();
                fVar.setScale(f12 / abs, f10 / abs2, f11 / abs3);
                localMat4.d0(fVar);
                return;
            }
            z10 = false;
        }
        f10 = 1.0f;
        f11 = 1.0f;
        if (z10) {
            return;
        }
        Vector3 z112 = d02.z();
        Vector3 u102 = d02.u();
        abs = Math.abs(u102.getX() - z112.getX());
        float abs22 = Math.abs(u102.getY() - z112.getY());
        float abs32 = Math.abs(u102.getZ() - z112.getZ());
        if (abs >= 1.0E-5f) {
        }
    }

    private void applyPreparedCollisionChanges() {
        if (this.f74600Y.b()) {
            while (this.f74600Y.j()) {
                PooledObject f10 = this.f74600Y.f();
                int e10 = this.f74600Y.e();
                if (e10 == 1) {
                    notifyCollisionObjectAdded(f10);
                } else if (e10 == 2) {
                    notifyCollisionObjectChanged(f10);
                } else if (e10 == 3) {
                    notifyCollisionObjectRemoved(f10);
                }
                this.f74600Y.a();
            }
            this.f74600Y.i();
        }
    }

    private void applyScheduledCollisionBake() {
        M andSet = this.f74616v1.getAndSet(null);
        if (andSet == null) {
            return;
        }
        Vertex vertex = andSet.f74636a;
        int f02 = vertex != null ? vertex.f0() : 0;
        if (this.f74561E == vertex && this.f74562F == f02) {
            return;
        }
        this.f74561E = vertex;
        this.f74562F = f02;
        this.f74596V1 = andSet.f74637b;
        this.f74620y1 = true;
    }

    public Vertex buildCollisionBakeFromBaseColliders(com.itsmagic.engine.Engines.Engine.Vector.f inverseBaseObjectMat) {
        Vertex resolveColliderBakeVertex;
        List<Collider> copyBaseColliders = copyBaseColliders();
        SteppedArrayList steppedArrayList = new SteppedArrayList(copyBaseColliders.size());
        for (int i10 = 0; i10 < copyBaseColliders.size(); i10++) {
            Collider collider = copyBaseColliders.get(i10);
            if (collider != null && collider.f79250n != null && (resolveColliderBakeVertex = resolveColliderBakeVertex(collider)) != null && resolveColliderBakeVertex.j1() > 0 && resolveColliderBakeVertex.W0() > 0) {
                com.itsmagic.engine.Engines.Engine.Vector.f K10 = inverseBaseObjectMat.K(C13600g.a(collider.f79250n));
                applyColliderShapeSizing(collider, resolveColliderBakeVertex, K10);
                steppedArrayList.add(new MeshBakeNative.a(resolveColliderBakeVertex, K10));
            }
        }
        return MeshBakeNative.c(steppedArrayList);
    }

    private L buildCollisionEntry(PooledObject pooledObject) {
        Dc.a aVar = this.f74596V1;
        if (aVar == null) {
            return null;
        }
        float abs = Math.abs(pooledObject.getScale());
        if (abs < 1.0E-4f) {
            abs = 1.0E-4f;
        }
        Dc.c cVar = new Dc.c(aVar);
        this.f74556D2.set(abs, abs, abs);
        cVar.setScale(this.f74556D2);
        cVar.setUserIndex(pooledObject.getId());
        CompoundCollisionShape compoundCollisionShape = new CompoundCollisionShape();
        K k10 = new K(this, pooledObject, compoundCollisionShape);
        compoundCollisionShape.addChildShape(cVar, this.f74571H2);
        compoundCollisionShape.setUserIndex(pooledObject.getId());
        i9.b bVar = new i9.b(compoundCollisionShape, k10);
        bVar.s(pooledObject.i(), pooledObject.j(), pooledObject.k(), pooledObject.n());
        bVar.n(this.bounciness);
        bVar.o(this.friction);
        bVar.p(this.layerReference);
        return new L(pooledObject, bVar, k10);
    }

    private Dc.a buildCollisionMesh(Vertex collisionBakeVertex) {
        if (collisionBakeVertex != null && collisionBakeVertex.j1() > 0 && collisionBakeVertex.W0() > 0) {
            try {
                return W8.a.d(collisionBakeVertex.i1(), collisionBakeVertex.V0());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public float calculateBrushAreaRatio(a brush) {
        int i10 = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            float f10 = (i11 + 0.5f) / 16.0f;
            for (int i12 = 0; i12 < 16; i12++) {
                if (brush.c(f10, (i12 + 0.5f) / 16.0f) > 0.01f) {
                    i10++;
                }
            }
        }
        return i10 / 256;
    }

    public boolean canPlaceAtMinimumSpacing(float x10, float z10, float minObjectSpacing) {
        if (minObjectSpacing <= 0.0f) {
            return true;
        }
        float f10 = minObjectSpacing * minObjectSpacing;
        for (int i10 = 0; i10 < this.objects.size(); i10++) {
            PooledObject pooledObject = this.objects.get(i10);
            float i11 = pooledObject.i() - x10;
            float k10 = pooledObject.k() - z10;
            if ((i11 * i11) + (k10 * k10) < f10) {
                return false;
            }
        }
        return true;
    }

    public boolean canPlaceInSquareMeterCell(float x10, float z10, float placeDensity) {
        int floor = (int) Math.floor(x10);
        int floor2 = (int) Math.floor(z10);
        int squareMeterCellObjectLimit = getSquareMeterCellObjectLimit(floor, floor2, placeDensity);
        if (squareMeterCellObjectLimit <= 0) {
            return false;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.objects.size(); i11++) {
            PooledObject pooledObject = this.objects.get(i11);
            if (((int) Math.floor(pooledObject.i())) == floor && ((int) Math.floor(pooledObject.k())) == floor2 && (i10 = i10 + 1) >= squareMeterCellObjectLimit) {
                return false;
            }
        }
        return true;
    }

    private boolean checkBase() {
        try {
            if (startCheckBase()) {
                return true;
            }
            return isBaseColliderCacheDirty();
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    private void clearBaseSourceListenersLocked() {
        for (Map.Entry<ModelRenderer, Cb.a> entry : this.f74586O.entrySet()) {
            ModelRenderer key = entry.getKey();
            if (key != null && key.getVertex() != null) {
                key.getVertex().L1(entry.getValue());
            }
        }
        this.f74586O.clear();
    }

    public void clearBaseState() {
        synchronized (this.f74569H) {
            clearMaterialListenersLocked();
            clearBaseSourceListenersLocked();
            clearBaseStructureListenersLocked();
            this.f74577K.clear();
            this.f74581M.clear();
            this.f74595V.clear();
            this.f74598W.clear();
            this.f74599X.clear();
            this.f74579L1 = false;
            this.f74578L = new SteppedArrayList(0);
        }
    }

    private void clearBaseStructureListenersLocked() {
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform transform;
        for (int i10 = 0; i10 < this.f74587P.size(); i10++) {
            GameObject gameObject = this.f74587P.get(i10);
            gameObject.w1(this.f74593T);
            InterfaceC13601h remove = this.f74588Q.remove(gameObject);
            if (remove != null && (transform = gameObject.transform) != null) {
                transform.O2(remove);
            }
        }
        this.f74587P.clear();
        this.f74588Q.clear();
    }

    private void clearCollisionEntries() {
        synchronized (Cc.c.f2503k) {
            clearCollisionEntriesLocked();
        }
    }

    private void clearCollisionEntriesLocked() {
        for (int i10 = 0; i10 < this.f74605i2.size(); i10++) {
            this.f74605i2.get(i10).f74634b.f();
        }
        this.f74574H5.clear();
        this.f74605i2.clear();
        this.f74608m2.clear();
    }

    private void clearMaterialListenersLocked() {
        for (Map.Entry<Material, InterfaceC12890d> entry : this.f74585N.entrySet()) {
            Material key = entry.getKey();
            InterfaceC12890d value = entry.getValue();
            if (key != null && value != null) {
                key.X(value);
            }
        }
        this.f74585N.clear();
    }

    private void collectBaseStructureSourceLocked(GameObject object) {
        if (object == null || this.f74587P.contains(object)) {
            return;
        }
        this.f74587P.add(object);
    }

    private int computeColliderBakeSignature(Collider collider) {
        if (collider == null) {
            return 0;
        }
        int i10 = (collider.isEnabled() ? 1 : 0) + 31;
        Collider.o shape = collider.getShape();
        int ordinal = (i10 * 31) + (shape != null ? shape.ordinal() : 0);
        if (collider.f79250n != null) {
            ordinal = (((ordinal * 31) + collider.getEffectiveGlobalTransformFrameID()) * 31) + (collider.f79250n.isEnabled() ? 1 : 0);
        }
        if (shape == Collider.o.Capsule) {
            ordinal = (((ordinal * 31) + Float.floatToIntBits(collider.getCapsuleWidth())) * 31) + Float.floatToIntBits(collider.getCapsuleLength());
        }
        Vertex resolveColliderBakeVertex = resolveColliderBakeVertex(collider);
        return (ordinal * 31) + (resolveColliderBakeVertex != null ? resolveColliderBakeVertex.f0() : 0);
    }

    private List<Collider> copyBaseColliders() {
        SteppedArrayList steppedArrayList;
        synchronized (this.f74569H) {
            steppedArrayList = new SteppedArrayList(this.f74598W);
        }
        return steppedArrayList;
    }

    public List<C14197c> copyMaterialObjects() {
        return this.f74578L;
    }

    public int countObjectsInsideBrush(Vector2 brushStart, Vector2 brushEnd, a brush) {
        float f10 = brushEnd.f79838x - brushStart.f79838x;
        float f11 = brushEnd.f79839y - brushStart.f79839y;
        if (f10 <= 0.0f || f11 <= 0.0f) {
            return 0;
        }
        List<k> findInSquare = findInSquare(brushStart, brushEnd);
        int i10 = 0;
        for (int i11 = 0; i11 < findInSquare.size(); i11++) {
            PooledObject b10 = findInSquare.get(i11).b();
            if (brush.c((b10.i() - brushStart.f79838x) / f10, (b10.k() - brushStart.f79839y) / f11) > 0.01f) {
                i10++;
            }
        }
        return i10;
    }

    private PooledObject getImpostorSourceObject() {
        return this.f74603b2;
    }

    private int getSquareMeterCellObjectLimit(int cellX, int cellZ, float placeDensity) {
        int floor = (int) Math.floor(placeDensity);
        float f10 = placeDensity - floor;
        return (f10 <= 0.0f || getSquareMeterCellRandom01(cellX, cellZ) >= f10) ? floor : floor + 1;
    }

    private float getSquareMeterCellRandom01(int cellX, int cellZ) {
        int i10 = (cellX * 73428767) ^ (cellZ * 91227153);
        int i11 = (i10 ^ (i10 >>> 13)) * 1274126177;
        return ((i11 ^ (i11 >>> 16)) & Integer.MAX_VALUE) / 2.1474836E9f;
    }

    private boolean hasEnabledBaseCollider() {
        List<Collider> copyBaseColliders = copyBaseColliders();
        for (int i10 = 0; i10 < copyBaseColliders.size(); i10++) {
            Collider collider = copyBaseColliders.get(i10);
            if (collider != null && collider.isEnabled()) {
                return true;
            }
        }
        return false;
    }

    private boolean hasPendingCollisionSync() {
        return this.f74616v1.get() != null || this.f74620y1 || this.f74600Y.k() || !this.f74574H5.isEmpty();
    }

    private boolean isBaseColliderCacheDirty() {
        Integer num;
        List<Collider> copyBaseColliders = copyBaseColliders();
        for (int i10 = 0; i10 < copyBaseColliders.size(); i10++) {
            Collider collider = copyBaseColliders.get(i10);
            if (collider == null || collider.f79250n == null || !collider.isEnabled()) {
                return true;
            }
            synchronized (this.f74569H) {
                num = this.f74599X.get(collider);
            }
            int computeColliderBakeSignature = computeColliderBakeSignature(collider);
            if (num == null || num.intValue() != computeColliderBakeSignature) {
                return true;
            }
        }
        return false;
    }

    private boolean levelTerrainAsync(Runnable runnable) {
        if (!this.stickToTerrain || this.stickMode == N.None || this.f74619v4) {
            this.f74619v4 = false;
            runnable.run();
            return false;
        }
        synchronized (this.f74559D5) {
            this.f74573H4 = runnable;
            this.f74566F4 = true;
        }
        return true;
    }

    private void notifyCollisionObjectAdded(PooledObject pooledObject) {
        if (pooledObject == null || this.f74596V1 == null || this.f74608m2.containsKey(pooledObject)) {
            return;
        }
        this.f74574H5.add(pooledObject);
    }

    private void notifyCollisionObjectChanged(PooledObject pooledObject) {
        if (pooledObject == null || this.f74596V1 == null) {
            return;
        }
        if (this.f74608m2.containsKey(pooledObject)) {
            notifyCollisionObjectRemoved(pooledObject);
        }
        this.f74574H5.add(pooledObject);
    }

    private void notifyCollisionObjectRemoved(PooledObject pooledObject) {
        removePendingCollisionBuild(pooledObject);
        L remove = this.f74608m2.remove(pooledObject);
        if (remove == null) {
            return;
        }
        this.f74605i2.remove(remove);
        remove.f74634b.f();
    }

    public void onPoolMaterialChanged(Material material, FilamentMaterial filamentMaterial) {
        C14197c c14197c;
        synchronized (this.f74569H) {
            c14197c = this.f74581M.get(material);
        }
        if (c14197c != null) {
            requestFullChunkRebuild();
            this.f74563F1 = true;
        }
    }

    private void prepareBase() {
        this.f74580L2.p();
        this.f74580L2.d();
        this.f74583M2.l();
        List<C14197c> copyMaterialObjects = copyMaterialObjects();
        for (int i10 = 0; i10 < copyMaterialObjects.size(); i10++) {
            copyMaterialObjects.get(i10).j(getEffectiveScene());
        }
        clearBaseState();
        synchronized (this.f74569H) {
            registerBaseStructureListenerLocked(this.f79250n);
        }
        this.f74575I.set(true);
        Vector3 t02 = this.f79250n.transform.t0();
        com.itsmagic.engine.Engines.Engine.Vector.f o02 = this.f79250n.transform.o0();
        o02.E();
        ca.c.D(new RunnableC12766a(t02, o02));
    }

    private void rebuildAllCollisionEntries() {
        clearCollisionEntriesLocked();
        if (this.f74596V1 == null) {
            this.f74620y1 = false;
            return;
        }
        synchronized (this.f74568G) {
            this.f74574H5.addAll(this.objects);
        }
        this.f74620y1 = false;
    }

    public boolean rebuildRenderable() {
        if (!this.f74591R2.e()) {
            if (!this.f74601Z) {
                this.f74615v0 = this.f74611q0.get();
            }
            this.f74601Z = true;
            return false;
        }
        int i10 = this.f74611q0.get();
        if (this.f74615v0 != i10) {
            this.f74615v0 = i10;
            this.f74601Z = true;
            return false;
        }
        this.f74601Z = false;
        this.f74580L2.p();
        this.f74563F1 = true;
        return true;
    }

    private void registerBaseSourceListenersLocked(ModelRenderer modelRenderer) {
        Vertex vertex;
        if (modelRenderer == null || modelRenderer.f79250n == null || (vertex = modelRenderer.getVertex()) == null || this.f74586O.containsKey(modelRenderer)) {
            return;
        }
        F f10 = new F();
        this.f74586O.put(modelRenderer, f10);
        vertex.v(f10);
    }

    private void registerBaseStructureListenerLocked(GameObject object) {
        if (object != null) {
            if (!this.f74587P.contains(object)) {
                this.f74587P.add(object);
            }
            object.u(this.f74593T);
            if (object.transform == null || this.f74588Q.containsKey(object)) {
                return;
            }
            G g10 = new G();
            this.f74588Q.put(object, g10);
            object.transform.u(g10);
        }
    }

    private void registerMaterialListenerLocked(Material material) {
        if (material == null || this.f74585N.containsKey(material)) {
            return;
        }
        E e10 = new E(material);
        this.f74585N.put(material, e10);
        material.j(e10);
    }

    private void removePendingCollisionBuild(PooledObject pooledObject) {
        if (pooledObject == null) {
            return;
        }
        this.f74574H5.remove(pooledObject);
    }

    public void requestBaseRebuildFromHook() {
        this.f74567F5 = false;
        this.f74602b1 = true;
        this.f74604i1 = true;
    }

    private void requestFullChunkRebuild() {
        this.f74611q0.incrementAndGet();
        this.f74610m4 = true;
    }

    private Vertex resolveColliderBakeVertex(Collider collider) {
        Collider.o shape = collider.getShape();
        if (shape == null) {
            return null;
        }
        if (shape == Collider.o.Model) {
            return collider.getCollisionVertex();
        }
        if (shape == Collider.o.ConvexModel || shape == Collider.o.Decomposition) {
            Vertex convexVertex = collider.getConvexVertex();
            return convexVertex != null ? convexVertex : collider.getCollisionVertex();
        }
        if (shape == Collider.o.Box) {
            return Vertex.C1(Vertex.v.CUBE);
        }
        if (shape == Collider.o.Sphere) {
            return Vertex.C1(Vertex.v.SPHERE);
        }
        if (shape == Collider.o.Capsule) {
            return Vertex.C1(Vertex.v.CAPSULE);
        }
        return null;
    }

    private void runAddBrush() {
        if (this.f74560D6.compareAndSet(false, true)) {
            ca.c.D(new A());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void runPendingLevelTerrainTask() {
        RunnableC12767b runnableC12767b;
        N n10;
        synchronized (this.f74559D5) {
            try {
                if (this.f74566F4) {
                    this.f74566F4 = false;
                    Runnable runnable = this.f74573H4;
                    this.f74573H4 = null;
                    SteppedArrayList steppedArrayList = new SteppedArrayList(this.objects.size());
                    try {
                        n10 = this.stickMode;
                    } catch (Throwable th2) {
                        try {
                            th2.printStackTrace();
                            runnableC12767b = new RunnableC12767b(steppedArrayList, runnable);
                        } catch (Throwable th3) {
                            K8.a.I(new RunnableC12767b(steppedArrayList, runnable));
                            throw th3;
                        }
                    }
                    if (n10 != N.Terrain) {
                        if (n10 == N.Physics) {
                            for (int i10 = 0; i10 < this.objects.size(); i10++) {
                                PooledObject pooledObject = this.objects.get(i10);
                                try {
                                    e eVar = new e();
                                    eVar.o(false);
                                    eVar.n(false);
                                    C3593a y10 = eVar.y(new C3595c(new Vector3(pooledObject.i(), 99999.0f, pooledObject.k()), Vector3.down(), 0.0f));
                                    if (y10 != null) {
                                        pooledObject.u(y10.i().getY());
                                    } else {
                                        steppedArrayList.add(pooledObject);
                                    }
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                        runnableC12767b = new RunnableC12767b(steppedArrayList, runnable);
                        K8.a.I(runnableC12767b);
                    }
                    SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                    List<Component> h10 = R8.f.h(Terrain.class);
                    for (int i11 = 0; i11 < h10.size(); i11++) {
                        Component component = h10.get(i11);
                        if (component.isHierarchyActive()) {
                            steppedArrayList2.add((Terrain) component);
                        }
                    }
                    C14068e c10 = C14068e.c();
                    for (int i12 = 0; i12 < this.objects.size(); i12++) {
                        PooledObject pooledObject2 = this.objects.get(i12);
                        float f10 = -3.4028235E38f;
                        boolean z10 = false;
                        boolean z11 = false;
                        for (int i13 = 0; i13 < steppedArrayList2.size(); i13++) {
                            try {
                                Terrain terrain = (Terrain) steppedArrayList2.get(i13);
                                if (terrain.isDataLoaded()) {
                                    if (terrain.isInsideTerrain(pooledObject2.i(), pooledObject2.k())) {
                                        try {
                                            float worldY = terrain.getWorldY(pooledObject2.i(), pooledObject2.k());
                                            if (worldY > f10) {
                                                pooledObject2.u(worldY);
                                                f10 = worldY;
                                            }
                                        } catch (Exception unused) {
                                        }
                                        z10 = true;
                                        z11 = true;
                                    } else {
                                        z10 = true;
                                    }
                                }
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        }
                        if (z10 && !z11) {
                            steppedArrayList.add(pooledObject2);
                        }
                    }
                    c10.h("TERRAIN LEVELING POOL OBJECTS[" + this.objects.size() + "]");
                    runnableC12767b = new RunnableC12767b(steppedArrayList, runnable);
                    K8.a.I(runnableC12767b);
                }
            } finally {
            }
        }
    }

    private void runRemoveBrush() {
        if (this.f74560D6.compareAndSet(false, true)) {
            ca.c.D(new B());
        }
    }

    public void scheduleCollisionBake(Vertex collisionBakeVertex) {
        this.f74616v1.set(new M(collisionBakeVertex, buildCollisionMesh(collisionBakeVertex)));
    }

    private boolean shouldUsePoolCollision() {
        if (this.f79250n == null || this.f74575I.get() || !this.f74607m1 || this.f74596V1 == null) {
            return false;
        }
        return hasEnabledBaseCollider();
    }

    private void syncPoolCollisionState() {
        L buildCollisionEntry;
        synchronized (Cc.c.f2503k) {
            try {
                applyPreparedCollisionChanges();
                applyScheduledCollisionBake();
                if (!shouldUsePoolCollision()) {
                    clearCollisionEntriesLocked();
                    return;
                }
                if (this.f74620y1) {
                    rebuildAllCollisionEntries();
                    this.f74620y1 = false;
                }
                while (!this.f74574H5.isEmpty()) {
                    PooledObject remove = this.f74574H5.remove(r1.size() - 1);
                    if (!this.f74608m2.containsKey(remove) && (buildCollisionEntry = buildCollisionEntry(remove)) != null) {
                        this.f74608m2.put(remove, buildCollisionEntry);
                        this.f74605i2.add(buildCollisionEntry);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void updateBakeSuppressor() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return;
        }
        BakeChildSuppressor bakeChildSuppressor = (BakeChildSuppressor) gameObject.c0(Component.e.BakeChildSuppressor);
        if (this.f74607m1 && this.f74612q1) {
            if (bakeChildSuppressor == null) {
                bakeChildSuppressor = new BakeChildSuppressor();
                this.f74592S = true;
                try {
                    this.f79250n.r(bakeChildSuppressor);
                } finally {
                }
            }
            if (!bakeChildSuppressor.isEnabled()) {
                this.f74592S = true;
                try {
                    bakeChildSuppressor.setEnabled(true);
                } finally {
                }
            }
            this.f74612q1 = false;
        }
        if ((!this.f74607m1 || this.f74602b1 || this.f74575I.get()) && bakeChildSuppressor != null && bakeChildSuppressor.isEnabled()) {
            this.f74592S = true;
            try {
                bakeChildSuppressor.setEnabled(false);
            } finally {
            }
        }
    }

    private void updateCollisionEntry(L entry) {
        entry.f74633a.m(this.f74613q2);
        entry.f74633a.o(this.f74617v2);
        entry.f74634b.t(this.f74613q2, this.f74617v2);
        entry.f74634b.v();
    }

    public void updateImpostorOwnerMaterialObject() {
        List<C14197c> copyMaterialObjects = copyMaterialObjects();
        long j10 = 0;
        boolean z10 = false;
        for (int i10 = 0; i10 < copyMaterialObjects.size(); i10++) {
            if (copyMaterialObjects.get(i10).c() != null) {
                j10 += r5.j1();
            }
        }
        boolean z11 = j10 >= 150;
        boolean z12 = false;
        for (int i11 = 0; i11 < copyMaterialObjects.size(); i11++) {
            C14197c c14197c = copyMaterialObjects.get(i11);
            Vertex c10 = c14197c.c();
            boolean z13 = z11 && (c10 != null && c10.j1() > 0);
            boolean z14 = !z12 && z13;
            c14197c.k(z13);
            c14197c.l(z14);
            if (z14) {
                z12 = true;
            }
        }
        if (z11 && z12) {
            z10 = true;
        }
        this.f74579L1 = z10;
    }

    public PooledObject add(Vector3 position) {
        PooledObject pooledObject;
        synchronized (this.f74568G) {
            try {
                if (position == null) {
                    throw new NullPointerException();
                }
                pooledObject = new PooledObject();
                pooledObject.x(position);
                pooledObject.s(this.f74606i3);
                this.objects.add(pooledObject);
                if (this.f74596V1 != null) {
                    this.f74600Y.n(pooledObject);
                }
                this.f74591R2.x(pooledObject);
                if (this.objects.size() == 1) {
                    this.f74603b2 = pooledObject;
                    this.f74563F1 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return pooledObject;
    }

    @Override
    public void addCollision(C13813a collision) {
        try {
            this.f74564F2.a(collision);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void applyBrushPress() {
        int ordinal = this.f74614q3.ordinal();
        if (ordinal == 1) {
            runAddBrush();
        } else {
            if (ordinal != 2) {
                return;
            }
            runRemoveBrush();
        }
    }

    @Override
    public void beforeCollisionEvents() {
        this.f74564F2.j(this.f79250n);
    }

    public boolean canBuildRenderables() {
        List<C14197c> copyMaterialObjects = copyMaterialObjects();
        for (int i10 = 0; i10 < copyMaterialObjects.size(); i10++) {
            if (!copyMaterialObjects.get(i10).g()) {
                return false;
            }
        }
        return true;
    }

    public abstract void clearBakeObjects();

    public void cloneTo(BasePool c10) {
        c10.staticMesh = this.staticMesh;
        c10.stickToTerrain = this.stickToTerrain;
        c10.receiveShadow = this.receiveShadow;
        c10.castShadow = this.castShadow;
        c10.tab = this.tab;
        c10.enableMaxRenderDistanceV2 = this.enableMaxRenderDistanceV2;
        c10.maxRenderDistance = this.maxRenderDistance;
        c10.enableImpostorSystem = this.enableImpostorSystem;
        c10.impostorLighting = this.impostorLighting;
        c10.impostorTextureResolutionID = this.impostorTextureResolutionID;
        c10.impostorStartDistance = this.impostorStartDistance;
        c10.impostorWindEffect = this.impostorWindEffect;
        c10.layerReference = this.layerReference.clone();
        for (int i10 = 0; i10 < this.objects.size(); i10++) {
            c10.objects.add(this.objects.get(i10).e());
        }
    }

    public void delete(PooledObject hpo) {
        synchronized (this.f74568G) {
            try {
                if (hpo == null) {
                    throw new NullPointerException();
                }
                boolean z10 = !this.objects.isEmpty() && this.objects.get(0) == hpo;
                this.objects.remove(hpo);
                PooledObject pooledObject = null;
                hpo.s(null);
                if (this.f74596V1 != null) {
                    this.f74600Y.o(hpo);
                }
                this.f74591R2.A(hpo);
                if (z10) {
                    if (!this.objects.isEmpty()) {
                        pooledObject = this.objects.get(0);
                    }
                    this.f74603b2 = pooledObject;
                    this.f74563F1 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void deleteHPOs(List<k> searchResultList) {
        for (int i10 = 0; i10 < searchResultList.size(); i10++) {
            try {
                delete(searchResultList.get(i10).b());
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.f74580L2.r();
    }

    @Override
    public void disabledUpdatePhysics() {
        for (int i10 = 0; i10 < this.f74605i2.size(); i10++) {
            this.f74605i2.get(i10).f74634b.f();
        }
    }

    public void emitBaseObject(GameObject o10) {
        C14197c c14197c;
        synchronized (this.f74569H) {
            collectBaseStructureSourceLocked(o10);
        }
        if (o10.isEnabled()) {
            for (int i10 = 0; i10 < o10.N(); i10++) {
                Component L10 = o10.L(i10);
                if (L10 instanceof ModelRenderer) {
                    ModelRenderer modelRenderer = (ModelRenderer) L10;
                    if (modelRenderer.f73747F != null && modelRenderer.getVertex() != null) {
                        synchronized (this.f74569H) {
                            try {
                                this.f74595V.add(modelRenderer);
                                c14197c = this.f74581M.get(modelRenderer.f73747F);
                                if (c14197c == null) {
                                    c14197c = new C14197c(modelRenderer.f73747F, this.f79250n, false);
                                    this.f74581M.put(modelRenderer.f73747F, c14197c);
                                    this.f74577K.add(c14197c);
                                    this.f74578L = new SteppedArrayList(this.f74577K);
                                }
                            } finally {
                            }
                        }
                        c14197c.a(modelRenderer);
                    }
                } else if (L10 instanceof Collider) {
                    Collider collider = (Collider) L10;
                    if (collider.isEnabled()) {
                        synchronized (this.f74569H) {
                            this.f74598W.add(collider);
                            this.f74599X.put(collider, Integer.valueOf(computeColliderBakeSignature(collider)));
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override
    public boolean enableCollisionEvents() {
        return false;
    }

    @Override
    public Collider findColliderFromHash(int hash) {
        List<Collider> copyBaseColliders = copyBaseColliders();
        for (int i10 = 0; i10 < copyBaseColliders.size(); i10++) {
            Collider collider = copyBaseColliders.get(i10);
            if (collider != null && collider.isEnabled()) {
                return collider;
            }
        }
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            return (Collider) gameObject.c0(Component.e.Collider);
        }
        return null;
    }

    @Override
    public C13813a findCollision(GameObject other) {
        return this.f74564F2.f(other);
    }

    public List<k> findInCircle(Vector3 center, float radius) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        float f10 = radius * radius;
        for (int i10 = 0; i10 < this.objects.size(); i10++) {
            PooledObject pooledObject = this.objects.get(i10);
            float sqrtDistanceIgnoreY = pooledObject.l().sqrtDistanceIgnoreY(center);
            if (sqrtDistanceIgnoreY <= f10) {
                steppedArrayList.add(new k(pooledObject, sqrtDistanceIgnoreY));
            }
        }
        return steppedArrayList;
    }

    public List<k> findInSphere(Vector3 center, float radius) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        float f10 = radius * radius;
        for (int i10 = 0; i10 < this.objects.size(); i10++) {
            PooledObject pooledObject = this.objects.get(i10);
            float sqrtDistance = pooledObject.l().sqrtDistance(center);
            if (sqrtDistance <= f10) {
                steppedArrayList.add(new k(pooledObject, sqrtDistance));
            }
        }
        return steppedArrayList;
    }

    public List<k> findInSquare(Vector2 min, Vector2 max) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Vector3 vector3 = new Vector3();
        vector3.setXZ(max.q0(min));
        for (int i10 = 0; i10 < this.objects.size(); i10++) {
            PooledObject pooledObject = this.objects.get(i10);
            Vector3 l10 = pooledObject.l();
            if (l10.getX() >= min.f79838x && l10.getX() <= max.f79838x && l10.getZ() >= min.f79839y && l10.getZ() <= max.f79839y) {
                steppedArrayList.add(new k(pooledObject, l10.sqrtDistanceIgnoreY(vector3)));
            }
        }
        return steppedArrayList;
    }

    public List<C5.b> getBrushEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        C12769d c12769d = new C12769d();
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(c12769d, "Randomize rotation X", aVar));
        linkedList.add(new C5.b(new C12770e(), "Randomize rotation Y", aVar));
        linkedList.add(new C5.b(new C12771f(), "Randomize rotation Z", aVar));
        C12772g c12772g = new C12772g();
        b.a aVar2 = b.a.SLFloat;
        C5.b bVar = new C5.b(c12772g, "Minimal scale", aVar2);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "minScale", cVar));
        linkedList.add(new C5.b(new C12773h(), "Maximum scale", aVar2).d(this.f79250n, this, "maxScale", cVar));
        return linkedList;
    }

    @Override
    public CompoundCollisionShape getBulletShape() {
        return null;
    }

    @Override
    public ChildCollisionShape[] getBulletShapeChildren() {
        return InterfaceC13435a.f90466J4;
    }

    public int getCollidersCount() {
        return this.f74605i2.size();
    }

    public List<C5.b> getDataEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(Lang.l(Lang.T.OBJECTS) + ": " + getHPOCount(), 14));
        linkedList.add(new C5.b(new q(), "Clear all objects"));
        return linkedList;
    }

    public boolean getEnableImpostorSystem() {
        return this.enableImpostorSystem;
    }

    @Override
    public GameObject getGameObjectForPhysics() {
        return this.f79250n;
    }

    public int getHPOCount() {
        return this.objects.size();
    }

    @Override
    public int getIconResource() {
        return R.drawable.wo_hpop;
    }

    public List<C5.b> getImpostorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        r rVar = new r();
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(rVar, "Enable impostor system", aVar));
        linkedList.add(new C5.b(new s(), "Impostor lighting", aVar));
        linkedList.add(F5.c.v("Impostor resolution", this.impostorTextureResolutionID, new t()));
        u uVar = new u();
        b.a aVar2 = b.a.SLFloat;
        linkedList.add(new C5.b(uVar, "Impostor start distance", aVar2).d(this.f79250n, this, "impostorStartDistance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        linkedList.add(new C5.b(new w(), "Impostor wind effect", aVar2));
        return linkedList;
    }

    public boolean getImpostorLighting() {
        return this.impostorLighting;
    }

    public float getImpostorStartDistance() {
        return this.impostorStartDistance;
    }

    public ub.p getImpostorTexture() {
        return this.f74580L2.n();
    }

    public int getImpostorTextureResolutionID() {
        return this.impostorTextureResolutionID;
    }

    public float getImpostorWindEffect() {
        return this.impostorWindEffect;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_hpop;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (this.f79250n.D() == 0) {
            String l10 = Lang.l(Lang.T.MISSING_OBJECT_TEMPLATE);
            Ac.b bVar = Theme.T.ACCENT;
            linkedList.add(new C5.b(l10, 12, Theme.i(bVar)));
            linkedList.add(new C5.b(Lang.l(Lang.T.ADD_MODEL_OBJECT_AS_CHILD), 12, Theme.i(bVar)));
        }
        linkedList.add(new C5.b(new C12768c(context), R.layout.inspector_component_terrain_tabs, (Object) null));
        int ordinal = this.tab.ordinal();
        if (ordinal == 0) {
            linkedList.addAll(getBrushEntries(context));
        } else if (ordinal == 1) {
            linkedList.addAll(getModelEntries(context));
        } else if (ordinal == 2) {
            linkedList.addAll(getDataEntries(context));
        } else if (ordinal == 3) {
            linkedList.addAll(getPhysicsEntries(context));
        } else if (ordinal == 4) {
            linkedList.addAll(getImpostorEntries(context));
        }
        return linkedList;
    }

    public List<C14197c> getMaterialObjectList() {
        return copyMaterialObjects();
    }

    public List<C5.b> getModelEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        C12774i c12774i = new C12774i();
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(c12774i, "Static bake", aVar));
        linkedList.add(F5.c.i("Stick mode", N.class, this.stickMode, new C12775j()));
        linkedList.add(new C5.b(new C12777l(), "Stick to terrain", aVar));
        linkedList.add(new C5.b(new C12778m(), Lang.l(Lang.T.CAST_SHADOWS), aVar));
        linkedList.add(new C5.b(new C12779n(), "Receive shadows", aVar));
        linkedList.add(new C5.b(new C12780o(), Lang.l(Lang.T.ENABLE_MAX_DISTANCE), aVar));
        if (this.enableMaxRenderDistanceV2) {
            linkedList.add(new C5.b(new p(), "Max render distance", b.a.SLFloat).d(this.f79250n, this, "maxRenderDistance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        }
        return linkedList;
    }

    public PooledObject getObjectAt(int index) {
        if (index >= 0) {
            return this.objects.get(index);
        }
        throw new IndexOutOfBoundsException("" + index);
    }

    public List<C5.b> getPhysicsEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        x xVar = new x();
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(xVar, "Bounciness", aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar.d(gameObject, this, "bounciness", cVar);
        linkedList.add(bVar);
        C5.b bVar2 = new C5.b(new y(), Lang.l(Lang.T.FRICTION), aVar);
        bVar2.d(this.f79250n, this, "friction", cVar);
        linkedList.add(bVar2);
        linkedList.add(this.layerReference.d(Lang.l(Lang.T.LAYER), context, new z()));
        return linkedList;
    }

    public a getSelectedBrush() {
        a aVar = this.f74565F3;
        if (aVar == null || aVar.f16550g != this.selectedBrushID) {
            int i10 = this.selectedBrushID;
            O8.b bVar = K8.a.f10987r;
            if (i10 >= bVar.b()) {
                this.selectedBrushID = bVar.b();
            }
            if (this.selectedBrushID < 0) {
                this.selectedBrushID = 0;
            }
            if (bVar.b() > 0) {
                this.f74565F3 = bVar.a(this.selectedBrushID);
            }
        }
        return this.f74565F3;
    }

    public boolean getStickToTerrain() {
        return this.stickToTerrain;
    }

    @Override
    public float getTerrainListenerRadius() {
        if (!this.stickToTerrain) {
            return 0.0f;
        }
        float terrainListenerWorldX = getTerrainListenerWorldX();
        float terrainListenerWorldZ = getTerrainListenerWorldZ();
        float S02 = Nc.b.S0(0.0f, this.f74576J);
        synchronized (this.f74568G) {
            for (int i10 = 0; i10 < this.objects.size(); i10++) {
                try {
                    PooledObject pooledObject = this.objects.get(i10);
                    float i11 = pooledObject.i() - terrainListenerWorldX;
                    float k10 = pooledObject.k() - terrainListenerWorldZ;
                    float sqrt = ((float) Math.sqrt((i11 * i11) + (k10 * k10))) + (Math.abs(pooledObject.getScale()) * this.f74576J);
                    if (sqrt > S02) {
                        S02 = sqrt;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return S02;
    }

    @Override
    public float getTerrainListenerWorldX() {
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform transform;
        synchronized (this.f74568G) {
            try {
                if (this.objects.isEmpty()) {
                    GameObject gameObject = this.f79250n;
                    if (gameObject == null || (transform = gameObject.transform) == null) {
                        return 0.0f;
                    }
                    return transform.w0();
                }
                float f10 = Float.MAX_VALUE;
                float f11 = -3.4028235E38f;
                for (int i10 = 0; i10 < this.objects.size(); i10++) {
                    float i11 = this.objects.get(i10).i();
                    if (i11 < f10) {
                        f10 = i11;
                    }
                    if (i11 > f11) {
                        f11 = i11;
                    }
                }
                return (f10 + f11) * 0.5f;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public float getTerrainListenerWorldZ() {
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform transform;
        synchronized (this.f74568G) {
            try {
                if (this.objects.isEmpty()) {
                    GameObject gameObject = this.f79250n;
                    if (gameObject == null || (transform = gameObject.transform) == null) {
                        return 0.0f;
                    }
                    return transform.y0();
                }
                float f10 = Float.MAX_VALUE;
                float f11 = -3.4028235E38f;
                for (int i10 = 0; i10 < this.objects.size(); i10++) {
                    float k10 = this.objects.get(i10).k();
                    if (k10 < f10) {
                        f10 = k10;
                    }
                    if (k10 > f11) {
                        f11 = k10;
                    }
                }
                return (f10 + f11) * 0.5f;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void invalidateBulletShapeChildrenCache() {
    }

    @Override
    public boolean isActiveForPhysics() {
        return isHierarchyActive();
    }

    public boolean isImpostorSystemActive() {
        return this.enableImpostorSystem && this.f74579L1;
    }

    public boolean isInsideBrush(Vector3 location) {
        Vector3 sub = this.f74618v3.sub(this.brushSize / 2.0f, f74552F7.get());
        Vector3 add = this.f74618v3.add(this.brushSize / 2.0f, f74553F8.get());
        return sub.getX() >= location.getX() && add.getX() <= location.getX() && sub.getY() >= location.getY() && add.getY() <= location.getY();
    }

    public boolean isMaxRenderDistanceActive() {
        return this.enableMaxRenderDistanceV2;
    }

    @Override
    public boolean keepContactList() {
        return false;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        SteppedArrayList steppedArrayList;
        super.lowTaskUpdate(gameObject, isEditor);
        updateForCameraAsync(Camera.mainCameraAllowEditor());
        this.f74600Y.l();
        this.f74591R2.u();
        this.f74591R2.v();
        this.f74591R2.o();
        n9.c.f();
        runPendingLevelTerrainTask();
        if (!this.f74601Z || this.f74591R2.q()) {
            return;
        }
        synchronized (this.f74568G) {
            steppedArrayList = new SteppedArrayList(this.objects);
        }
        this.f74591R2.w(copyMaterialObjects(), steppedArrayList, getEffectiveScene(), this.castShadow, this.receiveShadow, this.f74576J);
    }

    public void notifyObjectChanged(PooledObject hpo) {
        hpo.getClass();
        this.f74606i3.a(hpo);
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f74589R = true;
        this.f74619v4 = true;
        this.f74567F5 = false;
        this.f74604i1 = true;
        this.f74563F1 = true;
        this.f74591R2.i();
        synchronized (this.f74568G) {
            for (int i10 = 0; i10 < this.objects.size(); i10++) {
                try {
                    this.objects.get(i10).s(this.f74606i3);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f74603b2 = this.objects.isEmpty() ? null : this.objects.get(0);
        }
    }

    @Override
    public void onDetach() {
        this.f74589R = false;
        synchronized (this.f74568G) {
            for (int i10 = 0; i10 < this.objects.size(); i10++) {
                try {
                    this.objects.get(i10).s(null);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f74600Y.c();
            this.f74603b2 = null;
        }
        super.onDetach();
        List<C14197c> copyMaterialObjects = copyMaterialObjects();
        for (int i11 = 0; i11 < copyMaterialObjects.size(); i11++) {
            copyMaterialObjects.get(i11).j(getEffectiveScene());
        }
        this.f74591R2.m(getEffectiveScene());
        this.f74580L2.q();
        this.f74583M2.l();
        synchronized (this.f74559D5) {
            this.f74566F4 = false;
            this.f74573H4 = null;
        }
        this.f74558D4 = false;
        this.f74574H5.clear();
        clearCollisionEntries();
        this.f74596V1 = null;
        this.f74616v1.set(null);
        this.f74620y1 = false;
        this.f74601Z = false;
        this.f74582M1 = false;
        this.f74561E = null;
        this.f74562F = 0;
        this.f74607m1 = false;
        clearBaseState();
    }

    @Override
    public void onDrawFrame() {
        super.onDrawFrame();
        this.f74580L2.s();
    }

    @Override
    public void onPhysicsGetTransformations() {
        this.f74564F2.h(this.f79250n);
    }

    @Override
    public void onTerrainModifiedNear(Terrain terrain) {
        if (this.stickToTerrain) {
            this.f74619v4 = false;
            requestFullChunkRebuild();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x00e9 A[Catch: all -> 0x00d1, TRY_LEAVE, TryCatch #2 {all -> 0x00d1, blocks: (B:65:0x00bd, B:67:0x00c1, B:69:0x00c5, B:71:0x00cb, B:72:0x00e5, B:74:0x00e9, B:77:0x00d3, B:79:0x00d7, B:81:0x00dd), top: B:64:0x00bd }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        p6.g L12;
        boolean z10;
        boolean z11;
        super.preUpdate(gameObject, isEditor);
        boolean z12 = false;
        this.f74584M3 = false;
        if (this.f74604i1 && !this.f74567F5) {
            L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate base check") : null;
            try {
                int i10 = this.f74572H3;
                if (i10 >= 2) {
                    if (!this.f74602b1 && this.f74607m1) {
                        this.f74604i1 = false;
                        if (this.staticMesh && c8.b.k()) {
                            this.f74567F5 = true;
                            clearBakeObjects();
                        }
                    }
                    this.f74604i1 = false;
                    this.f74602b1 = false;
                    prepareBase();
                    this.f74607m1 = true;
                    requestFullChunkRebuild();
                } else {
                    this.f74572H3 = i10 + 1;
                }
                p6.d.J1(L12);
            } finally {
            }
        }
        if (this.f74609m3) {
            J j10 = this.f74614q3;
            J j11 = J.None;
            if (j10 != j11) {
                L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate brush") : null;
                try {
                    a selectedBrush = getSelectedBrush();
                    this.f74557D3 = false;
                    if (selectedBrush != null && this.f74614q3 != j11 && this.f74609m3 && ub.p.L(selectedBrush.f())) {
                        this.f74557D3 = true;
                    }
                    p6.d.J1(L12);
                } finally {
                }
            }
        }
        if (!this.f74575I.get() && this.f74607m1 && (this.f74610m4 || this.f74600Y.k())) {
            L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate rebuild") : null;
            try {
                if (this.f74610m4) {
                    if (this.f74601Z) {
                        if (rebuildRenderable()) {
                            this.f74610m4 = false;
                            this.f74620y1 = true;
                            z11 = true;
                            this.f74584M3 = true;
                            if (z11) {
                                this.f74600Y.g();
                            }
                            p6.d.J1(L12);
                        }
                    } else if (!this.f74558D4 && canBuildRenderables()) {
                        this.f74558D4 = true;
                        levelTerrainAsync(this.f74597V2);
                    }
                }
                z11 = false;
                this.f74584M3 = true;
                if (z11) {
                }
                p6.d.J1(L12);
            } finally {
            }
        }
        L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate chunk changes") : null;
        try {
            this.f74591R2.c();
            p6.d.J1(L12);
            if (this.f74612q1 || this.f74575I.get() || this.f74602b1) {
                L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate bake suppressor") : null;
                try {
                    updateBakeSuppressor();
                    p6.d.J1(L12);
                } finally {
                }
            }
            if (hasPendingCollisionSync()) {
                L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate collision sync") : null;
                try {
                    syncPoolCollisionState();
                    p6.d.J1(L12);
                } finally {
                }
            }
            if (this.f74563F1 || this.f74580L2.w()) {
                L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate impostor preview") : null;
                try {
                    this.f74580L2.x(this.impostorTextureResolutionID);
                    this.f74580L2.t(gameObject, this.f74575I.get(), this.f74607m1, this.f74579L1, copyMaterialObjects(), getImpostorSourceObject(), this.f74576J);
                    this.f74563F1 = false;
                    this.f74570H1 = true;
                    p6.d.J1(L12);
                    z10 = true;
                } finally {
                }
            } else {
                z10 = false;
            }
            L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate impostor resources") : null;
            try {
                boolean isImpostorSystemActive = isImpostorSystemActive();
                if (this.f74590R1 != isImpostorSystemActive) {
                    this.f74590R1 = isImpostorSystemActive;
                    this.f74570H1 = true;
                }
                if (z10) {
                    this.f74583M2.m(this.f74580L2.k(), this.f74580L2.j(), this.f74580L2.l(), this.f74580L2.m());
                }
                if (this.f74570H1 || (isImpostorSystemActive && this.f74583M2.k())) {
                    ub.p impostorTexture = isImpostorSystemActive ? getImpostorTexture() : null;
                    boolean g10 = this.f74583M2.g();
                    FilamentMaterial d10 = this.f74583M2.d();
                    if (isImpostorSystemActive) {
                        this.f74583M2.n(this.impostorWindEffect);
                        this.f74583M2.o(impostorTexture, this.impostorLighting);
                    }
                    boolean g11 = this.f74583M2.g();
                    boolean z13 = d10 != this.f74583M2.d();
                    this.f74582M1 = isImpostorSystemActive && g11 && this.f74583M2.h();
                    if (g11 && (z10 || !g10 || z13)) {
                        this.f74591R2.E();
                    }
                    if (isImpostorSystemActive && this.f74583M2.i(impostorTexture, this.impostorWindEffect, this.impostorLighting)) {
                        z12 = true;
                    }
                    this.f74570H1 = z12;
                }
                p6.d.J1(L12);
                L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate visibility batch") : null;
                try {
                    this.f74591R2.d();
                    p6.d.J1(L12);
                    L12 = p6.d.E1() ? p6.d.L1("BasePool - preUpdate impostor chunks") : null;
                    try {
                        this.f74591R2.H();
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    @Override
    public void propagateEditorViewModes(List<C13189d> viewModes) {
        super.propagateEditorViewModes(viewModes);
        viewModes.add(new C13427a(this));
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof I9.a) {
            this.f74583M2.j(((I9.a) event).a());
        }
    }

    public boolean renderBrushes() {
        return this.f74557D3 && getSelectedBrush() != null;
    }

    @Override
    public void resyncOnFrame() {
        this.f74564F2.i(this.f79250n);
    }

    public void setEnableImpostorSystem(boolean enableImpostorSystem) {
        if (this.enableImpostorSystem == enableImpostorSystem) {
            return;
        }
        this.enableImpostorSystem = enableImpostorSystem;
        this.f74570H1 = true;
    }

    public void setImpostorLighting(boolean impostorLighting) {
        if (this.impostorLighting == impostorLighting) {
            return;
        }
        this.impostorLighting = impostorLighting;
        this.f74570H1 = true;
    }

    public void setImpostorStartDistance(float impostorStartDistance) {
        if (Float.compare(this.impostorStartDistance, impostorStartDistance) == 0) {
            return;
        }
        this.impostorStartDistance = impostorStartDistance;
    }

    public void setImpostorTextureResolutionID(int impostorTextureResolutionID) {
        if (this.impostorTextureResolutionID == impostorTextureResolutionID) {
            return;
        }
        this.impostorTextureResolutionID = impostorTextureResolutionID;
        this.f74563F1 = true;
    }

    public void setImpostorWindEffect(float impostorWindEffect) {
        float G10 = Nc.b.G(impostorWindEffect);
        if (Float.compare(this.impostorWindEffect, G10) == 0) {
            return;
        }
        this.impostorWindEffect = G10;
        this.f74570H1 = true;
    }

    public void setStickToTerrain(boolean stickToTerrain) {
        if (this.stickToTerrain == stickToTerrain) {
            return;
        }
        this.stickToTerrain = stickToTerrain;
        this.f74619v4 = false;
        requestFullChunkRebuild();
    }

    public abstract boolean startCheckBase();

    public abstract void startPreparationOfBase();

    public void updateForCameraAsync(Camera camera) {
        this.f74591R2.h(camera, isMaxRenderDistanceActive(), this.maxRenderDistance, isImpostorSystemActive(), this.f74582M1, this.impostorStartDistance, this.f74583M2, this.f74580L2.k(), this.f74580L2.j(), this.f74580L2.l(), this.f74580L2.m());
    }

    @Override
    public void updatePhysics() {
        for (int i10 = 0; i10 < this.f74605i2.size(); i10++) {
            updateCollisionEntry(this.f74605i2.get(i10));
        }
    }

    public boolean checkBase(GameObject o10) {
        boolean containsKey;
        Integer num;
        C14197c c14197c;
        Integer num2;
        Integer num3;
        if (o10.isEnabled()) {
            for (int i10 = 0; i10 < o10.N(); i10++) {
                Component L10 = o10.L(i10);
                if (L10 instanceof ModelRenderer) {
                    ModelRenderer modelRenderer = (ModelRenderer) L10;
                    if (modelRenderer.f73747F != null && modelRenderer.getVertex() != null) {
                        synchronized (this.f74569H) {
                            c14197c = this.f74581M.get(modelRenderer.f73747F);
                        }
                        if (c14197c == null || (num2 = c14197c.f96763e.get(modelRenderer)) == null || modelRenderer.f73752K != num2.intValue() || (num3 = c14197c.f96764f.get(modelRenderer)) == null || modelRenderer.getVertex().f0() != num3.intValue()) {
                            return true;
                        }
                    }
                } else if (L10 instanceof Collider) {
                    Collider collider = (Collider) L10;
                    synchronized (this.f74569H) {
                        containsKey = this.f74599X.containsKey(collider);
                        num = this.f74599X.get(collider);
                    }
                    if (collider.isEnabled()) {
                        if (!containsKey) {
                            return true;
                        }
                        int computeColliderBakeSignature = computeColliderBakeSignature(collider);
                        if (num == null || num.intValue() != computeColliderBakeSignature) {
                            return true;
                        }
                    } else if (containsKey) {
                        return true;
                    }
                } else {
                    continue;
                }
            }
            for (int i11 = 0; i11 < o10.D(); i11++) {
                if (checkBase(o10.C(i11))) {
                    return true;
                }
            }
        }
        return false;
    }
}
