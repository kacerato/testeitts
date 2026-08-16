package com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import android.content.Context;
import android.widget.Toast;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentUtils.ObjectReference;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.IgnoreSave.IgnoreSave;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunkSpawner;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import d8.m;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.ToDoubleFunction;
import o8.InterfaceC14490d;
import s8.InterfaceC15237a;
import s8.InterfaceC15239c;
import t6.j;

public class VoxelChunkSpawner extends Component {

    public static final String f77763N = "VoxelChunkSpawner";

    public static final Class f77764O = VoxelChunkSpawner.class;

    public GameObject f77765E;

    public boolean f77766F;

    public F9.c f77767G;

    public final MiniJP f77768H;

    public final Vector3 f77769I;

    public final Vector3 f77770J;

    public final List<g> f77771K;

    public final List<VoxelChunk> f77772L;

    public JAVARuntime.Component f77773M;

    @Expose
    private InspectorEditor blueprintEditor;

    @Expose
    private ObjectReference cameraReference;

    @Expose
    private VoxelChunk chunkBlueprint;

    @Expose
    @eb.f
    private int renderChunks;

    @Expose
    private String wantedChunksContentGUID;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return VoxelChunkSpawner.f77764O;
        }

        @Override
        public String c() {
            return VoxelChunkSpawner.f77763N;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.VOXEL);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.VOXEL_CHUNK_SPAWNER);
        }
    }

    public class b implements Component.d {
        public b() {
        }

        @Override
        public void a() {
            VoxelChunkSpawner.this.reloadInspector();
        }
    }

    public class c implements Runnable {

        public final ModelRenderer f77775b;

        public c(final ModelRenderer val$mr) {
            this.f77775b = val$mr;
        }

        @Override
        public void run() {
            this.f77775b.setEnabled(true);
        }
    }

    public class d implements Runnable {

        public final int f77777b;

        public final int f77778c;

        public class a implements InterfaceC14490d {

            public final VoxelChunk f77780a;

            public final int f77781b;

            public final int f77782c;

            public final GameObject f77783d;

            public a(final VoxelChunk val$chunk, final int val$chunkX, final int val$chunkZ, final GameObject val$object) {
                this.f77780a = val$chunk;
                this.f77781b = val$chunkX;
                this.f77782c = val$chunkZ;
                this.f77783d = val$object;
            }

            @Override
            public void run() {
                this.f77780a.setBlocksCritical(VoxelChunkSpawner.this.chunkBlueprint.getGeneratorListener().loadChunk(this.f77781b, this.f77782c));
                this.f77783d.transform.k3(true);
                this.f77783d.r(this.f77780a);
                this.f77783d.r(new ModelRenderer());
                VoxelChunk voxelChunk = this.f77780a;
                GameObject gameObject = this.f77783d;
                voxelChunk.f79250n = gameObject;
                gameObject.r(new Collider());
                com.itsmagic.engine.Engines.Engine.World.b.f(this.f77783d, VoxelChunkSpawner.this.f77765E);
            }
        }

        public d(final int val$px, final int val$pz) {
            this.f77777b = val$px;
            this.f77778c = val$pz;
        }

        @Override
        public void run() {
            VoxelChunk voxelChunk = (VoxelChunk) VoxelChunkSpawner.this.chunkBlueprint.mo1248clone();
            D9.a.f(voxelChunk);
            VoxelChunkSpawner.this.f77772L.add(voxelChunk);
            int width = this.f77777b * voxelChunk.getWidth();
            int width2 = this.f77778c * voxelChunk.getWidth();
            GameObject gameObject = new GameObject("Chunk [" + this.f77777b + ", " + this.f77778c + "]");
            gameObject.transform.setPosition((float) width, 0.0f, (float) width2);
            gameObject.transform.N3(Transform.G.STATIC);
            voxelChunk.forceCalculatedPos(width, width2);
            m.d(new a(voxelChunk, width, width2, gameObject));
        }
    }

    public class e implements h {

        public final Context f77785a;

        public class a implements Runnable {

            public final Variable f77787b;

            public class RunnableC1295a implements Runnable {

                public final Exception f77789b;

                public RunnableC1295a(final Exception val$e) {
                    this.f77789b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(e.this.f77785a, this.f77789b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f77787b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("VoxelChunkSpawner - set render chunks") : null;
                try {
                    try {
                        VoxelChunkSpawner.this.setRenderChunks(this.f77787b.int_value);
                    } catch (Exception e10) {
                        N7.c.j0(new RunnableC1295a(e10));
                    }
                } finally {
                    j.P1(S12);
                }
            }
        }

        public e(final Context val$context) {
            this.f77785a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelChunkSpawner.this.renderChunks + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements R8.e {
        public f() {
        }

        @Override
        public void a() {
            VoxelChunkSpawner.this.reloadInspector();
        }

        @Override
        public void b() {
            VoxelChunkSpawner.this.reloadInspector();
        }

        @Override
        public boolean c(GameObject gameObject) {
            return gameObject == null || gameObject.c0(Component.e.Camera) != null;
        }
    }

    public static class g {

        public final int f77792a;

        public final int f77793b;

        public final float f77794c;

        public g(int x10, int z10, float distance) {
            this.f77792a = x10;
            this.f77793b = z10;
            this.f77794c = distance;
        }
    }

    static {
        C13201a.b(new a());
    }

    public VoxelChunkSpawner() {
        super(f77763N);
        this.renderChunks = 2;
        this.cameraReference = new ObjectReference();
        this.blueprintEditor = new InspectorEditor();
        this.f77766F = false;
        this.f77768H = new MiniJP();
        this.f77769I = new Vector3();
        this.f77770J = new Vector3();
        this.f77771K = new ArrayList();
        this.f77772L = new LinkedList();
    }

    private void checkAliveChunks() {
        Vector3 vector3 = this.cameraReference.f() ? this.f77769I : this.f77770J;
        int x10 = (int) (vector3.getX() / this.chunkBlueprint.getWidth());
        int z10 = (int) (vector3.getZ() / this.chunkBlueprint.getWidth());
        int D10 = this.f77765E.D();
        for (int i10 = 0; i10 < D10; i10++) {
            GameObject C10 = this.f77765E.C(i10);
            VoxelChunk voxelChunk = (VoxelChunk) C10.c0(Component.e.VoxelChunk);
            ModelRenderer modelRenderer = (ModelRenderer) C10.c0(Component.e.ModelRenderer);
            if (voxelChunk != null) {
                int positionX = voxelChunk.getPositionX() / voxelChunk.getWidth();
                int positionZ = voxelChunk.getPositionZ() / voxelChunk.getWidth();
                int i11 = this.renderChunks;
                if (positionX < x10 - i11 || positionX > x10 + i11 || positionZ < z10 - i11 || positionZ > i11 + z10) {
                    voxelChunk.destroy();
                    C10.destroy();
                } else if (modelRenderer != null && !modelRenderer.isEnabled()) {
                    K8.a.I(new c(modelRenderer));
                }
            }
        }
    }

    public static double lambda$searchNewChunks$0(g gVar) {
        return gVar.f77794c;
    }

    private void searchNewChunks() {
        int i10;
        boolean z10;
        this.chunkBlueprint.updateGeneratorReference();
        if (this.f77765E.isHierarchyActive()) {
            Vector3 vector3 = (Vector3) this.f77768H.acquire(Vector3.class);
            try {
                if (this.cameraReference.f()) {
                    vector3.set(this.f77769I);
                } else {
                    vector3.set(this.f77770J);
                }
                int x10 = (int) (vector3.getX() / this.chunkBlueprint.getWidth());
                int z11 = (int) (vector3.getZ() / this.chunkBlueprint.getWidth());
                this.f77768H.release(vector3);
                this.f77772L.clear();
                this.f77771K.clear();
                int i11 = -this.renderChunks;
                while (true) {
                    int i12 = this.renderChunks;
                    if (i11 > i12) {
                        break;
                    }
                    for (int i13 = -i12; i13 <= this.renderChunks; i13++) {
                        int i14 = x10 + i11;
                        int i15 = z11 + i13;
                        int h10 = D9.a.h();
                        int i16 = 0;
                        while (true) {
                            if (i16 >= h10) {
                                z10 = true;
                                break;
                            }
                            try {
                                VoxelChunk g10 = D9.a.g(i16);
                                if (g10 != null) {
                                    int positionX = g10.getPositionX() / g10.getWidth();
                                    int positionZ = g10.getPositionZ() / g10.getWidth();
                                    if (positionX == i14 && positionZ == i15) {
                                        z10 = false;
                                        break;
                                    }
                                } else {
                                    continue;
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            i16++;
                        }
                        if (z10) {
                            int size = this.f77772L.size();
                            int i17 = 0;
                            while (true) {
                                if (i17 >= size) {
                                    break;
                                }
                                VoxelChunk voxelChunk = this.f77772L.get(i17);
                                if (voxelChunk != null) {
                                    int positionX2 = voxelChunk.getPositionX() / voxelChunk.getWidth();
                                    int positionZ2 = voxelChunk.getPositionZ() / voxelChunk.getWidth();
                                    if (positionX2 == i14 && positionZ2 == i15) {
                                        z10 = false;
                                        break;
                                    }
                                }
                                i17++;
                            }
                        }
                        if (z10) {
                            this.f77771K.add(new g(i14, i15, squaredDistance(x10, z11, i14, i15)));
                        }
                    }
                    i11++;
                }
                this.f77771K.sort(Comparator.comparingDouble(new ToDoubleFunction() {
                    @Override
                    public final double applyAsDouble(Object obj) {
                        double lambda$searchNewChunks$0;
                        lambda$searchNewChunks$0 = VoxelChunkSpawner.lambda$searchNewChunks$0((VoxelChunkSpawner.g) obj);
                        return lambda$searchNewChunks$0;
                    }
                }));
                int size2 = this.f77771K.size();
                for (i10 = 0; i10 < size2; i10++) {
                    g gVar = this.f77771K.get(i10);
                    spawnChunkCandidate(gVar.f77792a, gVar.f77793b);
                }
            } catch (Throwable th2) {
                this.f77768H.release(vector3);
                throw th2;
            }
        }
    }

    private boolean shouldConstructChunks() {
        return c8.b.j() || !this.chunkBlueprint.isCustomGenerator();
    }

    private void spawnChunkCandidate(int px, int pz) {
        K8.a.I(new d(px, pz));
    }

    private float squaredDistance(int originX, int originZ, int targetX, int targetZ) {
        float f10 = targetX - originX;
        float f11 = targetZ - originZ;
        return (f10 * f10) + (f11 * f11);
    }

    @InterfaceC15237a
    public GameObject getCamera() {
        if (this.cameraReference.f()) {
            return this.cameraReference.e();
        }
        return null;
    }

    @InterfaceC15237a
    public VoxelChunk getChunkBlueprint() {
        return this.chunkBlueprint;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.VOXEL_CHUNK_SPAWNER);
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        C5.b bVar = new C5.b((h) new e(context), Lang.l(Lang.T.DISTANCE_CHUNKS), b.a.SLInt, false);
        bVar.d(gameObject, this, "renderChunks", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        linkedList.add(bVar);
        linkedList.add(this.cameraReference.d(Camera.f73075M8, new f()));
        if (this.chunkBlueprint != null) {
            if (this.blueprintEditor == null) {
                this.blueprintEditor = new InspectorEditor();
            }
            C5.b bVar2 = new C5.b(new C5.a(Lang.l(Lang.T.CHUNK_SETTINGS), true, this.blueprintEditor));
            C5.a aVar = bVar2.f2064Q;
            aVar.f2043p = R.color.interface_panel;
            aVar.f2042o.addAll(this.chunkBlueprint.getInspectorEntries(context));
            linkedList.add(bVar2);
        }
        return linkedList;
    }

    @InterfaceC15237a
    public int getRenderChunks() {
        return this.renderChunks;
    }

    @Override
    public String getTitle() {
        return f77763N;
    }

    @Override
    public Component.e getType() {
        return Component.e.ChunkSpawner;
    }

    @Override
    public int iconPriority() {
        return super.iconPriority();
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        this.f77768H.startFrame();
        try {
            checkAliveChunks();
            if (shouldConstructChunks()) {
                searchNewChunks();
            }
            try {
                Vector3 vector3 = this.cameraReference.f() ? this.f77769I : this.f77770J;
                int x10 = (int) (vector3.getX() / this.chunkBlueprint.getWidth());
                int z10 = (int) (vector3.getZ() / this.chunkBlueprint.getWidth());
                int h10 = D9.a.h();
                VoxelChunk voxelChunk = null;
                float f10 = -1.0f;
                int i10 = 0;
                while (true) {
                    if (i10 >= h10) {
                        break;
                    }
                    try {
                        VoxelChunk g10 = D9.a.g(i10);
                        if (g10 != null && g10.wantsBuild() && C13317e.J(g10.f79250n)) {
                            int positionX = g10.getPositionX() / g10.getWidth();
                            int positionZ = g10.getPositionZ() / g10.getWidth();
                            if (positionX == x10 && positionZ == z10) {
                                voxelChunk = g10;
                                break;
                            }
                            float f11 = positionX - x10;
                            float f12 = positionZ - z10;
                            float f13 = (f11 * f11) + (f12 * f12);
                            if (f10 >= f13 || voxelChunk == null) {
                                voxelChunk = g10;
                                f10 = f13;
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    i10++;
                }
                if (voxelChunk != null) {
                    voxelChunk.f77711m1 = true;
                }
                for (int i11 = 0; i11 < h10; i11++) {
                    try {
                        VoxelChunk g11 = D9.a.g(i11);
                        if (g11 != null && g11 != voxelChunk) {
                            g11.f77711m1 = false;
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        } finally {
            this.f77768H.endFrame();
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        GameObject gameObject2;
        F9.c generatorListener;
        super.preUpdate(gameObject, isEditor);
        if (this.chunkBlueprint == null) {
            this.chunkBlueprint = new VoxelChunk();
            reloadInspector();
        }
        if (!this.f77766F) {
            this.chunkBlueprint.setCustomInspectorListener(new b());
            this.f77766F = true;
        }
        if (this.f77765E != null && this.f77767G != (generatorListener = this.chunkBlueprint.getGeneratorListener())) {
            this.f77767G = generatorListener;
            this.f77765E.destroy();
            this.f77765E = null;
        }
        if (!shouldConstructChunks() && (gameObject2 = this.f77765E) != null && gameObject2.D() > 0) {
            this.f77765E.destroy();
            this.f77765E = null;
        }
        if (C13317e.G(this.f77765E)) {
            this.f77765E = null;
        }
        if (this.f77765E == null) {
            String str = this.wantedChunksContentGUID;
            if (str != null) {
                String str2 = new String(str);
                Iterator<GameObject> it = com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    GameObject next = it.next();
                    if (this.wantedChunksContentGUID != null && next.getGuid().i(str2)) {
                        this.f77765E = next;
                        break;
                    }
                }
            } else {
                String str3 = "Chunks of " + gameObject.getName() + " - " + gameObject.getGuid().l();
                for (GameObject gameObject3 : com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b) {
                    if (gameObject3.getName().equals(str3)) {
                        this.f77765E = gameObject3;
                    }
                }
            }
        }
        if (this.f77765E == null) {
            GameObject gameObject4 = new GameObject("Chunks of " + gameObject.getName() + " - " + gameObject.getGuid().l());
            this.f77765E = gameObject4;
            gameObject4.r(new IgnoreSave());
            this.f77765E.Q1();
            this.wantedChunksContentGUID = this.f77765E.getGuid().l().toString();
            this.f77765E.transform.N3(Transform.G.STATIC);
        }
        GameObject gameObject5 = this.f77765E;
        if (gameObject5 != null) {
            if (!gameObject5.L0(Component.e.IgnoreSave)) {
                this.f77765E.r(new IgnoreSave());
            }
            this.f77765E.transform.N3(Transform.G.STATIC);
        }
        this.cameraReference.j();
        if (this.cameraReference.f()) {
            this.cameraReference.e().J0().u0(this.f77769I);
        }
        gameObject.transform.u0(this.f77770J);
    }

    @InterfaceC15239c
    @InterfaceC15237a
    public void setCamera(GameObject gameObject) {
        this.cameraReference.h(gameObject);
    }

    @InterfaceC15237a
    public void setChunkBlueprint(VoxelChunk chunkBlueprint) {
        this.chunkBlueprint = chunkBlueprint;
    }

    @InterfaceC15237a
    public void setRenderChunks(int renderChunks) {
        this.renderChunks = renderChunks;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f77773M = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f77773M;
        if (component != null) {
            return component;
        }
        JAVARuntime.VoxelChunkSpawner voxelChunkSpawner = new JAVARuntime.VoxelChunkSpawner(this);
        this.f77773M = voxelChunkSpawner;
        return voxelChunkSpawner;
    }

    @Override
    public Component mo1248clone() {
        VoxelChunkSpawner voxelChunkSpawner = new VoxelChunkSpawner();
        voxelChunkSpawner.chunkBlueprint = (VoxelChunk) this.chunkBlueprint.mo1248clone();
        voxelChunkSpawner.renderChunks = this.renderChunks;
        voxelChunkSpawner.cameraReference = this.cameraReference.clone();
        voxelChunkSpawner.wantedChunksContentGUID = this.wantedChunksContentGUID;
        voxelChunkSpawner.renderChunks = this.renderChunks;
        return voxelChunkSpawner;
    }
}
