package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads;

import C5.b;
import F5.c;
import aa.C3593a;
import aa.C3595c;
import android.content.Context;
import android.view.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.tonyodev.fetch2core.server.FileRequest;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;
import y9.InterfaceC16153a;

public class Road extends Component {

    public static final String f76883T = "Road";

    public static final Class f76884U = Road.class;

    public final com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.a f76885E;

    public final List<PointReference> f76886F;

    public final List<PointReference> f76887G;

    public final MiniJP f76888H;

    public int f76889I;

    public boolean f76890J;

    public boolean f76891K;

    public boolean f76892L;

    public final float[] f76893M;

    public int f76894N;

    public float f76895O;

    public boolean f76896P;

    public final Vector3 f76897Q;

    public float f76898R;

    public JAVARuntime.Component f76899S;

    @Expose
    @eb.f
    private float collapseAngle;

    @Expose
    private boolean generateCollision;

    @Expose
    @eb.f
    private float quality;

    @Expose
    @eb.f
    private float roadBorder;

    @Expose
    @eb.f
    private float roadBorderUV;

    @Expose
    @eb.f
    private float roadBorderVerticalOffset;

    @Expose
    @eb.f
    private float shrinkFactor;

    @Expose
    @eb.f
    private float simplifyAngle;

    @Expose
    @eb.f
    private float terrainBorder;

    @Expose
    private a.q textureMode;

    @Expose
    @eb.f
    private float textureWidth;

    @Expose
    @eb.f
    private float thresholdAngle;

    @Expose
    @eb.f
    private float verticalOffset;

    @Expose
    @eb.f
    private float width;

    public class a implements c.o0 {

        public class C1259a implements D5.h {
            public C1259a() {
            }

            @Override
            public Variable get() {
                return new Variable("", Nc.b.M(0.01f, Road.this.simplifyAngle) + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Road.this.simplifyAngle = Nc.b.M(0.01f, variable.float_value);
                }
            }
        }

        public a() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b((D5.h) new C1259a(), "Min angle", b.a.SLFloat, false);
            Road road = Road.this;
            entries.add(bVar.d(road.f79250n, road, "simplifyAngle", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            return entries;
        }
    }

    public class b implements D5.h {

        public final a.q[] f76902a;

        public b(final a.q[] val$values) {
            this.f76902a = val$values;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = variable.int_value;
                Road.this.textureMode = this.f76902a[i10];
                Road.this.reloadInspector();
            }
        }
    }

    public class c implements D5.b {
        public c() {
        }

        @Override
        public void a(View view) {
            Road.this.f76892L = true;
        }
    }

    public class d extends AbstractC13203c {
        @Override
        public Class b() {
            return Road.f76884U;
        }

        @Override
        public String c() {
            return Road.f76883T;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.ROAD);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Road.this.width + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Road.this.width = variable.float_value;
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", Nc.b.M(0.1f, Road.this.quality) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Road.this.quality = Nc.b.M(0.1f, variable.float_value);
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", Road.this.terrainBorder + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Road.this.terrainBorder = variable.float_value;
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", Road.this.verticalOffset + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Road.this.verticalOffset = variable.float_value;
            }
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", Road.this.generateCollision + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Road.this.generateCollision = variable.booolean_value.booleanValue();
            }
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", Nc.b.M(0.01f, Road.this.textureWidth) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Road.this.textureWidth = Nc.b.M(0.01f, variable.float_value);
            }
        }
    }

    public class k implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", Road.this.roadBorder + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Road.this.roadBorder = variable.float_value;
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", Road.this.roadBorderVerticalOffset + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Road.this.roadBorderVerticalOffset = variable.float_value;
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", Road.this.roadBorderUV + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Road.this.roadBorderUV = variable.float_value;
                }
            }
        }

        public k() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            C5.b bVar = new C5.b((D5.h) aVar, FileRequest.FIELD_SIZE, aVar2, false);
            Road road = Road.this;
            GameObject gameObject = road.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            entries.add(bVar.d(gameObject, road, "roadBorder", cVar));
            C5.b bVar2 = new C5.b((D5.h) new b(), Lang.l(Lang.T.ROAD_BORDER_VERTICAL_OFFSET), aVar2, false);
            Road road2 = Road.this;
            entries.add(bVar2.d(road2.f79250n, road2, "roadBorderVerticalOffset", cVar));
            C5.b bVar3 = new C5.b((D5.h) new c(), Lang.l(Lang.T.ROAD_BORDER_UV), aVar2, false);
            Road road3 = Road.this;
            entries.add(bVar3.d(road3.f79250n, road3, "roadBorderUV", cVar));
            return entries;
        }
    }

    public class l implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", Nc.b.M(0.01f, Road.this.collapseAngle) + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Road.this.collapseAngle = Nc.b.M(0.01f, variable.float_value);
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", Nc.b.M(0.01f, Road.this.thresholdAngle) + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Road.this.thresholdAngle = Nc.b.M(0.01f, variable.float_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", Nc.b.M(0.01f, Road.this.shrinkFactor) + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Road.this.shrinkFactor = Nc.b.M(0.01f, variable.float_value);
                }
            }
        }

        public l() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            C5.b bVar = new C5.b((D5.h) aVar, "Collapse angle", aVar2, false);
            Road road = Road.this;
            GameObject gameObject = road.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            entries.add(bVar.d(gameObject, road, "collapseAngle", cVar));
            C5.b bVar2 = new C5.b((D5.h) new b(), "Threshold angle", aVar2, false);
            Road road2 = Road.this;
            entries.add(bVar2.d(road2.f79250n, road2, "thresholdAngle", cVar));
            C5.b bVar3 = new C5.b((D5.h) new c(), "Shrink factor", aVar2, false);
            Road road3 = Road.this;
            entries.add(bVar3.d(road3.f79250n, road3, "shrinkFactor", cVar));
            return entries;
        }
    }

    static {
        C13201a.b(new d());
    }

    public Road() {
        super(f76883T);
        this.width = 5.0f;
        this.quality = 6.0f;
        this.terrainBorder = 2.0f;
        this.generateCollision = true;
        this.verticalOffset = 0.03f;
        this.textureMode = a.q.Vertical;
        this.textureWidth = 0.1f;
        this.roadBorder = 0.0f;
        this.roadBorderVerticalOffset = -1.0f;
        this.roadBorderUV = 0.0f;
        this.collapseAngle = 25.0f;
        this.thresholdAngle = 70.0f;
        this.shrinkFactor = 0.1f;
        this.simplifyAngle = 0.8f;
        this.f76885E = new com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.a();
        this.f76886F = new SteppedArrayList();
        this.f76887G = new SteppedArrayList();
        this.f76888H = new MiniJP();
        this.f76893M = new float[16];
        this.f76894N = -1;
        this.f76895O = 0.0f;
        this.f76897Q = new Vector3();
    }

    private void addPointsToRoad() {
        if (this.f76896P) {
            this.f76896P = false;
            this.f76885E.l();
            this.f76885E.M();
            int size = this.f76886F.size();
            for (int i10 = 0; i10 < size; i10++) {
                PointReference pointReference = this.f76886F.get(i10);
                Vector3 vector3 = pointReference.f76882f;
                pointReference.f76877a = false;
                if (pointReference.component.isConnected() && i10 == size - 1) {
                    pointReference.f76877a = true;
                    this.f76885E.a(vector3.add(pointReference.f76881e.mul(this.width)));
                    this.f76885E.a(vector3.add(pointReference.f76881e.mul(this.width * 0.4f)));
                }
                pointReference.f76878b = this.f76885E.a(vector3);
                if (pointReference.component.isConnected() && i10 == 0) {
                    pointReference.f76877a = true;
                    this.f76885E.a(vector3.add(pointReference.f76881e.mul(this.width * 0.4f)));
                    this.f76885E.a(vector3.add(pointReference.f76881e.mul(this.width)));
                }
                if (size == 1) {
                    pointReference.component.b(null, null);
                    pointReference.component.setFirst(true);
                    pointReference.component.setLast(true);
                } else if (i10 == 0) {
                    pointReference.component.b(null, this.f76886F.get(i10 + 1).component);
                    pointReference.component.setFirst(true);
                    pointReference.component.setLast(false);
                } else if (i10 == size - 1) {
                    pointReference.component.b(this.f76886F.get(i10 - 1).component, null);
                    pointReference.component.setFirst(false);
                    pointReference.component.setLast(true);
                } else {
                    pointReference.component.b(this.f76886F.get(i10 - 1).component, this.f76886F.get(i10 + 1).component);
                    pointReference.component.setFirst(false);
                    pointReference.component.setLast(false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Road buildDefault(GameObject gameObject) {
        Road road = new Road();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new Vector3(0.0f, 0.0f, 0.0f));
        steppedArrayList.add(new Vector3(0.0f, 0.0f, 10.0f));
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            GameObject gameObject2 = new GameObject("Point " + i10, new Transform());
            com.itsmagic.engine.Engines.Engine.World.b.f(gameObject2, gameObject);
            gameObject2.r(new RoadPoint());
            gameObject2.transform.p3((Vector3) steppedArrayList.get(i10));
        }
        return road;
    }

    private void cachePointSnapshots() {
        if (this.f79250n == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f76886F.size(); i10++) {
            PointReference pointReference = this.f76886F.get(i10);
            GameObject gameObject = pointReference.gameObject;
            if (gameObject != null && pointReference.component != null) {
                gameObject.transform.u0(pointReference.f76880d);
                this.f79250n.transform.T1(pointReference.f76880d, pointReference.f76882f);
            }
        }
    }

    private void generateCollider() {
        if (this.generateCollision) {
            Collider collider = (Collider) this.f79250n.c0(Component.e.Collider);
            if (collider == null) {
                collider = new Collider();
                this.f79250n.r(collider);
            }
            Collider.o shape = collider.getShape();
            Collider.o oVar = Collider.o.Model;
            if (shape == oVar && collider.getCollisionVertex() == this.f76885E.C()) {
                return;
            }
            collider.shape = oVar;
            collider.setVertex(this.f76885E.C());
        }
    }

    private void generateModelRenderer() {
        ModelRenderer modelRenderer = (ModelRenderer) this.f79250n.c0(Component.e.ModelRenderer);
        if (modelRenderer == null) {
            modelRenderer = new ModelRenderer();
            this.f79250n.r(modelRenderer);
        }
        if (modelRenderer.f79250n.a1()) {
            modelRenderer.f79236A = false;
        } else {
            modelRenderer.f79236A = true;
        }
        if (this.f76892L) {
            modelRenderer.setMaterialFile(com.itsmagic.engine.Core.Components.ProjectController.a.u(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L()));
            this.f76892L = false;
        }
        Vertex C10 = this.f76885E.C();
        if (modelRenderer.getVertex() != C10 && C10 != null) {
            modelRenderer.setModel(C10);
        }
        boolean z10 = modelRenderer.f73747F == null;
        if (z10 != this.f76891K) {
            this.f76891K = z10;
            reloadInspector();
        }
    }

    private void pointForwardPoints(PointReference reference, int i10) {
        if (this.f76886F.size() < 2 || reference.component.isConnected()) {
            return;
        }
        if (i10 == 0) {
            Vector3 sub = reference.f76880d.sub(this.f76886F.get(i10 + 1).f76880d);
            sub.normalizeLocal();
            reference.gameObject.transform.lookTo(reference.f76880d.add(sub));
            return;
        }
        if (i10 < this.f76886F.size() - 1) {
            reference.gameObject.transform.lookTo(this.f76886F.get(i10 + 1).f76880d);
        } else if (i10 > 0) {
            Vector3 sub2 = reference.f76880d.sub(this.f76886F.get(i10 - 1).f76880d);
            sub2.normalizeLocal();
            reference.gameObject.transform.lookTo(reference.f76880d.add(sub2));
        }
    }

    private void refreshPointReferences() {
        if (this.f79250n == null) {
            this.f76886F.clear();
            this.f76887G.clear();
            return;
        }
        int size = this.f76886F.size();
        this.f76887G.clear();
        this.f76887G.addAll(this.f76886F);
        this.f76886F.clear();
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            searchPointsOnChild(this.f79250n.C(i10));
        }
        if (size != this.f76886F.size()) {
            scheduleReloadPoints();
        }
    }

    private void searchPointsOnChild(GameObject gameObject) {
        InterfaceC16153a interfaceC16153a;
        if (gameObject.isEnabled() && (interfaceC16153a = (InterfaceC16153a) gameObject.d0(InterfaceC16153a.class)) != null && interfaceC16153a.isEnabled()) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.f76887G.size()) {
                    this.f76886F.add(new PointReference(gameObject, interfaceC16153a));
                    break;
                }
                PointReference pointReference = this.f76887G.get(i10);
                if (pointReference.gameObject == gameObject) {
                    this.f76886F.add(pointReference);
                    this.f76887G.remove(i10);
                    break;
                }
                i10++;
            }
            for (int i11 = 0; i11 < gameObject.D(); i11++) {
                searchPointsOnChild(gameObject.C(i11));
            }
        }
    }

    private void updatePointForwarding() {
        for (int i10 = 0; i10 < this.f76886F.size(); i10++) {
            pointForwardPoints(this.f76886F.get(i10), i10);
        }
        for (int i11 = 0; i11 < this.f76886F.size(); i11++) {
            PointReference pointReference = this.f76886F.get(i11);
            GameObject gameObject = pointReference.gameObject;
            if (gameObject != null && pointReference.component != null) {
                gameObject.transform.a0(pointReference.f76881e);
            }
        }
    }

    private void updatePoints() {
        for (int i10 = 0; i10 < this.f76886F.size(); i10++) {
            PointReference pointReference = this.f76886F.get(i10);
            pointReference.gameObject.E1("Point " + i10);
            pointReference.component.setRoad(this);
            Vector3 vector3 = pointReference.f76882f;
            if (pointReference.f76878b >= 0 && !pointReference.f76879c.equally(vector3)) {
                this.f76885E.e0(pointReference.f76878b, vector3);
                this.f76885E.M();
                pointReference.f76879c.set(vector3);
                if (pointReference.f76877a) {
                    this.f76896P = true;
                }
            }
        }
    }

    public float getCachedGlobalPositionX() {
        return this.f76897Q.getX();
    }

    public float getCachedGlobalPositionY() {
        return this.f76897Q.getY();
    }

    public float getCachedGlobalPositionZ() {
        return this.f76897Q.getZ();
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.ROAD);
    }

    @Override
    public int getIconResource() {
        return R.drawable.road;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_terrain;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        e eVar = new e();
        String l10 = Lang.l(Lang.T.WIDTH);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b((D5.h) eVar, l10, aVar, false);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "width", cVar));
        linkedList.add(new C5.b((D5.h) new f(), Lang.l(Lang.T.QUALITY), aVar, false).d(this.f79250n, this, "quality", cVar));
        linkedList.add(new C5.b((D5.h) new g(), Lang.l(Lang.T.TERRAIN_BORDER), aVar, false).d(this.f79250n, this, "terrainBorder", cVar));
        linkedList.add(new C5.b((D5.h) new h(), Lang.l(Lang.T.VERTICAL_OFFSET), aVar, false).d(this.f79250n, this, "verticalOffset", cVar));
        linkedList.add(new C5.b((D5.h) new i(), Lang.l(Lang.T.COLLISION), b.a.SLBoolean, false));
        linkedList.add(new C5.b((D5.h) new j(), Lang.l(Lang.T.TEXTURE_WIDTH), aVar, false).d(this.f79250n, this, "textureWidth", cVar));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.BORDER), new k()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.CURVES), new l()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.SIMPLIFY), new a()));
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        a.q[] values = a.q.values();
        for (a.q qVar : values) {
            steppedArrayList.add(qVar.toString());
        }
        linkedList.add(new C5.b(new b(values), this.textureMode.toString(), steppedArrayList, b.a.SLDropdown, Lang.l(Lang.T.TEXTURE_MODE)));
        if (this.f76891K) {
            linkedList.add(new C5.b(Lang.l(Lang.T.MODEL_RENDERER_MISSING_MATERIAL), 12, R.color.theme_error));
            linkedList.add(new C5.b(new c(), Lang.l(Lang.T.CREATE_NEW_MATERIAL), b.a.ButtonMatchParent));
        }
        return linkedList;
    }

    @InterfaceC15237a
    public float getQuality() {
        return this.quality;
    }

    @InterfaceC15237a
    public float getRoadBorder() {
        return this.roadBorder;
    }

    @InterfaceC15237a
    public float getRoadBorderUV() {
        return this.roadBorderUV;
    }

    @InterfaceC15237a
    public float getRoadBorderVerticalOffset() {
        return this.roadBorderVerticalOffset;
    }

    @InterfaceC15237a
    public float getTerrainBorder() {
        return this.terrainBorder;
    }

    @InterfaceC15237a
    public a.q getTextureMode() {
        return this.textureMode;
    }

    @InterfaceC15237a
    public float getTextureWidth() {
        return this.textureWidth;
    }

    @Override
    public String getTitle() {
        return f76883T;
    }

    @Override
    public Component.e getType() {
        return Component.e.Road;
    }

    @InterfaceC15237a
    public float getVerticalOffset() {
        return this.verticalOffset;
    }

    @InterfaceC15237a
    public float getWidth() {
        return this.width;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    @InterfaceC15237a
    public boolean isGenerateCollision() {
        return this.generateCollision;
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        this.f76888H.startFrame();
        try {
            float M10 = Nc.b.M(0.1f, (1.0f / this.quality) * 10.0f);
            this.f76885E.Z(this.width);
            this.f76885E.P(M10);
            this.f76885E.O(this.terrainBorder);
            this.f76885E.V(this.textureMode);
            this.f76885E.W(this.textureWidth);
            this.f76885E.Y(this.verticalOffset);
            this.f76885E.Q(this.roadBorder);
            this.f76885E.S(this.roadBorderVerticalOffset);
            this.f76885E.R(this.roadBorderUV);
            this.f76885E.N(this.collapseAngle);
            this.f76885E.X(this.thresholdAngle);
            this.f76885E.T(this.shrinkFactor);
            this.f76885E.U(this.simplifyAngle);
            addPointsToRoad();
            updatePoints();
            if (this.f76890J) {
                aa.e eVar = new aa.e();
                eVar.o(false);
                eVar.n(false);
                C3595c c3595c = new C3595c();
                aa.d dVar = new aa.d();
                dVar.f31958c.set(0.0f, -1.0f, 0.0f);
                c3595c.f31953b = dVar;
                for (int i10 = 0; i10 < this.f76886F.size(); i10++) {
                    PointReference pointReference = this.f76886F.get(i10);
                    dVar.f31957b.set(pointReference.f76880d);
                    Vector3 vector3 = dVar.f31957b;
                    vector3.setY(vector3.getY() + 5000.0f);
                    C3593a A10 = eVar.A(c3595c);
                    if (A10 != null) {
                        pointReference.gameObject.transform.u3(A10.i().getY() - this.f76898R);
                    }
                }
                this.f76890J = false;
            }
            if (this.f76885E.I(this.f79250n)) {
                this.f76895O = 0.0f;
            }
            this.f76888H.endFrame();
        } catch (Throwable th2) {
            this.f76888H.endFrame();
            throw th2;
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject != null) {
            gameObject.transform.G3();
            gameObject.transform.setScale(1.0f);
            this.f76894N = gameObject.transform.x4(this.f76893M, this.f76894N);
            gameObject.transform.u0(this.f76897Q);
            this.f76898R = this.f76897Q.getY();
        } else {
            this.f76897Q.set(0.0f, 0.0f, 0.0f);
            this.f76898R = 0.0f;
        }
        float f10 = this.f76895O;
        if (f10 >= 0.0f) {
            float d10 = f10 + K8.d.d();
            this.f76895O = d10;
            if (d10 >= 0.5f) {
                this.f76895O = -1.0f;
                int A10 = R8.f.A();
                for (int i10 = 0; i10 < A10; i10++) {
                    try {
                        Component z10 = R8.f.z(i10);
                        if (z10 instanceof Terrain) {
                            ((Terrain) z10).requestRegenLevelTable();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        refreshPointReferences();
        cachePointSnapshots();
        updatePointForwarding();
        this.f76885E.b0();
        if (this.f76885E.C() != null && c8.b.j()) {
            generateCollider();
        }
        if (this.f76885E.C() != null) {
            generateModelRenderer();
        }
    }

    public void scheduleReloadPoints() {
        this.f76896P = true;
    }

    @InterfaceC15237a
    public void setGenerateCollision(boolean generateCollision) {
        this.generateCollision = generateCollision;
    }

    @InterfaceC15237a
    public void setQuality(float quality) {
        this.quality = quality;
    }

    @InterfaceC15237a
    public void setRoadBorder(float roadBorder) {
        this.roadBorder = roadBorder;
    }

    @InterfaceC15237a
    public void setRoadBorderUV(float roadBorderUV) {
        this.roadBorderUV = roadBorderUV;
    }

    @InterfaceC15237a
    public void setRoadBorderVerticalOffset(float roadBorderVerticalOffset) {
        this.roadBorderVerticalOffset = roadBorderVerticalOffset;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76899S = run;
    }

    @InterfaceC15237a
    public void setTerrainBorder(float terrainBorder) {
        this.terrainBorder = terrainBorder;
    }

    @InterfaceC15237a
    public void setTextureMode(a.q textureMode) {
        this.textureMode = textureMode;
    }

    @InterfaceC15237a
    public void setTextureWidth(float textureWidth) {
        this.textureWidth = textureWidth;
    }

    @InterfaceC15237a
    public void setVerticalOffset(float verticalOffset) {
        this.verticalOffset = verticalOffset;
    }

    @InterfaceC15237a
    public void setWidth(float width) {
        this.width = width;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76899S;
        if (component != null) {
            return component;
        }
        JAVARuntime.Road road = new JAVARuntime.Road(this);
        this.f76899S = road;
        return road;
    }

    @Override
    public Component mo1248clone() {
        Road road = new Road();
        road.width = this.width;
        road.quality = this.quality;
        road.terrainBorder = this.terrainBorder;
        road.generateCollision = this.generateCollision;
        road.textureMode = this.textureMode;
        road.textureWidth = this.textureWidth;
        road.verticalOffset = this.verticalOffset;
        road.roadBorder = this.roadBorder;
        road.roadBorderVerticalOffset = this.roadBorderVerticalOffset;
        road.roadBorderUV = this.roadBorderUV;
        road.collapseAngle = this.collapseAngle;
        road.thresholdAngle = this.thresholdAngle;
        road.shrinkFactor = this.shrinkFactor;
        road.simplifyAngle = this.simplifyAngle;
        return road;
    }
}
