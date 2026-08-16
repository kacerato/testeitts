package N6;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.AttributeAccessNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawCubemapNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawTextureNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphAttribute;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphBranchConnection;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphDiskCache;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNodeConnection;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSettings;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.VulkanGraph;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.C12894h;
import dd.C12908b;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import r4.C15147a;

public class H extends FrameLayout {

    public static final long f15514F = 300;

    public static final float f15515G = 48.0f;

    public TextView f15516A;

    public boolean f15517B;

    public boolean f15518C;

    public final Runnable f15519D;

    public final Runnable f15520E;

    public final Paint f15521b;

    public float f15522c;

    public float f15523d;

    public float f15524e;

    public final List<p> f15525f;

    public final Map<String, p> f15526g;

    public final List<w> f15527h;

    public final List<w> f15528i;

    public C2851g f15529j;

    public ShaderGraphData f15530k;

    public Material f15531l;

    public String f15532m;

    public boolean f15533n;

    public p f15534o;

    public boolean f15535p;

    public float f15536q;

    public float f15537r;

    public long f15538s;

    public long f15539t;

    public ScaleGestureDetector f15540u;

    public w f15541v;

    public w f15542w;

    public boolean f15543x;

    public ShaderGraphNodeConnection f15544y;

    public v f15545z;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            if (H.this.f15530k != null) {
                H.this.f15530k.k();
            }
            H.this.s0();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            if (H.this.f15516A != null) {
                H.this.f15516A.setVisibility(8);
            }
        }
    }

    public class c extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public c() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector detector) {
            H.this.setScale(H.this.f15524e * detector.getScaleFactor());
            return true;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            H.this.H();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            H.this.H();
        }
    }

    public class f implements dd.d {

        public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.q f15551a;

        public f(final com.itsmagic.engine.Engines.Graphics.ShaderGraph.q val$nodeInterface) {
            this.f15551a = val$nodeInterface;
        }

        @Override
        public void onSelected(View v10) {
            H.this.q(this.f15551a);
        }
    }

    public static class g implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.z {

        public final ShaderGraphData f15553a;

        public g(ShaderGraphData data) {
            this.f15553a = data;
        }

        @Override
        public ShaderGraphData a() {
            return this.f15553a;
        }

        @Override
        public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C b(ShaderGraphNode node, int inputIndex) {
            ShaderGraphNodeConnection c10 = c(this.f15553a, node.j(), inputIndex);
            if (c10 == null) {
                ShaderGraphSlot[] m10 = node.m();
                return (m10 == null || inputIndex < 0 || inputIndex >= m10.length) ? com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER : m10[inputIndex].type;
            }
            ShaderGraphNode f10 = this.f15553a.f(c10.fromNodeId);
            return f10 == null ? com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER : f10.D(c10.fromSlot, this);
        }

        public final ShaderGraphNodeConnection c(ShaderGraphData data, String nodeId, int inputIndex) {
            List<ShaderGraphNodeConnection> list = data.connections;
            if (list == null) {
                return null;
            }
            for (ShaderGraphNodeConnection shaderGraphNodeConnection : list) {
                if (nodeId.equals(shaderGraphNodeConnection.toNodeId) && shaderGraphNodeConnection.toSlot == inputIndex) {
                    return shaderGraphNodeConnection;
                }
            }
            return null;
        }
    }

    public H(Context context) {
        this(context, null);
    }

    public static ShaderGraphNodeConnection B(ShaderGraphData data, String nodeId, int inputIndex) {
        List<ShaderGraphNodeConnection> list;
        if (data != null && (list = data.connections) != null) {
            for (ShaderGraphNodeConnection shaderGraphNodeConnection : list) {
                if (nodeId.equals(shaderGraphNodeConnection.toNodeId) && shaderGraphNodeConnection.toSlot == inputIndex) {
                    return shaderGraphNodeConnection;
                }
            }
        }
        return null;
    }

    public static boolean Q(String str, ShaderGraphBranchConnection shaderGraphBranchConnection) {
        return shaderGraphBranchConnection != null && str.equals(shaderGraphBranchConnection.toNodeId);
    }

    public static boolean R(String str, int i10, ShaderGraphBranchConnection shaderGraphBranchConnection) {
        return shaderGraphBranchConnection != null && str.equals(shaderGraphBranchConnection.fromNodeId) && shaderGraphBranchConnection.fromSlot == i10;
    }

    public static boolean S(String str, int i10, ShaderGraphNodeConnection shaderGraphNodeConnection) {
        return str.equals(shaderGraphNodeConnection.toNodeId) && shaderGraphNodeConnection.toSlot == i10;
    }

    public static boolean T(String str, int i10, ShaderGraphNodeConnection shaderGraphNodeConnection) {
        return str.equals(shaderGraphNodeConnection.fromNodeId) && shaderGraphNodeConnection.fromSlot == i10;
    }

    public static boolean U(String str, int i10, ShaderGraphNodeConnection shaderGraphNodeConnection) {
        return str.equals(shaderGraphNodeConnection.toNodeId) && shaderGraphNodeConnection.toSlot == i10;
    }

    public void A() {
        p pVar;
        if (this.f15530k == null || (pVar = this.f15534o) == null) {
            return;
        }
        ShaderGraphNode node = pVar.getNode();
        if (node != null && node.w()) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE));
            return;
        }
        ShaderGraphNode g10 = node != null ? node.g() : null;
        if (g10 == null) {
            return;
        }
        g10.f81310x += 20.0f;
        g10.f81311y += 20.0f;
        this.f15530k.c(g10);
        f0();
        b0();
    }

    public final String C(ShaderGraphNode start, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w requiredStage) {
        ShaderGraphNode f10;
        if (this.f15530k != null && start != null) {
            ArrayDeque arrayDeque = new ArrayDeque();
            HashSet hashSet = new HashSet();
            arrayDeque.push(start.j());
            while (!arrayDeque.isEmpty()) {
                String str = (String) arrayDeque.pop();
                if (hashSet.add(str) && (f10 = this.f15530k.f(str)) != null) {
                    com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u10 = f10.u();
                    com.itsmagic.engine.Engines.Graphics.ShaderGraph.w wVar = com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX;
                    if (requiredStage == wVar && u10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT) {
                        return f10.v(this.f15530k);
                    }
                    if (requiredStage == com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT && u10 == wVar) {
                        return f10.v(this.f15530k);
                    }
                    ShaderGraphSlot[] m10 = f10.m();
                    if (m10 != null) {
                        for (int i10 = 0; i10 < m10.length; i10++) {
                            ShaderGraphNodeConnection B10 = B(this.f15530k, str, i10);
                            if (B10 != null) {
                                arrayDeque.push(B10.fromNodeId);
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final C12908b D(String[] folders, List<C12908b> itemList) {
        C12908b c12908b = null;
        for (String str : folders) {
            if (str != null && !str.isEmpty()) {
                boolean z10 = true;
                if (c12908b != null) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= c12908b.f84530c.size()) {
                            z10 = false;
                            break;
                        }
                        C12908b c12908b2 = c12908b.f84530c.get(i10);
                        String str2 = c12908b2.f84529b;
                        if (str2 != null && str2.equalsIgnoreCase(str)) {
                            c12908b = c12908b2;
                            break;
                        }
                        i10++;
                    }
                    if (!z10) {
                        C12908b c12908b3 = new C12908b(C12908b.EnumC1575b.Folder, str);
                        c12908b.f84530c.add(c12908b3);
                        c12908b = c12908b3;
                    }
                } else {
                    int i11 = 0;
                    while (true) {
                        if (i11 >= itemList.size()) {
                            z10 = false;
                            break;
                        }
                        C12908b c12908b4 = itemList.get(i11);
                        String str3 = c12908b4.f84529b;
                        if (str3 != null && str3.equalsIgnoreCase(str)) {
                            c12908b = c12908b4;
                            break;
                        }
                        i11++;
                    }
                    if (!z10) {
                        c12908b = new C12908b(C12908b.EnumC1575b.Folder, str);
                        itemList.add(c12908b);
                    }
                }
            }
        }
        return c12908b;
    }

    public final w E(float rawX, float rawY) {
        w wVar = null;
        float f10 = Float.MAX_VALUE;
        for (p pVar : this.f15525f) {
            w r02 = r0(pVar.getInputSockets(), rawX, rawY, wVar, f10);
            if (r02 != null) {
                f10 = y(r02, rawX, rawY);
            }
            w r03 = r0(pVar.getOutputSockets(), rawX, rawY, r02, f10);
            if (r03 != null) {
                f10 = y(r03, rawX, rawY);
            }
            w branchSocket = pVar.getBranchSocket();
            if (branchSocket != null && M(branchSocket, rawX, rawY)) {
                float y10 = y(branchSocket, rawX, rawY);
                if (y10 < f10) {
                    wVar = branchSocket;
                    f10 = y10;
                }
            }
            wVar = r03;
        }
        return wVar;
    }

    public final w F(float rawX, float rawY, boolean expectedInput) {
        w wVar = null;
        float f10 = Float.MAX_VALUE;
        while (true) {
            w wVar2 = wVar;
            for (p pVar : this.f15525f) {
                w[] inputSockets = pVar.getInputSockets();
                if (expectedInput) {
                    w r02 = r0(inputSockets, rawX, rawY, wVar2, f10);
                    if (r02 != null) {
                        f10 = y(r02, rawX, rawY);
                    }
                    w branchSocket = pVar.getBranchSocket();
                    if (branchSocket != null && branchSocket.e() && M(branchSocket, rawX, rawY)) {
                        float y10 = y(branchSocket, rawX, rawY);
                        if (y10 < f10) {
                            r02 = branchSocket;
                            f10 = y10;
                        }
                    }
                    wVar2 = r02;
                } else {
                    wVar = r0(pVar.getOutputSockets(), rawX, rawY, wVar2, f10);
                    if (wVar != null) {
                        f10 = y(wVar, rawX, rawY);
                    }
                }
            }
            return wVar2;
        }
    }

    public void G(float rawX, float rawY) {
        w F10;
        ShaderGraphBranchConnection shaderGraphBranchConnection;
        if (this.f15530k == null) {
            return;
        }
        a0();
        w wVar = this.f15541v;
        if (wVar == null) {
            this.f15529j.a();
            this.f15542w = null;
            return;
        }
        if (wVar.e()) {
            F10 = F(rawX, rawY, false);
            if (F10 == null) {
                F10 = E(rawX, rawY);
            }
        } else {
            F10 = F(rawX, rawY, true);
            if (F10 == null) {
                F10 = E(rawX, rawY);
            }
        }
        this.f15529j.a();
        this.f15541v = null;
        this.f15542w = null;
        if (F10 == null || F10 == wVar) {
            if (this.f15544y == null) {
                if (this.f15543x) {
                    b0();
                }
                this.f15543x = false;
                return;
            } else if (F10 == null) {
                this.f15544y = null;
                b0();
                this.f15543x = false;
                return;
            } else {
                j0();
                this.f15544y = null;
                C2851g c2851g = this.f15529j;
                if (c2851g != null) {
                    c2851g.invalidate();
                }
                this.f15543x = false;
                return;
            }
        }
        w wVar2 = wVar.e() ? F10 : wVar;
        if (!wVar.e()) {
            wVar = F10;
        }
        if (wVar2.e() || !wVar.e()) {
            if (this.f15544y != null) {
                j0();
                this.f15544y = null;
                C2851g c2851g2 = this.f15529j;
                if (c2851g2 != null) {
                    c2851g2.invalidate();
                }
                this.f15543x = false;
                return;
            }
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION_CONNECT_OUTPUT_TO_INPUT));
            j0();
            this.f15544y = null;
            C2851g c2851g3 = this.f15529j;
            if (c2851g3 != null) {
                c2851g3.invalidate();
            }
            if (this.f15543x) {
                b0();
            }
            this.f15543x = false;
            return;
        }
        ShaderGraphNode node = wVar2.getNodeView().getNode();
        ShaderGraphNode node2 = wVar.getNodeView().getNode();
        if (node == null || node2 == null) {
            j0();
            this.f15544y = null;
            C2851g c2851g4 = this.f15529j;
            if (c2851g4 != null) {
                c2851g4.invalidate();
            }
            if (this.f15543x) {
                b0();
            }
            this.f15543x = false;
            return;
        }
        if (!wVar.d() && wVar2.getType() != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.BRANCH) {
            String I10 = I(node, wVar2.getSlotIndex(), node2, wVar.getSlotIndex());
            if (I10 != null) {
                N7.c.v0(I10);
                j0();
                this.f15544y = null;
                C2851g c2851g5 = this.f15529j;
                if (c2851g5 != null) {
                    c2851g5.invalidate();
                }
                if (this.f15543x) {
                    b0();
                }
                this.f15543x = false;
                return;
            }
            ShaderGraphNodeConnection shaderGraphNodeConnection = this.f15544y;
            if (shaderGraphNodeConnection != null && shaderGraphNodeConnection.fromNodeId.equals(node.j()) && this.f15544y.fromSlot == wVar2.getSlotIndex() && this.f15544y.toNodeId.equals(node2.j()) && this.f15544y.toSlot == wVar.getSlotIndex()) {
                j0();
                this.f15544y = null;
                C2851g c2851g6 = this.f15529j;
                if (c2851g6 != null) {
                    c2851g6.invalidate();
                }
                this.f15543x = false;
                return;
            }
            if (!K(node.j(), wVar2.getSlotIndex(), node2.j(), wVar.getSlotIndex())) {
                h0(node2.j(), wVar.getSlotIndex());
                this.f15530k.connections.add(new ShaderGraphNodeConnection(node.j(), wVar2.getSlotIndex(), node2.j(), wVar.getSlotIndex()));
                b0();
                this.f15544y = null;
                this.f15543x = false;
                return;
            }
            j0();
            this.f15544y = null;
            C2851g c2851g7 = this.f15529j;
            if (c2851g7 != null) {
                c2851g7.invalidate();
            }
            if (this.f15543x) {
                b0();
            }
            this.f15543x = false;
            return;
        }
        if (!wVar.d() || wVar2.getType() != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.BRANCH) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION_BRANCH_NEEDS_BRANCH_INPUT));
            j0();
            this.f15544y = null;
            C2851g c2851g8 = this.f15529j;
            if (c2851g8 != null) {
                c2851g8.invalidate();
            }
            if (this.f15543x) {
                b0();
            }
            this.f15543x = false;
            return;
        }
        if (node2.w()) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION_OUTPUT_DOES_NOT_ACCEPT_BRANCH));
            j0();
            this.f15544y = null;
            C2851g c2851g9 = this.f15529j;
            if (c2851g9 != null) {
                c2851g9.invalidate();
            }
            if (this.f15543x) {
                b0();
            }
            this.f15543x = false;
            return;
        }
        if (!(node instanceof com.itsmagic.engine.Engines.Graphics.ShaderGraph.e)) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION_ONLY_COMPARISON_BRANCH));
            j0();
            this.f15544y = null;
            C2851g c2851g10 = this.f15529j;
            if (c2851g10 != null) {
                c2851g10.invalidate();
            }
            if (this.f15543x) {
                b0();
            }
            this.f15543x = false;
            return;
        }
        ShaderGraphData shaderGraphData = this.f15530k;
        if (shaderGraphData.branchConnections == null) {
            shaderGraphData.branchConnections = new SteppedArrayList();
        }
        Iterator<ShaderGraphBranchConnection> it = this.f15530k.branchConnections.iterator();
        while (true) {
            if (!it.hasNext()) {
                shaderGraphBranchConnection = null;
                break;
            }
            shaderGraphBranchConnection = it.next();
            if (shaderGraphBranchConnection != null && node2.j().equals(shaderGraphBranchConnection.toNodeId)) {
                break;
            }
        }
        if (shaderGraphBranchConnection != null) {
            this.f15530k.branchConnections.remove(shaderGraphBranchConnection);
        }
        if (!w0(node.j(), node2.j())) {
            this.f15530k.branchConnections.add(new ShaderGraphBranchConnection(node.j(), wVar2.getSlotIndex(), node2.j()));
            b0();
            this.f15544y = null;
            this.f15543x = false;
            return;
        }
        if (shaderGraphBranchConnection != null) {
            this.f15530k.branchConnections.add(shaderGraphBranchConnection);
        }
        N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_CONNECTION_WOULD_CREATE_CYCLE));
        j0();
        this.f15544y = null;
        C2851g c2851g11 = this.f15529j;
        if (c2851g11 != null) {
            c2851g11.invalidate();
        }
        if (this.f15543x) {
            b0();
        }
        this.f15543x = false;
    }

    public void H() {
        if (this.f15525f.isEmpty()) {
            return;
        }
        if (getWidth() <= 0 || getHeight() <= 0) {
            post(new d());
            return;
        }
        float f10 = -3.4028235E38f;
        float f11 = Float.MAX_VALUE;
        boolean z10 = false;
        float f12 = -3.4028235E38f;
        float f13 = Float.MAX_VALUE;
        for (p pVar : this.f15525f) {
            if (pVar != null && pVar.getNode() != null) {
                int width = pVar.getWidth();
                int height = pVar.getHeight();
                if (width > 0 && height > 0) {
                    float f14 = pVar.getNode().f81310x;
                    float f15 = pVar.getNode().f81311y;
                    f13 = Math.min(f13, f14);
                    f11 = Math.min(f11, f15);
                    f10 = Math.max(f10, width + f14);
                    f12 = Math.max(f12, height + f15);
                    z10 = true;
                }
            }
        }
        if (!z10) {
            post(new e());
            return;
        }
        float k02 = Nc.b.k0(48.0f) * 2.0f;
        float E10 = Nc.b.E(0.1f, Math.min(Math.max(1.0f, getWidth() - k02) / Math.max(1.0f, f10 - f13), Math.max(1.0f, getHeight() - k02) / Math.max(1.0f, f12 - f11)), 1.6f);
        this.f15522c = (getWidth() * 0.5f) - (((f13 + f10) * 0.5f) * E10);
        this.f15523d = (getHeight() * 0.5f) - (((f11 + f12) * 0.5f) * E10);
        this.f15524e = E10;
        C2851g c2851g = this.f15529j;
        if (c2851g != null) {
            c2851g.setGraphScale(E10);
        }
        this.f15539t = System.currentTimeMillis();
        i0(null);
        Iterator<p> it = this.f15525f.iterator();
        while (it.hasNext()) {
            it.next().f0();
        }
        u0();
        invalidate();
        this.f15529j.invalidate();
    }

    public final String I(ShaderGraphNode from, int fromSlot, ShaderGraphNode to, int toSlot) {
        String C10;
        if (from == null || to == null) {
            return Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION);
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10 = from.D(fromSlot, new g(this.f15530k));
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = to.m()[toSlot].type;
        if (!com.itsmagic.engine.Engines.Graphics.ShaderGraph.y.a(D10, c10)) {
            return Lang.l(Lang.T.SHADER_GRAPH_INCOMPATIBLE_TYPE) + ": " + ((Object) D10) + " -> " + ((Object) c10);
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u10 = from.u();
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w a10 = to.m()[toSlot].a(to.u());
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w wVar = com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
        if (u10 == wVar && a10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX) {
            return Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION_FRAGMENT_TO_VERTEX);
        }
        if ((a10 != com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX && a10 != wVar) || (C10 = C(from, a10)) == null) {
            if (w0(from.j(), to.j())) {
                return Lang.l(Lang.T.SHADER_GRAPH_CONNECTION_WOULD_CREATE_CYCLE);
            }
            return null;
        }
        return Lang.l(Lang.T.SHADER_GRAPH_CHAIN_CONTAINS_OPPOSITE_STAGE_NODE) + ": " + C10;
    }

    public final PointF J(MotionEvent event) {
        int pointerCount = event.getPointerCount();
        if (pointerCount <= 0) {
            return new PointF(event.getRawX(), event.getRawY());
        }
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (int i10 = 0; i10 < pointerCount; i10++) {
            f10 += event.getX(i10);
            f11 += event.getY(i10);
        }
        float f12 = pointerCount;
        float f13 = f10 / f12;
        float f14 = f11 / f12;
        getLocationOnScreen(new int[2]);
        return new PointF(f13 + r7[0], f14 + r7[1]);
    }

    public final boolean K(String fromNodeId, int fromSlot, String toNodeId, int toSlot) {
        List<ShaderGraphNodeConnection> list;
        ShaderGraphData shaderGraphData = this.f15530k;
        if (shaderGraphData != null && (list = shaderGraphData.connections) != null) {
            for (ShaderGraphNodeConnection shaderGraphNodeConnection : list) {
                if (shaderGraphNodeConnection != null && fromNodeId.equals(shaderGraphNodeConnection.fromNodeId) && toNodeId.equals(shaderGraphNodeConnection.toNodeId) && fromSlot == shaderGraphNodeConnection.fromSlot && toSlot == shaderGraphNodeConnection.toSlot) {
                    return true;
                }
            }
        }
        return false;
    }

    public final p L(float x10, float y10) {
        for (int size = this.f15525f.size() - 1; size >= 0; size--) {
            p pVar = this.f15525f.get(size);
            if (pVar != null) {
                if (pVar.R((x10 - pVar.getX()) / Math.max(1.0E-4f, pVar.getScaleX()), (y10 - pVar.getY()) / Math.max(1.0E-4f, pVar.getScaleY()))) {
                    return pVar;
                }
            }
        }
        return null;
    }

    public final boolean M(View socket, float rawX, float rawY) {
        int[] iArr = new int[2];
        socket.getLocationOnScreen(iArr);
        float k02 = Nc.b.k0(0.0f);
        int i10 = iArr[0];
        return rawX >= ((float) i10) - k02 && rawX <= ((float) (i10 + socket.getWidth())) + k02 && rawY >= ((float) iArr[1]) - k02 && rawY <= ((float) (iArr[1] + socket.getHeight())) + k02;
    }

    public boolean N() {
        return System.currentTimeMillis() - this.f15539t < 300;
    }

    public boolean O() {
        p pVar = this.f15534o;
        return (pVar == null || pVar.getNode() == null || !this.f15534o.getNode().w()) ? false : true;
    }

    public final boolean P(View view, MotionEvent motionEvent) {
        w wVar = (w) view;
        N7.c.Y();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            o0(wVar, motionEvent.getRawX(), motionEvent.getRawY());
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                t0(motionEvent.getRawX(), motionEvent.getRawY());
                return true;
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        G(motionEvent.getRawX(), motionEvent.getRawY());
        return true;
    }

    public final void V() {
        this.f15533n = false;
        this.f15518C = false;
        s0();
    }

    public final void W() {
        Runnable runnable;
        try {
            try {
                VulkanGraph vulkanGraph = new VulkanGraph();
                vulkanGraph.j(this.f15530k);
                X7.a.b(this.f15532m, vulkanGraph.h(), N7.c.t());
                com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.h(this.f15530k);
                com.itsmagic.engine.Engines.Graphics.ShaderGraph.h hVar = new com.itsmagic.engine.Engines.Graphics.ShaderGraph.h();
                ShaderGraphData shaderGraphData = this.f15530k;
                ShaderGraphDiskCache.u(this.f15532m, hVar.h(shaderGraphData, shaderGraphData.h()));
                ShaderGraphDiskCache.w(this.f15532m, this.f15530k);
                this.f15530k.f81296b = false;
                runnable = new Runnable() {
                    @Override
                    public final void run() {
                        H.this.V();
                    }
                };
            } catch (Exception e10) {
                e10.printStackTrace();
                runnable = new Runnable() {
                    @Override
                    public final void run() {
                        H.this.V();
                    }
                };
            }
            N7.c.j0(runnable);
        } catch (Throwable th2) {
            N7.c.j0(new Runnable() {
                @Override
                public final void run() {
                    H.this.V();
                }
            });
            throw th2;
        }
    }

    public final void X() {
        Material material = this.f15531l;
        if (material == null || !material.J()) {
            this.f15518C = false;
        }
    }

    public final void Y() {
        C12894h.s();
        this.f15531l.O();
        N7.c.j0(new Runnable() {
            @Override
            public final void run() {
                H.this.X();
            }
        });
    }

    public final ShaderGraphData Z(String inProjectPath) {
        VulkanGraph e10 = VulkanGraph.e(inProjectPath);
        ShaderGraphData d10 = e10 != null ? e10.d() : null;
        if (d10 == null) {
            d10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.e();
        }
        d10.e();
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.h(d10);
        return d10;
    }

    public final void a0() {
        this.f15538s = System.currentTimeMillis();
        v vVar = this.f15545z;
        if (vVar != null) {
            vVar.C();
        }
    }

    public void b0() {
        ShaderGraphData shaderGraphData = this.f15530k;
        if (shaderGraphData != null) {
            shaderGraphData.f81297c = System.currentTimeMillis();
            removeCallbacks(this.f15519D);
            postDelayed(this.f15519D, 300L);
        }
        for (p pVar : this.f15525f) {
            if (pVar != null) {
                pVar.g0(this.f15530k);
            }
        }
        u0();
        this.f15529j.invalidate();
    }

    public void c0() {
        u0();
        this.f15529j.invalidate();
    }

    public void d0(float dx, float dy) {
        this.f15522c += dx;
        this.f15523d += dy;
        this.f15539t = System.currentTimeMillis();
        i0(null);
        Iterator<p> it = this.f15525f.iterator();
        while (it.hasNext()) {
            it.next().f0();
        }
        u0();
        invalidate();
        this.f15529j.invalidate();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        if (event.getPointerCount() <= 1) {
            return super.dispatchTouchEvent(event);
        }
        this.f15540u.onTouchEvent(event);
        a0();
        int actionMasked = event.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    PointF J10 = J(event);
                    float f10 = J10.f32425x;
                    float f11 = f10 - this.f15536q;
                    float f12 = J10.f32426y;
                    float f13 = f12 - this.f15537r;
                    this.f15536q = f10;
                    this.f15537r = f12;
                    d0(f11, f13);
                    return true;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 5) {
                        if (actionMasked != 6) {
                            return true;
                        }
                    }
                }
            }
            this.f15535p = false;
            return true;
        }
        PointF J11 = J(event);
        this.f15535p = true;
        this.f15536q = J11.f32425x;
        this.f15537r = J11.f32426y;
        return true;
    }

    public void e0() {
        this.f15521b.setColor(Theme.i(Theme.T.NODEGRAPH_GRID));
        C2851g c2851g = this.f15529j;
        if (c2851g != null) {
            c2851g.e();
        }
        for (p pVar : this.f15525f) {
            if (pVar != null) {
                pVar.c0();
            }
        }
        for (w wVar : this.f15527h) {
            if (wVar != null) {
                wVar.f();
            }
        }
        for (w wVar2 : this.f15528i) {
            if (wVar2 != null) {
                wVar2.f();
            }
        }
        invalidate();
    }

    public final void f0() {
        Bitmap s10;
        w();
        if (this.f15530k == null) {
            return;
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.r.a();
        for (ShaderGraphNode shaderGraphNode : this.f15530k.f81295a) {
            p pVar = new p(getContext(), shaderGraphNode, this);
            this.f15525f.add(pVar);
            this.f15526g.put(shaderGraphNode.j(), pVar);
            addView(pVar);
            pVar.f0();
            pVar.setPreviewEnabled(EditorSettings.a() == null || EditorSettings.a().materialGraphPreviewsEnabled);
            v vVar = this.f15545z;
            if (vVar != null && (s10 = vVar.s(shaderGraphNode.j())) != null) {
                pVar.setPreviewBitmap(s10);
            }
            ShaderGraphSlot[] n10 = shaderGraphNode.n(this.f15530k);
            if (n10 != null && n10.length > 0) {
                w[] wVarArr = new w[n10.length];
                for (int i10 = 0; i10 < n10.length; i10++) {
                    ShaderGraphSlot shaderGraphSlot = n10[i10];
                    int l10 = shaderGraphNode.l(this.f15530k, i10);
                    if (l10 >= 0) {
                        w wVar = new w(getContext());
                        wVar.a(pVar, true, l10, shaderGraphSlot != null ? shaderGraphSlot.type : com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER);
                        r(wVar);
                        int k02 = Nc.b.k0(30.0f);
                        addView(wVar, new FrameLayout.LayoutParams(k02, k02));
                        wVar.bringToFront();
                        wVarArr[i10] = wVar;
                        this.f15527h.add(wVar);
                    }
                }
                pVar.setInputSockets(wVarArr);
            }
            ShaderGraphSlot[] r10 = shaderGraphNode.r(this.f15530k);
            if (r10 != null && r10.length > 0) {
                w[] wVarArr2 = new w[r10.length];
                for (int i11 = 0; i11 < r10.length; i11++) {
                    ShaderGraphSlot shaderGraphSlot2 = r10[i11];
                    w wVar2 = new w(getContext());
                    wVar2.a(pVar, false, i11, shaderGraphSlot2 != null ? shaderGraphSlot2.type : com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER);
                    r(wVar2);
                    int k03 = Nc.b.k0(30.0f);
                    addView(wVar2, new FrameLayout.LayoutParams(k03, k03));
                    wVar2.bringToFront();
                    wVarArr2[i11] = wVar2;
                    this.f15527h.add(wVar2);
                }
                pVar.setOutputSockets(wVarArr2);
            }
            if (!shaderGraphNode.z() && !shaderGraphNode.w()) {
                w wVar3 = new w(getContext());
                wVar3.b(pVar);
                r(wVar3);
                int k04 = Nc.b.k0(30.0f);
                addView(wVar3, new FrameLayout.LayoutParams(k04, k04));
                wVar3.bringToFront();
                this.f15528i.add(wVar3);
                pVar.setBranchSocket(wVar3);
            }
        }
        this.f15529j.f(this.f15530k, this.f15526g);
        u0();
    }

    public final boolean g0(w socket) {
        p nodeView;
        if (this.f15530k == null || socket == null || (nodeView = socket.getNodeView()) == null || nodeView.getNode() == null) {
            return false;
        }
        final String j10 = nodeView.getNode().j();
        final int slotIndex = socket.getSlotIndex();
        if (socket.d()) {
            List<ShaderGraphBranchConnection> list = this.f15530k.branchConnections;
            if (list == null) {
                return false;
            }
            return list.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean Q10;
                    Q10 = H.Q(String.this, (ShaderGraphBranchConnection) obj);
                    return Q10;
                }
            });
        }
        if (socket.e() || socket.getType() != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.BRANCH) {
            if (this.f15530k.connections == null) {
                return false;
            }
            return socket.e() ? this.f15530k.connections.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean S10;
                    S10 = H.S(String.this, slotIndex, (ShaderGraphNodeConnection) obj);
                    return S10;
                }
            }) : this.f15530k.connections.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean T10;
                    T10 = H.T(String.this, slotIndex, (ShaderGraphNodeConnection) obj);
                    return T10;
                }
            });
        }
        List<ShaderGraphBranchConnection> list2 = this.f15530k.branchConnections;
        if (list2 == null) {
            return false;
        }
        return list2.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean R10;
                R10 = H.R(String.this, slotIndex, (ShaderGraphBranchConnection) obj);
                return R10;
            }
        });
    }

    public ShaderGraphData getGraphData() {
        return this.f15530k;
    }

    public long getLastInteractionTime() {
        return this.f15538s;
    }

    public List<p> getNodeViews() {
        return new SteppedArrayList(this.f15525f);
    }

    public float getPanX() {
        return this.f15522c;
    }

    public float getPanY() {
        return this.f15523d;
    }

    public float getScale() {
        return this.f15524e;
    }

    public p getSelectedNodeView() {
        return this.f15534o;
    }

    public final void h0(final String nodeId, final int slotIndex) {
        List<ShaderGraphNodeConnection> list = this.f15530k.connections;
        if (list == null) {
            return;
        }
        list.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean U10;
                U10 = H.U(String.this, slotIndex, (ShaderGraphNodeConnection) obj);
                return U10;
            }
        });
    }

    public void i0(p nodeView) {
        p pVar = this.f15534o;
        if (pVar == nodeView) {
            return;
        }
        if (pVar != null) {
            pVar.setSelected(false);
        }
        this.f15534o = nodeView;
        if (nodeView != null) {
            nodeView.setSelected(true);
        }
    }

    public final void j0() {
        ShaderGraphData shaderGraphData;
        if (this.f15544y == null || (shaderGraphData = this.f15530k) == null) {
            return;
        }
        if (shaderGraphData.connections == null) {
            shaderGraphData.connections = new SteppedArrayList();
        }
        ShaderGraphNodeConnection shaderGraphNodeConnection = this.f15544y;
        h0(shaderGraphNodeConnection.toNodeId, shaderGraphNodeConnection.toSlot);
        List<ShaderGraphNodeConnection> list = this.f15530k.connections;
        ShaderGraphNodeConnection shaderGraphNodeConnection2 = this.f15544y;
        list.add(new ShaderGraphNodeConnection(shaderGraphNodeConnection2.fromNodeId, shaderGraphNodeConnection2.fromSlot, shaderGraphNodeConnection2.toNodeId, shaderGraphNodeConnection2.toSlot));
    }

    public void k0() {
        if (this.f15530k == null) {
            return;
        }
        removeCallbacks(this.f15519D);
        if (this.f15532m != null) {
            if (this.f15518C || this.f15533n) {
                return;
            }
            this.f15518C = true;
            this.f15533n = true;
            this.f15530k.q();
            this.f15530k.k();
            new Thread(new Runnable() {
                @Override
                public final void run() {
                    H.this.W();
                }
            }).start();
            return;
        }
        Material material = this.f15531l;
        if (material == null || this.f15518C) {
            return;
        }
        if (material == null || !material.J()) {
            this.f15518C = true;
            this.f15530k.q();
            this.f15530k.k();
            O9.b.d(new Runnable() {
                @Override
                public final void run() {
                    H.this.Y();
                }
            });
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_MATERIAL_GRAPH_SAVED));
        }
    }

    public PointF l0(float sx, float sy) {
        float f10 = sx - this.f15522c;
        float f11 = this.f15524e;
        return new PointF(f10 / f11, (sy - this.f15523d) / f11);
    }

    public void m0(View anchor) {
        if (this.f15530k == null) {
            return;
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.r.a();
        List<C12908b> u10 = u();
        if (u10 == null || u10.isEmpty()) {
            return;
        }
        Y6.a.F1(anchor, C15147a.e.Above, u10);
    }

    public void n0(View anchor) {
        ShaderGraphData shaderGraphData = this.f15530k;
        if (shaderGraphData == null || anchor == null) {
            return;
        }
        C2850f.G1(anchor, C15147a.e.Below, this, shaderGraphData);
    }

    public void o0(w from, float rawX, float rawY) {
        ShaderGraphNodeConnection B10;
        w K10;
        this.f15541v = from;
        this.f15542w = from;
        a0();
        this.f15544y = null;
        this.f15543x = false;
        if (from != null && from.e() && !from.d() && this.f15530k != null) {
            p nodeView = from.getNodeView();
            ShaderGraphNode node = nodeView != null ? nodeView.getNode() : null;
            if (node != null && (B10 = B(this.f15530k, node.j(), from.getSlotIndex())) != null) {
                this.f15544y = new ShaderGraphNodeConnection(B10.fromNodeId, B10.fromSlot, B10.toNodeId, B10.toSlot);
                h0(B10.toNodeId, B10.toSlot);
                p pVar = this.f15526g.get(B10.fromNodeId);
                if (pVar != null && (K10 = pVar.K(B10.fromSlot)) != null) {
                    this.f15542w = K10;
                }
            }
        }
        C2851g c2851g = this.f15529j;
        if (c2851g != null) {
            c2851g.invalidate();
        }
        PointF p02 = p0(rawX, rawY);
        C2851g c2851g2 = this.f15529j;
        w wVar = this.f15542w;
        if (wVar != null) {
            from = wVar;
        }
        c2851g2.g(from, p02.f32425x, p02.f32426y);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        z(canvas);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getPointerCount() > 1 || this.f15540u.isInProgress()) {
            return true;
        }
        if (ev.getActionMasked() == 0) {
            return L(ev.getX(), ev.getY()) == null && E(ev.getRawX(), ev.getRawY()) == null;
        }
        return false;
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            u0();
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        this.f15540u.onTouchEvent(event);
        a0();
        int actionMasked = event.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6 && event.getPointerCount() <= 2 && this.f15535p) {
                                this.f15535p = false;
                                return true;
                            }
                        } else if (event.getPointerCount() >= 2) {
                            PointF J10 = J(event);
                            this.f15535p = true;
                            this.f15536q = J10.f32425x;
                            this.f15537r = J10.f32426y;
                            return true;
                        }
                    }
                } else if (event.getPointerCount() >= 2) {
                    if (!this.f15535p) {
                        PointF J11 = J(event);
                        this.f15535p = true;
                        this.f15536q = J11.f32425x;
                        this.f15537r = J11.f32426y;
                    }
                    PointF J12 = J(event);
                    float f10 = J12.f32425x;
                    float f11 = f10 - this.f15536q;
                    float f12 = J12.f32426y;
                    float f13 = f12 - this.f15537r;
                    this.f15536q = f10;
                    this.f15537r = f12;
                    d0(f11, f13);
                    return true;
                }
            }
            if (this.f15535p) {
                this.f15535p = false;
                return true;
            }
        } else {
            if (event.getPointerCount() == 1 && L(event.getX(), event.getY()) == null && E(event.getRawX(), event.getRawY()) == null) {
                i0(null);
                return true;
            }
            if (event.getPointerCount() >= 2) {
                PointF J13 = J(event);
                this.f15535p = true;
                this.f15536q = J13.f32425x;
                this.f15537r = J13.f32426y;
                return true;
            }
        }
        return event.getPointerCount() > 1 || super.onTouchEvent(event);
    }

    public void p(ShaderGraphAttribute attribute) {
        if (this.f15530k == null || attribute == null) {
            return;
        }
        AttributeAccessNode attributeAccessNode = new AttributeAccessNode();
        attributeAccessNode.attributeId = attribute.f81224id;
        PointF l02 = l0(getWidth() * 0.5f, getHeight() * 0.5f);
        attributeAccessNode.f81310x = l02.f32425x;
        attributeAccessNode.f81311y = l02.f32426y;
        this.f15530k.c(attributeAccessNode);
        f0();
        b0();
    }

    public final PointF p0(float rawX, float rawY) {
        getLocationOnScreen(new int[2]);
        return new PointF(rawX - r0[0], rawY - r0[1]);
    }

    public final void q(com.itsmagic.engine.Engines.Graphics.ShaderGraph.q nodeInterface) {
        ShaderGraphNode a10;
        if (this.f15530k == null || nodeInterface == null || (a10 = nodeInterface.a()) == null) {
            return;
        }
        if (a10.w() && this.f15530k.h() != null) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE));
            return;
        }
        if (((a10 instanceof RawTextureNode) || (a10 instanceof RawCubemapNode)) && !com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.a(this.f15530k)) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_MAX_TEXTURES_LIMIT_REACHED) + " (8)");
            return;
        }
        PointF l02 = l0(getWidth() * 0.5f, getHeight() * 0.5f);
        a10.f81310x = l02.f32425x;
        a10.f81311y = l02.f32426y;
        this.f15530k.c(a10);
        f0();
        b0();
    }

    public void q0(EditorPanel panel) {
        if (this.f15530k == null) {
            return;
        }
        this.f15529j.i();
        Iterator<p> it = this.f15525f.iterator();
        while (it.hasNext()) {
            it.next().t0();
        }
        v vVar = this.f15545z;
        if (vVar != null) {
            vVar.O(this.f15525f);
        }
        s0();
    }

    public final void r(w socket) {
        socket.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean P10;
                P10 = H.this.P(view, motionEvent);
                return P10;
            }
        });
    }

    public final w r0(w[] sockets, float rawX, float rawY, w best, float bestDist) {
        if (sockets == null) {
            return best;
        }
        for (w wVar : sockets) {
            if (wVar != null && M(wVar, rawX, rawY)) {
                float y10 = y(wVar, rawX, rawY);
                if (y10 < bestDist) {
                    best = wVar;
                    bestDist = y10;
                }
            }
        }
        return best;
    }

    public void s(String inProjectPath) {
        ShaderGraphSettings shaderGraphSettings;
        removeCallbacks(this.f15519D);
        this.f15532m = inProjectPath;
        this.f15533n = false;
        this.f15531l = null;
        if (inProjectPath == null || inProjectPath.isEmpty()) {
            this.f15530k = null;
            w();
            v vVar = this.f15545z;
            if (vVar != null) {
                vVar.i(null, null);
                return;
            }
            return;
        }
        ShaderGraphData Z10 = Z(inProjectPath);
        this.f15530k = Z10;
        if (Z10 != null && (shaderGraphSettings = Z10.settings) != null && shaderGraphSettings.isPostProcessing && com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.i(Z10)) {
            this.f15530k.k();
        }
        Material material = new Material();
        material.g0(com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.f81159a);
        material.f78885e = inProjectPath;
        material.e0(this.f15530k);
        this.f15531l = material;
        v vVar2 = this.f15545z;
        if (vVar2 != null) {
            vVar2.i(material, this.f15530k);
        }
        f0();
        s0();
    }

    public final void s0() {
        boolean z10;
        if (this.f15516A == null) {
            return;
        }
        if (this.f15532m != null) {
            z10 = this.f15533n;
        } else {
            Material material = this.f15531l;
            z10 = material != null && material.J();
        }
        if (z10) {
            this.f15516A.setText("Compiling shader...");
            this.f15516A.setVisibility(0);
            this.f15516A.removeCallbacks(this.f15520E);
        } else if (this.f15517B) {
            this.f15516A.setText("Compiled");
            this.f15516A.setVisibility(0);
            this.f15516A.removeCallbacks(this.f15520E);
            this.f15516A.postDelayed(this.f15520E, 1000L);
            this.f15518C = false;
        } else {
            this.f15516A.setVisibility(8);
        }
        this.f15517B = z10;
    }

    public void setCompileStatusView(TextView view) {
        this.f15516A = view;
        if (view != null) {
            view.bringToFront();
        }
        s0();
    }

    public void setScale(float newScale) {
        float f10 = this.f15524e;
        float E10 = Nc.b.E(0.1f, newScale, 1.6f);
        if (E10 == f10) {
            return;
        }
        float width = getWidth() * 0.5f;
        float height = getHeight() * 0.5f;
        if (width > 0.0f && height > 0.0f) {
            float f11 = (width - this.f15522c) / f10;
            float f12 = (height - this.f15523d) / f10;
            this.f15522c = width - (f11 * E10);
            this.f15523d = height - (f12 * E10);
        }
        this.f15524e = E10;
        C2851g c2851g = this.f15529j;
        if (c2851g != null) {
            c2851g.setGraphScale(E10);
        }
        this.f15539t = System.currentTimeMillis();
        i0(null);
        Iterator<p> it = this.f15525f.iterator();
        while (it.hasNext()) {
            it.next().f0();
        }
        u0();
        invalidate();
        this.f15529j.invalidate();
    }

    public void t(Material material) {
        removeCallbacks(this.f15519D);
        this.f15532m = null;
        this.f15533n = false;
        this.f15531l = material;
        if (material == null) {
            this.f15530k = null;
            w();
            v vVar = this.f15545z;
            if (vVar != null) {
                vVar.i(null, null);
                return;
            }
            return;
        }
        ShaderGraphData g10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.g(material);
        this.f15530k = g10;
        v vVar2 = this.f15545z;
        if (vVar2 != null) {
            vVar2.i(material, g10);
        }
        f0();
        s0();
    }

    public void t0(float rawX, float rawY) {
        if (this.f15529j == null) {
            return;
        }
        a0();
        PointF p02 = p0(rawX, rawY);
        w wVar = this.f15542w;
        if (wVar == null) {
            wVar = this.f15541v;
        }
        this.f15529j.g(wVar, p02.f32425x, p02.f32426y);
    }

    public final List<C12908b> u() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.b(); i10++) {
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.q e10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.e(i10);
            if (e10 != null && e10.g()) {
                String e11 = e10.e();
                C12908b D10 = (e11 == null || !e11.contains("/")) ? (e11 == null || e11.isEmpty()) ? null : D(new String[]{e11}, steppedArrayList) : D(e11.split("/"), steppedArrayList);
                (D10 != null ? D10.f84530c : steppedArrayList).add(new C12908b(e10.f(), new f(e10)));
            }
        }
        return steppedArrayList;
    }

    public final void u0() {
        PointF branchAnchorLocal;
        PointF M10;
        PointF M11;
        if (this.f15525f.isEmpty()) {
            return;
        }
        float max = Math.max(1.0E-4f, getScale());
        float k02 = Nc.b.k0(0.0f) * max;
        for (p pVar : this.f15525f) {
            w[] inputSockets = pVar.getInputSockets();
            if (inputSockets != null) {
                for (int i10 = 0; i10 < inputSockets.length; i10++) {
                    w wVar = inputSockets[i10];
                    if (wVar != null && (M11 = pVar.M(true, i10)) != null) {
                        wVar.setScaleX(1.0f);
                        wVar.setScaleY(1.0f);
                        wVar.setVisualScale(max);
                        float y10 = (pVar.getY() + (M11.f32426y * pVar.getScaleY())) - (wVar.getHeight() * 0.5f);
                        wVar.setX(((pVar.getX() + (pVar.getCardLeftLocal() * pVar.getScaleX())) - (wVar.getWidth() * 0.5f)) - k02);
                        wVar.setY(y10);
                    }
                }
            }
            w[] outputSockets = pVar.getOutputSockets();
            if (outputSockets != null) {
                for (int i11 = 0; i11 < outputSockets.length; i11++) {
                    w wVar2 = outputSockets[i11];
                    if (wVar2 != null && (M10 = pVar.M(false, i11)) != null) {
                        wVar2.setScaleX(1.0f);
                        wVar2.setScaleY(1.0f);
                        wVar2.setVisualScale(max);
                        float y11 = (pVar.getY() + (M10.f32426y * pVar.getScaleY())) - (wVar2.getHeight() * 0.5f);
                        wVar2.setX(((pVar.getX() + (pVar.getCardRightLocal() * pVar.getScaleX())) - (wVar2.getWidth() * 0.5f)) + k02);
                        wVar2.setY(y11);
                    }
                }
            }
            w branchSocket = pVar.getBranchSocket();
            if (branchSocket != null && (branchAnchorLocal = pVar.getBranchAnchorLocal()) != null) {
                branchSocket.setScaleX(1.0f);
                branchSocket.setScaleY(1.0f);
                branchSocket.setVisualScale(max);
                float y12 = (pVar.getY() + (branchAnchorLocal.f32426y * pVar.getScaleY())) - (branchSocket.getHeight() * 0.5f);
                branchSocket.setX(((pVar.getX() + (pVar.getCardLeftLocal() * pVar.getScaleX())) - (branchSocket.getWidth() * 0.5f)) - k02);
                branchSocket.setY(y12);
            }
        }
    }

    public final boolean v(ShaderGraphNode from, int fromSlot, ShaderGraphNode to, int toSlot) {
        return I(from, fromSlot, to, toSlot) == null;
    }

    public PointF v0(float wx, float wy) {
        float f10 = this.f15524e;
        return new PointF((wx * f10) + this.f15522c, (wy * f10) + this.f15523d);
    }

    public final void w() {
        Iterator<p> it = this.f15525f.iterator();
        while (it.hasNext()) {
            removeView(it.next());
        }
        this.f15525f.clear();
        this.f15526g.clear();
        Iterator<w> it2 = this.f15527h.iterator();
        while (it2.hasNext()) {
            removeView(it2.next());
        }
        this.f15527h.clear();
        Iterator<w> it3 = this.f15528i.iterator();
        while (it3.hasNext()) {
            removeView(it3.next());
        }
        this.f15528i.clear();
        C2851g c2851g = this.f15529j;
        if (c2851g != null) {
            c2851g.f(null, null);
        }
        this.f15534o = null;
        s0();
    }

    public final boolean w0(String fromId, String toId) {
        if (fromId.equals(toId)) {
            return true;
        }
        HashSet hashSet = new HashSet();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(toId);
        while (!arrayDeque.isEmpty()) {
            String str = (String) arrayDeque.pop();
            if (hashSet.add(str)) {
                if (str.equals(fromId)) {
                    return true;
                }
                for (ShaderGraphNodeConnection shaderGraphNodeConnection : this.f15530k.connections) {
                    if (str.equals(shaderGraphNodeConnection.fromNodeId)) {
                        arrayDeque.push(shaderGraphNodeConnection.toNodeId);
                    }
                }
                List<ShaderGraphBranchConnection> list = this.f15530k.branchConnections;
                if (list != null) {
                    for (ShaderGraphBranchConnection shaderGraphBranchConnection : list) {
                        if (shaderGraphBranchConnection != null && str.equals(shaderGraphBranchConnection.fromNodeId)) {
                            arrayDeque.push(shaderGraphBranchConnection.toNodeId);
                        }
                    }
                }
            }
        }
        return false;
    }

    public void x() {
        p pVar;
        if (this.f15530k == null || (pVar = this.f15534o) == null) {
            return;
        }
        this.f15530k.o(pVar.getNode());
        f0();
        b0();
    }

    public final float y(View socket, float rawX, float rawY) {
        socket.getLocationOnScreen(new int[2]);
        float width = rawX - (r0[0] + (socket.getWidth() * 0.5f));
        float height = rawY - (r0[1] + (socket.getHeight() * 0.5f));
        return (width * width) + (height * height);
    }

    public final void z(Canvas c10) {
        float f10;
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        float f11 = this.f15524e * 64.0f;
        if (f11 < 8.0f) {
            f11 = 8.0f;
        }
        float f12 = this.f15522c % f11;
        while (true) {
            f10 = width;
            if (f12 > f10) {
                break;
            }
            c10.drawLine(f12, 0.0f, f12, height, this.f15521b);
            f12 += f11;
        }
        for (float f13 = this.f15523d % f11; f13 <= height; f13 += f11) {
            c10.drawLine(0.0f, f13, f10, f13, this.f15521b);
        }
    }

    public H(Context context, AttributeSet attrs) {
        super(context, attrs);
        Paint paint = new Paint(1);
        this.f15521b = paint;
        this.f15524e = 1.0f;
        this.f15525f = new SteppedArrayList();
        this.f15526g = new HashMap();
        this.f15527h = new SteppedArrayList();
        this.f15528i = new SteppedArrayList();
        this.f15519D = new a();
        this.f15520E = new b();
        setWillNotDraw(false);
        setMotionEventSplittingEnabled(false);
        setClipChildren(false);
        setClipToPadding(false);
        paint.setColor(Theme.i(Theme.T.NODEGRAPH_GRID));
        paint.setStrokeWidth(1.0f);
        C2851g c2851g = new C2851g(context);
        this.f15529j = c2851g;
        addView(c2851g, new FrameLayout.LayoutParams(-1, -1));
        this.f15529j.setClickable(false);
        this.f15529j.setFocusable(false);
        this.f15529j.setGraphScale(this.f15524e);
        this.f15545z = new v(this);
        this.f15540u = new ScaleGestureDetector(context, new c());
    }
}
