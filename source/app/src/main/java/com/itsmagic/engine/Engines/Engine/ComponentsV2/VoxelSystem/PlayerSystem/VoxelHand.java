package com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.PlayerSystem;

import C5.b;
import JAVARuntime.Runnable;
import aa.C3593a;
import android.content.Context;
import android.widget.Toast;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentUtils.ObjectReference;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Input.Key;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import ib.InterfaceC13601h;
import java.util.LinkedList;
import java.util.List;
import rc.C15169a;
import ub.p;

public class VoxelHand extends Component {

    public static final String f77795V1 = "VoxelHand";

    public static final Class f77796b2 = VoxelHand.class;

    public final InterfaceC13601h f77797D0;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f77798E;

    public final Quaternion f77799F;

    public Key f77800F1;

    public final Vector3 f77801G;

    public final Vector3 f77802H;

    public boolean f77803H1;

    public boolean f77804I;

    public boolean f77805J;

    public boolean f77806K;

    public int f77807L;

    public Key f77808L1;

    public int f77809M;

    public boolean f77810M1;

    public int f77811N;

    public int f77812O;

    public final Object f77813P;

    public boolean f77814Q;

    public VoxelChunk f77815R;

    public JAVARuntime.Component f77816R1;

    public int f77817S;

    public int f77818T;

    public int f77819U;

    public int f77820V;

    public boolean f77821W;

    public VoxelChunk f77822X;

    public int f77823Y;

    public int f77824Z;

    public float f77825b1;

    @Expose
    private String breakKey;

    @Expose
    @eb.f
    private ColorINT crossHairColor;

    @Expose
    @eb.f
    private int crossHairSize;

    @Expose
    private String crossHairTexture;

    @Expose
    @eb.f
    private float distance;

    @Expose
    private ObjectReference gizmoReference;

    @Expose
    @eb.f
    private float gizmoUpdateDelay;

    public p f77826i1;

    public int f77827m1;

    @Expose
    private String putKey;

    public int f77828q0;

    public boolean f77829q1;

    @Expose
    @eb.f
    private int selectedBlockId;

    @Expose
    private boolean showCrosshair;

    public int f77830v0;

    public boolean f77831v1;

    public o f77832y1;

    public class a implements D5.h {

        public final Context f77833a;

        public class C1296a implements Runnable {

            public final Variable f77835b;

            public class RunnableC1297a implements Runnable {

                public final Exception f77837b;

                public RunnableC1297a(final Exception val$e) {
                    this.f77837b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(a.this.f77833a, this.f77837b.getMessage(), 0).show();
                }
            }

            public C1296a(final Variable val$variable) {
                this.f77835b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelHand.this.setSelectedBlockID(this.f77835b.int_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1297a(e10));
                }
            }
        }

        public a(final Context val$context) {
            this.f77833a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelHand.this.selectedBlockId + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1296a(variable));
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelHand.this.showCrosshair ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                boolean z10 = VoxelHand.this.showCrosshair != variable.booolean_value.booleanValue();
                VoxelHand.this.showCrosshair = variable.booolean_value.booleanValue();
                if (z10) {
                    VoxelHand.this.reloadInspector();
                }
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", VoxelHand.this.crossHairTexture + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VoxelHand.this.crossHairTexture = variable.str_value;
            }
        }
    }

    public class d implements D5.h {

        public final Context f77841a;

        public class a implements Runnable {

            public final Variable f77843b;

            public class RunnableC1298a implements Runnable {

                public final Exception f77845b;

                public RunnableC1298a(final Exception val$e) {
                    this.f77845b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(d.this.f77841a, this.f77845b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f77843b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelHand.this.setCrossHairSize(this.f77843b.int_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1298a(e10));
                }
            }
        }

        public d(final Context val$context) {
            this.f77841a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelHand.this.crossHairSize + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", VoxelHand.this.crossHairColor);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                if (variable.color_value == null) {
                    variable.color_value = new ColorINT();
                }
                VoxelHand.this.crossHairColor.intColor = variable.color_value.intColor;
            }
        }
    }

    public class f extends AbstractC13203c {
        @Override
        public Class b() {
            return VoxelHand.f77796b2;
        }

        @Override
        public String c() {
            return VoxelHand.f77795V1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.VOXEL);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.VOXEL_HAND);
        }
    }

    public class g implements InterfaceC13601h {
        public g() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            VoxelHand.this.f77804I = true;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override
        public void run() {
            VoxelHand.this.f77829q1 = false;
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override
        public void run() {
            VoxelHand.this.f77831v1 = false;
        }
    }

    public class j implements D5.h {

        public final Context f77851a;

        public class a implements Runnable {

            public final Variable f77853b;

            public class RunnableC1299a implements Runnable {

                public final Exception f77855b;

                public RunnableC1299a(final Exception val$e) {
                    this.f77855b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(j.this.f77851a, this.f77855b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f77853b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelHand.this.setDistance(this.f77853b.float_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1299a(e10));
                }
            }
        }

        public j(final Context val$context) {
            this.f77851a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelHand.this.distance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class k implements D5.h {

        public final Context f77857a;

        public class a implements Runnable {

            public final Variable f77859b;

            public class RunnableC1300a implements Runnable {

                public final Exception f77861b;

                public RunnableC1300a(final Exception val$e) {
                    this.f77861b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(k.this.f77857a, this.f77861b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f77859b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelHand.this.setBreakKey(this.f77859b.str_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1300a(e10));
                }
            }
        }

        public k(final Context val$context) {
            this.f77857a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelHand.this.breakKey + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class l implements D5.h {

        public final Context f77863a;

        public class a implements Runnable {

            public final Variable f77865b;

            public class RunnableC1301a implements Runnable {

                public final Exception f77867b;

                public RunnableC1301a(final Exception val$e) {
                    this.f77867b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(l.this.f77863a, this.f77867b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f77865b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelHand.this.setPutKey(this.f77865b.str_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1301a(e10));
                }
            }
        }

        public l(final Context val$context) {
            this.f77863a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelHand.this.putKey + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class m implements R8.e {
        public m() {
        }

        @Override
        public void a() {
            VoxelHand.this.reloadInspector();
        }

        @Override
        public void b() {
            VoxelHand.this.reloadInspector();
        }

        @Override
        public boolean c(GameObject gameObject) {
            return true;
        }
    }

    public class n implements D5.h {

        public final Context f77870a;

        public class a implements Runnable {

            public final Variable f77872b;

            public class RunnableC1302a implements Runnable {

                public final Exception f77874b;

                public RunnableC1302a(final Exception val$e) {
                    this.f77874b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(n.this.f77870a, this.f77874b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f77872b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelHand.this.setGizmoUpdateDelay(this.f77872b.float_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1302a(e10));
                }
            }
        }

        public n(final Context val$context) {
            this.f77870a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelHand.this.gizmoUpdateDelay + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public interface o {
        void onBlockBroken(int blockType, int x10, int y10, int z10);

        void onBlockPlaced(int blockType, int x10, int y10, int z10);

        void onBlockSelected(int blockType, int x10, int y10, int z10);
    }

    static {
        C13201a.b(new f());
    }

    public VoxelHand() {
        super(f77795V1);
        this.distance = 3.5f;
        this.breakKey = "breakBlock";
        this.putKey = "putBlock";
        this.gizmoReference = new ObjectReference();
        this.gizmoUpdateDelay = 0.2f;
        this.showCrosshair = true;
        this.crossHairSize = 25;
        this.crossHairColor = new ColorINT(255, 0, 0);
        this.crossHairTexture = null;
        this.selectedBlockId = 3;
        this.f77798E = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77799F = new Quaternion();
        this.f77801G = new Vector3();
        this.f77802H = new Vector3(0.0f, 0.0f, 1.0f);
        this.f77804I = true;
        this.f77805J = true;
        this.f77813P = new Object();
        this.f77797D0 = new g();
        this.f77825b1 = 0.0f;
        this.f77832y1 = null;
        this.f77803H1 = false;
        this.f77810M1 = false;
    }

    private void applyPendingBlockActions() {
        VoxelChunk voxelChunk;
        VoxelChunk voxelChunk2;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        synchronized (this.f77813P) {
            try {
                voxelChunk = null;
                if (this.f77814Q) {
                    voxelChunk2 = this.f77815R;
                    i10 = this.f77817S;
                    i11 = this.f77818T;
                    i12 = this.f77819U;
                    i13 = this.f77820V;
                    this.f77814Q = false;
                    this.f77815R = null;
                } else {
                    voxelChunk2 = null;
                    i10 = 0;
                    i11 = 0;
                    i12 = 0;
                    i13 = 0;
                }
                if (this.f77821W) {
                    VoxelChunk voxelChunk3 = this.f77822X;
                    i14 = this.f77823Y;
                    i15 = this.f77824Z;
                    i16 = this.f77828q0;
                    i17 = this.f77830v0;
                    this.f77821W = false;
                    this.f77822X = null;
                    voxelChunk = voxelChunk3;
                } else {
                    i14 = 0;
                    i15 = 0;
                    i16 = 0;
                    i17 = 0;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (voxelChunk2 != null && voxelChunk2.isReady()) {
            try {
                E9.d.b(voxelChunk2, i11, i12, i13, 0);
                this.f77829q1 = true;
                K8.a.B(new h());
                o oVar = this.f77832y1;
                if (oVar != null) {
                    oVar.onBlockBroken(i10, i11, i12, i13);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (voxelChunk == null || !voxelChunk.isReady()) {
            return;
        }
        try {
            E9.d.b(voxelChunk, i14, i15, i16, i17);
            this.f77831v1 = true;
            K8.a.B(new i());
            o oVar2 = this.f77832y1;
            if (oVar2 != null) {
                oVar2.onBlockPlaced(i17, i14, i15, i16);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void applyPendingGizmoState() {
        if (this.f77805J) {
            this.f77805J = false;
            GameObject e10 = this.gizmoReference.e();
            if (C13317e.J(e10)) {
                if (this.f77806K) {
                    e10.setEnabled(true);
                    e10.transform.setPosition(this.f77809M, this.f77811N, this.f77812O);
                } else {
                    e10.setEnabled(false);
                }
            }
            int i10 = this.f77807L;
            this.f77827m1 = i10;
            o oVar = this.f77832y1;
            if (oVar != null) {
                if (this.f77806K) {
                    oVar.onBlockSelected(i10, this.f77809M, this.f77811N, this.f77812O);
                } else {
                    oVar.onBlockSelected(0, 0, 0, 0);
                }
            }
        }
    }

    private void bindTransformListener() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.O2(this.f77797D0);
        this.f79250n.transform.u(this.f77797D0);
    }

    private boolean getBreak() {
        if (this.f77803H1) {
            this.f77803H1 = false;
            return true;
        }
        String str = this.breakKey;
        if (str == null || str.isEmpty()) {
            this.f77800F1 = null;
            return false;
        }
        Key key = this.f77800F1;
        if (key == null || !key.c(this.breakKey)) {
            this.f77800F1 = C15169a.j(this.breakKey);
        }
        Key key2 = this.f77800F1;
        if (key2 != null) {
            return key2.f();
        }
        return false;
    }

    private boolean getPut() {
        if (this.f77810M1) {
            this.f77810M1 = false;
            return true;
        }
        String str = this.putKey;
        if (str == null || str.isEmpty()) {
            this.f77808L1 = null;
            return false;
        }
        Key key = this.f77808L1;
        if (key == null || !key.c(this.putKey)) {
            this.f77808L1 = C15169a.j(this.putKey);
        }
        Key key2 = this.f77808L1;
        if (key2 != null) {
            return key2.f();
        }
        return false;
    }

    private void handleBreakHit(C3593a hit) {
        VoxelChunk voxelChunk;
        if (hit == null || (voxelChunk = (VoxelChunk) hit.getGameObject().c0(Component.e.VoxelChunk)) == null || !voxelChunk.isReady()) {
            return;
        }
        Vector3 i10 = hit.i();
        Vector3 f10 = hit.f();
        int floor = (int) Math.floor(i10.getX() - (f10.getX() * 0.5f));
        int floor2 = (int) Math.floor(i10.getY() - (f10.getY() * 0.5f));
        int floor3 = (int) Math.floor(i10.getZ() - (f10.getZ() * 0.5f));
        try {
            int block = voxelChunk.getBlock(floor, floor2, floor3);
            synchronized (this.f77813P) {
                this.f77815R = voxelChunk;
                this.f77817S = block;
                this.f77818T = floor;
                this.f77819U = floor2;
                this.f77820V = floor3;
                this.f77814Q = true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void handleGizmoHit(C3593a hit) {
        VoxelChunk voxelChunk;
        if (hit == null || !C13317e.J(hit.getGameObject()) || (voxelChunk = (VoxelChunk) hit.getGameObject().c0(Component.e.VoxelChunk)) == null || !voxelChunk.isReady()) {
            this.f77806K = false;
            this.f77807L = 0;
            this.f77805J = true;
            return;
        }
        Vector3 i10 = hit.i();
        Vector3 f10 = hit.f();
        this.f77809M = (int) Math.floor(i10.getX() - (f10.getX() * 0.5f));
        this.f77811N = (int) Math.floor(i10.getY() - (f10.getY() * 0.5f));
        int floor = (int) Math.floor(i10.getZ() - (f10.getZ() * 0.5f));
        this.f77812O = floor;
        this.f77807L = voxelChunk.getBlock(this.f77809M, this.f77811N, floor);
        this.f77806K = true;
        this.f77805J = true;
    }

    private void handlePutHit(C3593a hit) {
        VoxelChunk voxelChunk;
        if (hit == null || (voxelChunk = (VoxelChunk) hit.getGameObject().c0(Component.e.VoxelChunk)) == null || !voxelChunk.isReady()) {
            return;
        }
        Vector3 i10 = hit.i();
        Vector3 f10 = hit.f();
        int floor = (int) Math.floor(i10.getX() + (f10.getX() * 0.5f));
        int floor2 = (int) Math.floor(i10.getY() + (f10.getY() * 0.5f));
        int floor3 = (int) Math.floor(i10.getZ() + (f10.getZ() * 0.5f));
        try {
            synchronized (this.f77813P) {
                this.f77822X = voxelChunk;
                this.f77823Y = floor;
                this.f77824Z = floor2;
                this.f77828q0 = floor3;
                this.f77830v0 = this.selectedBlockId;
                this.f77821W = true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void refreshTraceCache() {
        Transform transform;
        this.f77804I = false;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.p0(this.f77798E);
        this.f77798E.D1(this.f77801G);
        this.f77798E.r1(this.f77799F);
        this.f77799F.o0(0.0f, 0.0f, 1.0f, this.f77802H, true);
    }

    private void unbindTransformListener() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.O2(this.f77797D0);
    }

    public String getBreakKey() {
        return this.breakKey;
    }

    public p getCrossHair() {
        return this.f77826i1;
    }

    public ColorINT getCrossHairColor() {
        return this.crossHairColor;
    }

    public int getCrossHairSize() {
        return this.crossHairSize;
    }

    public String getCrossHairTexture() {
        return this.crossHairTexture;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.VOXEL_HAND);
    }

    public float getDistance() {
        return this.distance;
    }

    public float getGizmoUpdateDelay() {
        return this.gizmoUpdateDelay;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        j jVar = new j(context);
        String l10 = Lang.l(Lang.T.DISTANCE);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(jVar, l10, aVar);
        if (gameObject != null) {
            bVar.d(gameObject, this, "distance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar);
        k kVar = new k(context);
        String l11 = Lang.l(Lang.T.BREAK_KEY_NAME);
        b.a aVar2 = b.a.SLString;
        C5.b bVar2 = new C5.b(kVar, l11, aVar2);
        C5.b bVar3 = new C5.b(new l(context), Lang.l(Lang.T.PUT_KEY_NAME), aVar2);
        linkedList.add(this.gizmoReference.d(Lang.l(Lang.T.GIZMO_OBJECT), new m()));
        linkedList.add(new C5.b(new n(context), Lang.l(Lang.T.GIZMO_UPDATE_DELAY), aVar));
        if (gameObject != null) {
            bVar2.d(gameObject, this, "gizmoUpdateDelay", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar2);
        a aVar3 = new a(context);
        String l12 = Lang.l(Lang.T.SELECTED_BLOCK_ID);
        b.a aVar4 = b.a.SLInt;
        linkedList.add(new C5.b(aVar3, l12, aVar4));
        if (gameObject != null) {
            bVar3.d(gameObject, this, "selectedBlockId", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        }
        linkedList.add(bVar3);
        linkedList.add(new C5.b(new b(), Lang.l(Lang.T.SHOW_CROSSHAIR), b.a.SLBoolean));
        if (this.showCrosshair) {
            linkedList.add(new C5.b(new c(), Lang.l(Lang.T.CROSSHAIR), b.a.Texture, context));
            C5.b bVar4 = new C5.b(new d(context), Lang.l(Lang.T.CROSSHAIR_SIZE), aVar4);
            if (gameObject != null) {
                bVar4.d(gameObject, this, "crossHairSize", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
            }
            linkedList.add(bVar4);
            C5.b bVar5 = new C5.b(new e(), Lang.l(Lang.T.CROSSHAIR_COLOR), b.a.Color, context);
            if (gameObject != null) {
                bVar5.d(gameObject, this, "crossHairColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
            }
            linkedList.add(bVar5);
        }
        return linkedList;
    }

    public int getLastHitBlockID() {
        return this.f77827m1;
    }

    public o getListener() {
        return this.f77832y1;
    }

    public String getPutKey() {
        return this.putKey;
    }

    public int getSelectedBlockID() {
        return this.selectedBlockId;
    }

    @Override
    public String getTitle() {
        return f77795V1;
    }

    @Override
    public Component.e getType() {
        return Component.e.VoxelHand;
    }

    @Override
    public int iconPriority() {
        return super.iconPriority();
    }

    public boolean isBlockBroken() {
        return this.f77829q1;
    }

    public boolean isBlockPlaced() {
        return this.f77831v1;
    }

    public boolean isShowCrosshair() {
        return this.showCrosshair;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        bindTransformListener();
        refreshTraceCache();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (!enabled) {
            unbindTransformListener();
        } else {
            bindTransformListener();
            refreshTraceCache();
        }
    }

    @Override
    public void onParentChanged() {
        super.onParentChanged();
        refreshTraceCache();
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        this.gizmoReference.j();
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.transform == null) {
            return;
        }
        if (this.showCrosshair) {
            this.f77826i1 = Bb.c.a(this.crossHairTexture, this.f77826i1);
        } else {
            this.f77826i1 = null;
        }
        if (c8.b.j()) {
            this.f77825b1 -= K8.d.e();
            if (this.gizmoReference.f() && this.f77825b1 <= 0.0f) {
                handleGizmoHit(F9.d.a(this.f77801G, this.f77802H, this.distance));
                this.f77825b1 = this.gizmoUpdateDelay;
            }
            if (getBreak() && this.f79250n.isEnabled()) {
                handleBreakHit(F9.d.a(this.f77801G, this.f77802H, this.distance));
            }
            if (getPut() && this.f79250n.isEnabled()) {
                handlePutHit(F9.d.a(this.f77801G, this.f77802H, this.distance));
            }
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (this.f77804I) {
            refreshTraceCache();
        }
        applyPendingBlockActions();
        applyPendingGizmoState();
    }

    public void requestBreak() {
        this.f77803H1 = true;
    }

    public void requestPut() {
        this.f77810M1 = true;
    }

    public void setBreakKey(String breakKey) {
        if (breakKey == null || breakKey.isEmpty()) {
            throw new NullPointerException("breakKey can't be null or empty");
        }
        this.breakKey = breakKey;
    }

    public void setCrossHairColor(ColorINT crossHairColor) {
        this.crossHairColor = crossHairColor;
    }

    public void setCrossHairSize(int crossHairSize) {
        this.crossHairSize = crossHairSize;
    }

    public void setCrossHairTexture(String crossHairTexture) {
        this.crossHairTexture = crossHairTexture;
    }

    public void setDistance(float distance) {
        this.distance = distance;
    }

    public void setGizmoUpdateDelay(float gizmoUpdateDelay) {
        this.gizmoUpdateDelay = gizmoUpdateDelay;
    }

    public void setListener(o listener) {
        this.f77832y1 = listener;
    }

    public void setPutKey(String putKey) {
        if (putKey == null || putKey.isEmpty()) {
            throw new NullPointerException("putKey can't be null or empty");
        }
        this.putKey = putKey;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f77816R1 = run;
    }

    public void setSelectedBlockID(int selectedBlockId) {
        this.selectedBlockId = selectedBlockId;
    }

    public void setShowCrosshair(boolean showCrosshair) {
        this.showCrosshair = showCrosshair;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f77816R1;
        if (component != null) {
            return component;
        }
        JAVARuntime.VoxelHand voxelHand = new JAVARuntime.VoxelHand(this);
        this.f77816R1 = voxelHand;
        return voxelHand;
    }

    @Override
    public Component mo1248clone() {
        VoxelHand voxelHand = new VoxelHand();
        voxelHand.showCrosshair = this.showCrosshair;
        voxelHand.distance = this.distance;
        voxelHand.crossHairColor = this.crossHairColor.clone();
        voxelHand.crossHairSize = this.crossHairSize;
        voxelHand.gizmoUpdateDelay = this.gizmoUpdateDelay;
        voxelHand.breakKey = this.breakKey;
        voxelHand.putKey = this.putKey;
        voxelHand.crossHairTexture = this.crossHairTexture;
        voxelHand.gizmoReference = this.gizmoReference.clone();
        return voxelHand;
    }

    public void setCrossHairTexture(p crossHairTexture) {
        if (crossHairTexture != null) {
            if (crossHairTexture instanceof ub.g) {
                this.crossHairTexture = ((ub.g) crossHairTexture).getFile();
            } else {
                this.crossHairTexture = null;
            }
            this.f77826i1 = crossHairTexture;
        }
    }

    public VoxelHand(ObjectReference gizmoReference) {
        super(f77795V1);
        this.distance = 3.5f;
        this.breakKey = "breakBlock";
        this.putKey = "putBlock";
        this.gizmoReference = new ObjectReference();
        this.gizmoUpdateDelay = 0.2f;
        this.showCrosshair = true;
        this.crossHairSize = 25;
        this.crossHairColor = new ColorINT(255, 0, 0);
        this.crossHairTexture = null;
        this.selectedBlockId = 3;
        this.f77798E = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77799F = new Quaternion();
        this.f77801G = new Vector3();
        this.f77802H = new Vector3(0.0f, 0.0f, 1.0f);
        this.f77804I = true;
        this.f77805J = true;
        this.f77813P = new Object();
        this.f77797D0 = new g();
        this.f77825b1 = 0.0f;
        this.f77832y1 = null;
        this.f77803H1 = false;
        this.f77810M1 = false;
        this.gizmoReference = gizmoReference;
    }
}
