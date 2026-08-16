package e6;

import android.content.Context;
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
import com.itsmagic.engine.Engines.Engine.NoCode.Components.NoCodeExecutor;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeAttribute;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeBranchConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeGraph;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Attributes.AttributeAccessNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Attributes.SetAttributeNode;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import ga.EnumC13304B;
import ha.C13437a;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import ma.C14205b;
import r4.C15147a;

public class X extends FrameLayout {

    public static final long f85257G = 300;

    public static final float f85258H = 48.0f;

    public F f85259A;

    public TextView f85260B;

    public boolean f85261C;

    public boolean f85262D;

    public final Runnable f85263E;

    public final Runnable f85264F;

    public final Paint f85265b;

    public float f85266c;

    public float f85267d;

    public float f85268e;

    public final List<E> f85269f;

    public final Map<String, E> f85270g;

    public final List<K> f85271h;

    public final List<K> f85272i;

    public C13031m f85273j;

    public NoCodeData f85274k;

    public NoCodeExecutor f85275l;

    public String f85276m;

    public boolean f85277n;

    public E f85278o;

    public boolean f85279p;

    public float f85280q;

    public float f85281r;

    public long f85282s;

    public long f85283t;

    public ScaleGestureDetector f85284u;

    public K f85285v;

    public K f85286w;

    public boolean f85287x;

    public NoCodeNodeConnection f85288y;

    public NoCodeBranchConnection f85289z;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            if (X.this.f85274k != null) {
                X.this.f85274k.f78947b = true;
            }
            X.this.C0();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            if (X.this.f85260B != null) {
                X.this.f85260B.setVisibility(8);
            }
        }
    }

    public class c extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public c() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector detector) {
            X.this.setScale(X.this.f85268e * detector.getScaleFactor());
            return true;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            X.this.M();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            X.this.M();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            com.itsmagic.engine.Engines.Engine.World.a.i(new C13437a());
        }
    }

    public class g implements dd.d {
        public g() {
        }

        @Override
        public void onSelected(View v10) {
            I.A1(X.this);
        }
    }

    public class h implements dd.d {

        public final ga.p f85297a;

        public h(final ga.p val$nodeInterface) {
            this.f85297a = val$nodeInterface;
        }

        @Override
        public void onSelected(View v10) {
            X.this.r(this.f85297a);
        }
    }

    public class i implements dd.d {

        public final C14205b.c f85299a;

        public i(final C14205b.c val$entry) {
            this.f85299a = val$entry;
        }

        @Override
        public void onSelected(View v10) {
            X.this.q(this.f85299a.a());
        }
    }

    public static class j implements ga.D {

        public final NoCodeData f85301a;

        public j(NoCodeData data) {
            this.f85301a = data;
        }

        @Override
        public NoCodeData a() {
            return this.f85301a;
        }

        @Override
        public ga.H b(NoCodeNode node, int inputIndex) {
            NoCodeNodeConnection c10 = c(this.f85301a, node.B(), inputIndex);
            if (c10 == null) {
                NoCodeSlot[] F10 = node.F();
                return (F10 == null || inputIndex < 0 || inputIndex >= F10.length) ? ga.H.NUMBER : F10[inputIndex].type;
            }
            NoCodeNode V10 = this.f85301a.V(c10.fromNodeId);
            return V10 == null ? ga.H.NUMBER : V10.t0(c10.fromSlot, this);
        }

        public final NoCodeNodeConnection c(NoCodeData data, String nodeId, int inputIndex) {
            List<NoCodeNodeConnection> list = data.connections;
            if (list == null) {
                return null;
            }
            for (NoCodeNodeConnection noCodeNodeConnection : list) {
                if (nodeId.equals(noCodeNodeConnection.toNodeId) && noCodeNodeConnection.toSlot == inputIndex) {
                    return noCodeNodeConnection;
                }
            }
            return null;
        }
    }

    public X(Context context) {
        this(context, null);
    }

    public static NoCodeBranchConnection F(NoCodeData data, String nodeId, int toSlot) {
        List<NoCodeBranchConnection> list;
        if (data != null && (list = data.branchConnections) != null) {
            for (NoCodeBranchConnection noCodeBranchConnection : list) {
                if (noCodeBranchConnection != null && nodeId.equals(noCodeBranchConnection.toNodeId) && noCodeBranchConnection.toSlot == toSlot) {
                    return noCodeBranchConnection;
                }
            }
        }
        return null;
    }

    public static NoCodeNodeConnection G(NoCodeData data, String nodeId, int inputIndex) {
        List<NoCodeNodeConnection> list;
        if (data != null && (list = data.connections) != null) {
            for (NoCodeNodeConnection noCodeNodeConnection : list) {
                if (nodeId.equals(noCodeNodeConnection.toNodeId) && noCodeNodeConnection.toSlot == inputIndex) {
                    return noCodeNodeConnection;
                }
            }
        }
        return null;
    }

    public static boolean Y(String str, int i10, NoCodeBranchConnection noCodeBranchConnection) {
        return noCodeBranchConnection != null && str.equals(noCodeBranchConnection.toNodeId) && noCodeBranchConnection.toSlot == i10;
    }

    public static boolean Z(String str, int i10, NoCodeBranchConnection noCodeBranchConnection) {
        return noCodeBranchConnection != null && str.equals(noCodeBranchConnection.fromNodeId) && noCodeBranchConnection.fromSlot == i10;
    }

    public static boolean a0(String str, int i10, NoCodeNodeConnection noCodeNodeConnection) {
        return str.equals(noCodeNodeConnection.toNodeId) && noCodeNodeConnection.toSlot == i10;
    }

    public static boolean b0(String str, int i10, NoCodeNodeConnection noCodeNodeConnection) {
        return str.equals(noCodeNodeConnection.fromNodeId) && noCodeNodeConnection.fromSlot == i10;
    }

    public static boolean c0(String str, int i10, NoCodeBranchConnection noCodeBranchConnection) {
        return noCodeBranchConnection != null && str.equals(noCodeBranchConnection.toNodeId) && noCodeBranchConnection.toSlot == i10;
    }

    public static boolean d0(String str, int i10, NoCodeNodeConnection noCodeNodeConnection) {
        return str.equals(noCodeNodeConnection.toNodeId) && noCodeNodeConnection.toSlot == i10;
    }

    public final void A() {
        this.f85288y = null;
        this.f85289z = null;
    }

    public void A0(EditorPanel panel) {
        if (this.f85274k == null) {
            return;
        }
        this.f85273j.i();
        Iterator<E> it = this.f85269f.iterator();
        while (it.hasNext()) {
            it.next().l1();
        }
        F f10 = this.f85259A;
        if (f10 != null) {
            f10.e(this.f85269f);
        }
        C0();
    }

    public void B() {
        E e10;
        if (this.f85274k == null || (e10 = this.f85278o) == null) {
            return;
        }
        this.f85274k.N0(e10.getNode());
        n0();
        i0();
    }

    public final K B0(K[] sockets, float rawX, float rawY, K best, float bestDist) {
        if (sockets == null) {
            return best;
        }
        for (K k10 : sockets) {
            if (k10 != null && S(k10, rawX, rawY)) {
                float C10 = C(k10, rawX, rawY);
                if (C10 < bestDist) {
                    best = k10;
                    bestDist = C10;
                }
            }
        }
        return best;
    }

    public final float C(View socket, float rawX, float rawY) {
        socket.getLocationOnScreen(new int[2]);
        float width = rawX - (r0[0] + (socket.getWidth() * 0.5f));
        float height = rawY - (r0[1] + (socket.getHeight() * 0.5f));
        return (width * width) + (height * height);
    }

    public final void C0() {
        TextView textView = this.f85260B;
        if (textView == null) {
            return;
        }
        boolean z10 = this.f85277n || this.f85262D;
        if (z10) {
            textView.setText("Saving...");
            this.f85260B.setVisibility(0);
            this.f85260B.removeCallbacks(this.f85264F);
        } else if (this.f85261C) {
            textView.setText("Saved");
            this.f85260B.setVisibility(0);
            this.f85260B.removeCallbacks(this.f85264F);
            this.f85260B.postDelayed(this.f85264F, 1000L);
            this.f85262D = false;
        } else {
            textView.setVisibility(8);
        }
        this.f85261C = z10;
    }

    public final void D(Canvas c10) {
        float f10;
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        float f11 = this.f85268e * 64.0f;
        if (f11 < 8.0f) {
            f11 = 8.0f;
        }
        float f12 = this.f85266c % f11;
        while (true) {
            f10 = width;
            if (f12 > f10) {
                break;
            }
            c10.drawLine(f12, 0.0f, f12, height, this.f85265b);
            f12 += f11;
        }
        for (float f13 = this.f85267d % f11; f13 <= height; f13 += f11) {
            c10.drawLine(0.0f, f13, f10, f13, this.f85265b);
        }
    }

    public void D0(float rawX, float rawY) {
        if (this.f85273j == null) {
            return;
        }
        h0();
        PointF z02 = z0(rawX, rawY);
        K k10 = this.f85286w;
        if (k10 == null) {
            k10 = this.f85285v;
        }
        this.f85273j.g(k10, z02.f32425x, z02.f32426y);
    }

    public void E() {
        E e10;
        if (this.f85274k == null || (e10 = this.f85278o) == null) {
            return;
        }
        NoCodeNode node = e10.getNode();
        if (node != null && node.a0()) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE));
            return;
        }
        NoCodeNode r10 = node != null ? node.r() : null;
        if (r10 == null) {
            return;
        }
        r10.h0(20.0f, 20.0f, getContext());
        this.f85274k.g(r10);
        n0();
        i0();
    }

    public final void E0() {
        PointF branchOutputAnchorLocal;
        PointF branchInputAnchorLocal;
        PointF m02;
        PointF m03;
        if (this.f85269f.isEmpty()) {
            return;
        }
        float max = Math.max(1.0E-4f, getScale());
        float k02 = Nc.b.k0(0.0f) * max;
        for (E e10 : this.f85269f) {
            K[] inputSockets = e10.getInputSockets();
            if (inputSockets != null) {
                for (int i10 = 0; i10 < inputSockets.length; i10++) {
                    K k10 = inputSockets[i10];
                    if (k10 != null && (m03 = e10.m0(true, i10)) != null) {
                        k10.setScaleX(1.0f);
                        k10.setScaleY(1.0f);
                        k10.setVisualScale(max);
                        float y10 = (e10.getY() + (m03.f32426y * e10.getScaleY())) - (k10.getHeight() * 0.5f);
                        k10.setX(((e10.getX() + (e10.getCardLeftLocal() * e10.getScaleX())) - (k10.getWidth() * 0.5f)) - k02);
                        k10.setY(y10);
                    }
                }
            }
            K[] outputSockets = e10.getOutputSockets();
            if (outputSockets != null) {
                for (int i11 = 0; i11 < outputSockets.length; i11++) {
                    K k11 = outputSockets[i11];
                    if (k11 != null && (m02 = e10.m0(false, i11)) != null) {
                        k11.setScaleX(1.0f);
                        k11.setScaleY(1.0f);
                        k11.setVisualScale(max);
                        float y11 = (e10.getY() + (m02.f32426y * e10.getScaleY())) - (k11.getHeight() * 0.5f);
                        k11.setX(((e10.getX() + (e10.getCardRightLocal() * e10.getScaleX())) - (k11.getWidth() * 0.5f)) + k02);
                        k11.setY(y11);
                    }
                }
            }
            K branchInputSocket = e10.getBranchInputSocket();
            if (branchInputSocket != null && (branchInputAnchorLocal = e10.getBranchInputAnchorLocal()) != null) {
                branchInputSocket.setScaleX(1.0f);
                branchInputSocket.setScaleY(1.0f);
                branchInputSocket.setVisualScale(max);
                float y12 = (e10.getY() + (branchInputAnchorLocal.f32426y * e10.getScaleY())) - (branchInputSocket.getHeight() * 0.5f);
                branchInputSocket.setX(((e10.getX() + (e10.getCardLeftLocal() * e10.getScaleX())) - (branchInputSocket.getWidth() * 0.5f)) - k02);
                branchInputSocket.setY(y12);
            }
            K branchOutputSocket = e10.getBranchOutputSocket();
            if (branchOutputSocket != null && (branchOutputAnchorLocal = e10.getBranchOutputAnchorLocal()) != null) {
                branchOutputSocket.setScaleX(1.0f);
                branchOutputSocket.setScaleY(1.0f);
                branchOutputSocket.setVisualScale(max);
                float y13 = (e10.getY() + (branchOutputAnchorLocal.f32426y * e10.getScaleY())) - (branchOutputSocket.getHeight() * 0.5f);
                branchOutputSocket.setX(((e10.getX() + (e10.getCardRightLocal() * e10.getScaleX())) - (branchOutputSocket.getWidth() * 0.5f)) + k02);
                branchOutputSocket.setY(y13);
            }
        }
    }

    public PointF F0(float wx, float wy) {
        float f10 = this.f85268e;
        return new PointF((wx * f10) + this.f85266c, (wy * f10) + this.f85267d);
    }

    public final boolean G0(String fromId, String toId) {
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
                for (NoCodeNodeConnection noCodeNodeConnection : this.f85274k.connections) {
                    if (str.equals(noCodeNodeConnection.fromNodeId)) {
                        arrayDeque.push(noCodeNodeConnection.toNodeId);
                    }
                }
                List<NoCodeBranchConnection> list = this.f85274k.branchConnections;
                if (list != null) {
                    for (NoCodeBranchConnection noCodeBranchConnection : list) {
                        if (noCodeBranchConnection != null && str.equals(noCodeBranchConnection.fromNodeId)) {
                            arrayDeque.push(noCodeBranchConnection.toNodeId);
                        }
                    }
                }
            }
        }
        return false;
    }

    public final String H(NoCodeNode start, EnumC13304B requiredStage) {
        NoCodeNode V10;
        if (this.f85274k != null && start != null) {
            ArrayDeque arrayDeque = new ArrayDeque();
            HashSet hashSet = new HashSet();
            arrayDeque.push(start.B());
            while (!arrayDeque.isEmpty()) {
                String str = (String) arrayDeque.pop();
                if (hashSet.add(str) && (V10 = this.f85274k.V(str)) != null) {
                    EnumC13304B M10 = V10.M();
                    EnumC13304B enumC13304B = EnumC13304B.VERTEX;
                    if (requiredStage == enumC13304B && M10 == EnumC13304B.FRAGMENT) {
                        return (EditorSettings.a() == null || !EditorSettings.a().translateNoCodeV2) ? V10.N(this.f85274k) : V10.x(this.f85274k);
                    }
                    if (requiredStage == EnumC13304B.FRAGMENT && M10 == enumC13304B) {
                        return (EditorSettings.a() == null || !EditorSettings.a().translateNoCodeV2) ? V10.N(this.f85274k) : V10.x(this.f85274k);
                    }
                    NoCodeSlot[] F10 = V10.F();
                    if (F10 != null) {
                        for (int i10 = 0; i10 < F10.length; i10++) {
                            NoCodeNodeConnection G10 = G(this.f85274k, str, i10);
                            if (G10 != null) {
                                arrayDeque.push(G10.fromNodeId);
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final C12908b I(String[] folders, List<C12908b> itemList) {
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

    public final K J(float rawX, float rawY) {
        K k10 = null;
        float f10 = Float.MAX_VALUE;
        for (E e10 : this.f85269f) {
            K B02 = B0(e10.getInputSockets(), rawX, rawY, k10, f10);
            if (B02 != null) {
                f10 = C(B02, rawX, rawY);
            }
            K B03 = B0(e10.getOutputSockets(), rawX, rawY, B02, f10);
            if (B03 != null) {
                f10 = C(B03, rawX, rawY);
            }
            K branchInputSocket = e10.getBranchInputSocket();
            if (branchInputSocket != null && S(branchInputSocket, rawX, rawY)) {
                float C10 = C(branchInputSocket, rawX, rawY);
                if (C10 < f10) {
                    B03 = branchInputSocket;
                    f10 = C10;
                }
            }
            K branchOutputSocket = e10.getBranchOutputSocket();
            if (branchOutputSocket != null && S(branchOutputSocket, rawX, rawY)) {
                float C11 = C(branchOutputSocket, rawX, rawY);
                if (C11 < f10) {
                    k10 = branchOutputSocket;
                    f10 = C11;
                }
            }
            k10 = B03;
        }
        return k10;
    }

    public final K K(float rawX, float rawY, boolean expectedInput) {
        K B02;
        float f10 = Float.MAX_VALUE;
        K k10 = null;
        for (E e10 : this.f85269f) {
            K[] inputSockets = e10.getInputSockets();
            if (expectedInput) {
                B02 = B0(inputSockets, rawX, rawY, k10, f10);
                if (B02 != null) {
                    f10 = C(B02, rawX, rawY);
                }
                K branchInputSocket = e10.getBranchInputSocket();
                if (branchInputSocket != null && branchInputSocket.g() && S(branchInputSocket, rawX, rawY)) {
                    float C10 = C(branchInputSocket, rawX, rawY);
                    if (C10 < f10) {
                        B02 = branchInputSocket;
                        f10 = C10;
                    }
                }
            } else {
                B02 = B0(e10.getOutputSockets(), rawX, rawY, k10, f10);
                if (B02 != null) {
                    f10 = C(B02, rawX, rawY);
                }
                K branchOutputSocket = e10.getBranchOutputSocket();
                if (branchOutputSocket != null && !branchOutputSocket.g() && S(branchOutputSocket, rawX, rawY)) {
                    float C11 = C(branchOutputSocket, rawX, rawY);
                    if (C11 < f10) {
                        k10 = branchOutputSocket;
                        f10 = C11;
                    }
                }
            }
            k10 = B02;
        }
        return k10;
    }

    public void L(float rawX, float rawY) {
        K K10;
        if (this.f85274k == null) {
            return;
        }
        h0();
        K k10 = this.f85285v;
        NoCodeBranchConnection noCodeBranchConnection = null;
        if (k10 == null) {
            this.f85273j.a();
            this.f85286w = null;
            A();
            return;
        }
        if (k10.g()) {
            K10 = K(rawX, rawY, false);
            if (K10 == null) {
                K10 = J(rawX, rawY);
            }
        } else {
            K10 = K(rawX, rawY, true);
            if (K10 == null) {
                K10 = J(rawX, rawY);
            }
        }
        this.f85273j.a();
        this.f85285v = null;
        this.f85286w = null;
        if (K10 == null || K10 == k10) {
            if (!Q()) {
                if (this.f85287x) {
                    i0();
                }
                this.f85287x = false;
                return;
            } else if (K10 == null) {
                A();
                i0();
                this.f85287x = false;
                return;
            } else {
                s0();
                A();
                C13031m c13031m = this.f85273j;
                if (c13031m != null) {
                    c13031m.invalidate();
                }
                this.f85287x = false;
                return;
            }
        }
        K k11 = k10.g() ? K10 : k10;
        if (!k10.g()) {
            k10 = K10;
        }
        if (k11.g() || !k10.g()) {
            if (Q()) {
                s0();
                A();
                C13031m c13031m2 = this.f85273j;
                if (c13031m2 != null) {
                    c13031m2.invalidate();
                }
                this.f85287x = false;
                return;
            }
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION_CONNECT_OUTPUT_TO_INPUT));
            s0();
            A();
            C13031m c13031m3 = this.f85273j;
            if (c13031m3 != null) {
                c13031m3.invalidate();
            }
            if (this.f85287x) {
                i0();
            }
            this.f85287x = false;
            return;
        }
        NoCodeNode node = k11.getNodeView().getNode();
        NoCodeNode node2 = k10.getNodeView().getNode();
        if (node == null || node2 == null) {
            s0();
            A();
            C13031m c13031m4 = this.f85273j;
            if (c13031m4 != null) {
                c13031m4.invalidate();
            }
            if (this.f85287x) {
                i0();
            }
            this.f85287x = false;
            return;
        }
        boolean z10 = k10.e() || (k10.g() && k10.getType() == ga.H.BRANCH);
        boolean z11 = k11.getType() == ga.H.BRANCH;
        if (!z10 && !z11) {
            String N10 = N(node, k11.getSlotIndex(), node2, k10.getSlotIndex());
            if (N10 != null) {
                N7.c.v0(N10);
                s0();
                A();
                C13031m c13031m5 = this.f85273j;
                if (c13031m5 != null) {
                    c13031m5.invalidate();
                }
                if (this.f85287x) {
                    i0();
                }
                this.f85287x = false;
                return;
            }
            NoCodeNodeConnection noCodeNodeConnection = this.f85288y;
            if (noCodeNodeConnection != null && noCodeNodeConnection.fromNodeId.equals(node.B()) && this.f85288y.fromSlot == k11.getSlotIndex() && this.f85288y.toNodeId.equals(node2.B()) && this.f85288y.toSlot == k10.getSlotIndex()) {
                s0();
                A();
                C13031m c13031m6 = this.f85273j;
                if (c13031m6 != null) {
                    c13031m6.invalidate();
                }
                this.f85287x = false;
                return;
            }
            if (!P(node.B(), k11.getSlotIndex(), node2.B(), k10.getSlotIndex())) {
                q0(node2.B(), k10.getSlotIndex());
                this.f85274k.connections.add(new NoCodeNodeConnection(node.B(), k11.getSlotIndex(), node2.B(), k10.getSlotIndex()));
                i0();
                A();
                this.f85287x = false;
                return;
            }
            s0();
            A();
            C13031m c13031m7 = this.f85273j;
            if (c13031m7 != null) {
                c13031m7.invalidate();
            }
            if (this.f85287x) {
                i0();
            }
            this.f85287x = false;
            return;
        }
        if (!z10 || !z11) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION_BRANCH_NEEDS_BRANCH_INPUT));
            s0();
            A();
            C13031m c13031m8 = this.f85273j;
            if (c13031m8 != null) {
                c13031m8.invalidate();
            }
            if (this.f85287x) {
                i0();
            }
            this.f85287x = false;
            return;
        }
        if (node2.a0()) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION_OUTPUT_DOES_NOT_ACCEPT_BRANCH));
            s0();
            A();
            C13031m c13031m9 = this.f85273j;
            if (c13031m9 != null) {
                c13031m9.invalidate();
            }
            if (this.f85287x) {
                i0();
            }
            this.f85287x = false;
            return;
        }
        NoCodeData noCodeData = this.f85274k;
        if (noCodeData.branchConnections == null) {
            noCodeData.branchConnections = new SteppedArrayList();
        }
        int slotIndex = k10.e() ? -1 : k10.getSlotIndex();
        Iterator<NoCodeBranchConnection> it = this.f85274k.branchConnections.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            NoCodeBranchConnection next = it.next();
            if (next != null && node2.B().equals(next.toNodeId) && next.toSlot == slotIndex) {
                noCodeBranchConnection = next;
                break;
            }
        }
        if (noCodeBranchConnection != null) {
            this.f85274k.branchConnections.remove(noCodeBranchConnection);
        }
        if (!G0(node.B(), node2.B())) {
            this.f85274k.branchConnections.add(new NoCodeBranchConnection(node.B(), k11.getSlotIndex(), node2.B(), slotIndex));
            i0();
            A();
            this.f85287x = false;
            return;
        }
        if (noCodeBranchConnection != null) {
            this.f85274k.branchConnections.add(noCodeBranchConnection);
        }
        N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_CONNECTION_WOULD_CREATE_CYCLE));
        s0();
        A();
        C13031m c13031m10 = this.f85273j;
        if (c13031m10 != null) {
            c13031m10.invalidate();
        }
        if (this.f85287x) {
            i0();
        }
        this.f85287x = false;
    }

    public void M() {
        if (this.f85269f.isEmpty()) {
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
        for (E e10 : this.f85269f) {
            if (e10 != null && e10.getNode() != null) {
                int width = e10.getWidth();
                int height = e10.getHeight();
                if (width > 0 && height > 0) {
                    float y10 = e10.getNode().y(getContext());
                    float z11 = e10.getNode().z(getContext());
                    f13 = Math.min(f13, y10);
                    f11 = Math.min(f11, z11);
                    f10 = Math.max(f10, width + y10);
                    f12 = Math.max(f12, height + z11);
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
        this.f85266c = (getWidth() * 0.5f) - (((f13 + f10) * 0.5f) * E10);
        this.f85267d = (getHeight() * 0.5f) - (((f11 + f12) * 0.5f) * E10);
        this.f85268e = E10;
        C13031m c13031m = this.f85273j;
        if (c13031m != null) {
            c13031m.setGraphScale(E10);
        }
        this.f85283t = System.currentTimeMillis();
        r0(null);
        Iterator<E> it = this.f85269f.iterator();
        while (it.hasNext()) {
            it.next().P0();
        }
        E0();
        invalidate();
        this.f85273j.invalidate();
    }

    public final String N(NoCodeNode from, int fromSlot, NoCodeNode to, int toSlot) {
        String H10;
        if (from == null || to == null) {
            return Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION);
        }
        ga.H t02 = from.t0(fromSlot, new j(this.f85274k));
        ga.H h10 = to.F()[toSlot].type;
        if (!ga.C.a(t02, h10)) {
            return Lang.l(Lang.T.SHADER_GRAPH_INCOMPATIBLE_TYPE) + ": " + ((Object) t02) + " -> " + ((Object) h10);
        }
        EnumC13304B M10 = from.M();
        EnumC13304B b10 = to.F()[toSlot].b(to.M());
        EnumC13304B enumC13304B = EnumC13304B.FRAGMENT;
        if (M10 == enumC13304B && b10 == EnumC13304B.VERTEX) {
            return Lang.l(Lang.T.SHADER_GRAPH_INVALID_CONNECTION_FRAGMENT_TO_VERTEX);
        }
        if ((b10 != EnumC13304B.VERTEX && b10 != enumC13304B) || (H10 = H(from, b10)) == null) {
            if (G0(from.B(), to.B())) {
                return Lang.l(Lang.T.SHADER_GRAPH_CONNECTION_WOULD_CREATE_CYCLE);
            }
            return null;
        }
        return Lang.l(Lang.T.SHADER_GRAPH_CHAIN_CONTAINS_OPPOSITE_STAGE_NODE) + ": " + H10;
    }

    public final PointF O(MotionEvent event) {
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

    public final boolean P(String fromNodeId, int fromSlot, String toNodeId, int toSlot) {
        List<NoCodeNodeConnection> list;
        NoCodeData noCodeData = this.f85274k;
        if (noCodeData != null && (list = noCodeData.connections) != null) {
            for (NoCodeNodeConnection noCodeNodeConnection : list) {
                if (noCodeNodeConnection != null && fromNodeId.equals(noCodeNodeConnection.fromNodeId) && toNodeId.equals(noCodeNodeConnection.toNodeId) && fromSlot == noCodeNodeConnection.fromSlot && toSlot == noCodeNodeConnection.toSlot) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean Q() {
        return (this.f85288y == null && this.f85289z == null) ? false : true;
    }

    public final E R(float x10, float y10) {
        for (int size = this.f85269f.size() - 1; size >= 0; size--) {
            E e10 = this.f85269f.get(size);
            if (e10 != null) {
                if (e10.r0((x10 - e10.getX()) / Math.max(1.0E-4f, e10.getScaleX()), (y10 - e10.getY()) / Math.max(1.0E-4f, e10.getScaleY()))) {
                    return e10;
                }
            }
        }
        return null;
    }

    public final boolean S(View socket, float rawX, float rawY) {
        int[] iArr = new int[2];
        socket.getLocationOnScreen(iArr);
        float k02 = Nc.b.k0(0.0f);
        int i10 = iArr[0];
        return rawX >= ((float) i10) - k02 && rawX <= ((float) (i10 + socket.getWidth())) + k02 && rawY >= ((float) iArr[1]) - k02 && rawY <= ((float) (iArr[1] + socket.getHeight())) + k02;
    }

    public boolean T() {
        return System.currentTimeMillis() - this.f85283t < 300;
    }

    public boolean U() {
        E e10 = this.f85278o;
        return (e10 == null || e10.getNode() == null || !this.f85278o.getNode().a0()) ? false : true;
    }

    public final boolean V(View view, MotionEvent motionEvent) {
        K k10 = (K) view;
        N7.c.Y();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            y0(k10, motionEvent.getRawX(), motionEvent.getRawY());
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                D0(motionEvent.getRawX(), motionEvent.getRawY());
                return true;
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        L(motionEvent.getRawX(), motionEvent.getRawY());
        return true;
    }

    public final void W() {
        n0();
        i0();
    }

    public final void X() {
        n0();
        i0();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        if (event.getPointerCount() <= 1) {
            return super.dispatchTouchEvent(event);
        }
        this.f85284u.onTouchEvent(event);
        h0();
        int actionMasked = event.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    PointF O10 = O(event);
                    float f10 = O10.f32425x;
                    float f11 = f10 - this.f85280q;
                    float f12 = O10.f32426y;
                    float f13 = f12 - this.f85281r;
                    this.f85280q = f10;
                    this.f85281r = f12;
                    k0(f11, f13);
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
            this.f85279p = false;
            return true;
        }
        PointF O11 = O(event);
        this.f85279p = true;
        this.f85280q = O11.f32425x;
        this.f85281r = O11.f32426y;
        return true;
    }

    public final void e0() {
        this.f85277n = false;
        this.f85262D = false;
        C0();
    }

    public final void f0() {
        f fVar;
        try {
            try {
                NoCodeGraph noCodeGraph = new NoCodeGraph();
                noCodeGraph.j(this.f85274k);
                X7.a.b(this.f85276m, noCodeGraph.h(), N7.c.t());
                this.f85274k.f78947b = false;
                N7.c.j0(new Runnable() {
                    @Override
                    public final void run() {
                        X.this.e0();
                    }
                });
                fVar = new f();
            } catch (Exception e10) {
                e10.printStackTrace();
                N7.c.j0(new Runnable() {
                    @Override
                    public final void run() {
                        X.this.e0();
                    }
                });
                fVar = new f();
            }
            K8.a.I(fVar);
        } catch (Throwable th2) {
            N7.c.j0(new Runnable() {
                @Override
                public final void run() {
                    X.this.e0();
                }
            });
            K8.a.I(new f());
            throw th2;
        }
    }

    public final NoCodeData g0(String inProjectPath) {
        NoCodeGraph e10 = NoCodeGraph.e(inProjectPath);
        NoCodeData d10 = e10 != null ? e10.d() : null;
        if (d10 == null) {
            d10 = ga.E.c();
        }
        d10.I();
        return d10;
    }

    public NoCodeData getGraphData() {
        return this.f85274k;
    }

    public long getLastInteractionTime() {
        return this.f85282s;
    }

    public List<E> getNodeViews() {
        return new SteppedArrayList(this.f85269f);
    }

    public float getPanX() {
        return this.f85266c;
    }

    public float getPanY() {
        return this.f85267d;
    }

    public float getScale() {
        return this.f85268e;
    }

    public E getSelectedNodeView() {
        return this.f85278o;
    }

    public final void h0() {
        this.f85282s = System.currentTimeMillis();
        F f10 = this.f85259A;
        if (f10 != null) {
            f10.c();
        }
    }

    public void i0() {
        NoCodeData noCodeData = this.f85274k;
        if (noCodeData != null) {
            noCodeData.f78948c = System.currentTimeMillis();
            removeCallbacks(this.f85263E);
            postDelayed(this.f85263E, 300L);
        }
        for (E e10 : this.f85269f) {
            if (e10 != null) {
                e10.Q0(this.f85274k);
                e10.T0(this.f85274k);
            }
        }
        E0();
        this.f85273j.invalidate();
    }

    public void j0() {
        E0();
        this.f85273j.invalidate();
    }

    public void k0(float dx, float dy) {
        this.f85266c += dx;
        this.f85267d += dy;
        this.f85283t = System.currentTimeMillis();
        r0(null);
        Iterator<E> it = this.f85269f.iterator();
        while (it.hasNext()) {
            it.next().P0();
        }
        E0();
        invalidate();
        this.f85273j.invalidate();
    }

    public void l0() {
        this.f85265b.setColor(Theme.i(Theme.T.NODEGRAPH_GRID));
        C13031m c13031m = this.f85273j;
        if (c13031m != null) {
            c13031m.e();
        }
        for (E e10 : this.f85269f) {
            if (e10 != null) {
                e10.M0();
            }
        }
        for (K k10 : this.f85271h) {
            if (k10 != null) {
                k10.h();
            }
        }
        for (K k11 : this.f85272i) {
            if (k11 != null) {
                k11.h();
            }
        }
        invalidate();
    }

    public void m0() {
        n0();
        i0();
    }

    public final void n0() {
        z();
        NoCodeData noCodeData = this.f85274k;
        if (noCodeData == null) {
            return;
        }
        noCodeData.I();
        ga.q.a();
        for (NoCodeNode noCodeNode : this.f85274k.f78946a) {
            E e10 = new E(getContext(), noCodeNode, this);
            this.f85269f.add(e10);
            this.f85270g.put(noCodeNode.B(), e10);
            addView(e10);
            e10.P0();
            e10.setPreviewEnabled(EditorSettings.a() != null && EditorSettings.a().materialGraphPreviewsEnabled);
            F f10 = this.f85259A;
            if (f10 != null) {
                e10.setPreviewBitmap(f10.b(noCodeNode.B()));
            }
            NoCodeSlot[] G10 = noCodeNode.G(this.f85274k);
            j jVar = new j(this.f85274k);
            if (G10 != null && G10.length > 0) {
                K[] kArr = new K[G10.length];
                for (int i10 = 0; i10 < G10.length; i10++) {
                    NoCodeSlot noCodeSlot = G10[i10];
                    int E10 = noCodeNode.E(this.f85274k, i10);
                    if (E10 >= 0) {
                        K k10 = new K(getContext());
                        ga.H b10 = jVar.b(noCodeNode, E10);
                        if (b10 == null) {
                            b10 = noCodeSlot != null ? noCodeSlot.type : ga.H.NUMBER;
                        }
                        k10.a(e10, true, E10, b10);
                        u(k10);
                        int k02 = Nc.b.k0(30.0f);
                        addView(k10, new FrameLayout.LayoutParams(k02, k02));
                        k10.bringToFront();
                        kArr[i10] = k10;
                        this.f85271h.add(k10);
                    }
                }
                e10.setInputSockets(kArr);
            }
            NoCodeSlot[] K10 = noCodeNode.K(this.f85274k);
            if (K10 != null && K10.length > 0) {
                K[] kArr2 = new K[K10.length];
                for (int i11 = 0; i11 < K10.length; i11++) {
                    NoCodeSlot noCodeSlot2 = K10[i11];
                    K k11 = new K(getContext());
                    ga.H t02 = noCodeNode.t0(i11, jVar);
                    if (t02 == null) {
                        t02 = noCodeSlot2 != null ? noCodeSlot2.type : ga.H.NUMBER;
                    }
                    k11.a(e10, false, i11, t02);
                    u(k11);
                    int k03 = Nc.b.k0(30.0f);
                    addView(k11, new FrameLayout.LayoutParams(k03, k03));
                    k11.bringToFront();
                    kArr2[i11] = k11;
                    this.f85271h.add(k11);
                }
                e10.setOutputSockets(kArr2);
            }
            if (!noCodeNode.c0() && !noCodeNode.a0() && noCodeNode.z0()) {
                K k12 = new K(getContext());
                k12.b(e10);
                u(k12);
                int k04 = Nc.b.k0(30.0f);
                addView(k12, new FrameLayout.LayoutParams(k04, k04));
                k12.bringToFront();
                this.f85272i.add(k12);
                e10.setBranchInputSocket(k12);
            }
            if (!noCodeNode.c0() && !noCodeNode.a0() && noCodeNode.A0()) {
                K k13 = new K(getContext());
                k13.c(e10);
                u(k13);
                int k05 = Nc.b.k0(30.0f);
                addView(k13, new FrameLayout.LayoutParams(k05, k05));
                k13.bringToFront();
                this.f85272i.add(k13);
                e10.setBranchOutputSocket(k13);
            }
        }
        this.f85273j.f(this.f85274k, this.f85270g);
        E0();
    }

    public final boolean o0(K socket) {
        E nodeView;
        if (this.f85274k == null || socket == null || (nodeView = socket.getNodeView()) == null || nodeView.getNode() == null) {
            return false;
        }
        final String B10 = nodeView.getNode().B();
        final int slotIndex = socket.getSlotIndex();
        if (socket.e() || (socket.g() && socket.getType() == ga.H.BRANCH)) {
            if (this.f85274k.branchConnections == null) {
                return false;
            }
            if (socket.e()) {
                slotIndex = -1;
            }
            return this.f85274k.branchConnections.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean Y10;
                    Y10 = X.Y(String.this, slotIndex, (NoCodeBranchConnection) obj);
                    return Y10;
                }
            });
        }
        if (socket.g() || socket.getType() != ga.H.BRANCH) {
            if (this.f85274k.connections == null) {
                return false;
            }
            return socket.g() ? this.f85274k.connections.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean a02;
                    a02 = X.a0(String.this, slotIndex, (NoCodeNodeConnection) obj);
                    return a02;
                }
            }) : this.f85274k.connections.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean b02;
                    b02 = X.b0(String.this, slotIndex, (NoCodeNodeConnection) obj);
                    return b02;
                }
            });
        }
        List<NoCodeBranchConnection> list = this.f85274k.branchConnections;
        if (list == null) {
            return false;
        }
        return list.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean Z10;
                Z10 = X.Z(String.this, slotIndex, (NoCodeBranchConnection) obj);
                return Z10;
            }
        });
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        D(canvas);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getPointerCount() > 1 || this.f85284u.isInProgress()) {
            return true;
        }
        if (ev.getActionMasked() == 0) {
            return R(ev.getX(), ev.getY()) == null && J(ev.getRawX(), ev.getRawY()) == null;
        }
        return false;
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            E0();
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        this.f85284u.onTouchEvent(event);
        h0();
        int actionMasked = event.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6 && event.getPointerCount() <= 2 && this.f85279p) {
                                this.f85279p = false;
                                return true;
                            }
                        } else if (event.getPointerCount() >= 2) {
                            PointF O10 = O(event);
                            this.f85279p = true;
                            this.f85280q = O10.f32425x;
                            this.f85281r = O10.f32426y;
                            return true;
                        }
                    }
                } else if (event.getPointerCount() >= 2) {
                    if (!this.f85279p) {
                        PointF O11 = O(event);
                        this.f85279p = true;
                        this.f85280q = O11.f32425x;
                        this.f85281r = O11.f32426y;
                    }
                    PointF O12 = O(event);
                    float f10 = O12.f32425x;
                    float f11 = f10 - this.f85280q;
                    float f12 = O12.f32426y;
                    float f13 = f12 - this.f85281r;
                    this.f85280q = f10;
                    this.f85281r = f12;
                    k0(f11, f13);
                    return true;
                }
            }
            if (this.f85279p) {
                this.f85279p = false;
                return true;
            }
        } else {
            if (event.getPointerCount() == 1 && R(event.getX(), event.getY()) == null && J(event.getRawX(), event.getRawY()) == null) {
                r0(null);
                return true;
            }
            if (event.getPointerCount() >= 2) {
                PointF O13 = O(event);
                this.f85279p = true;
                this.f85280q = O13.f32425x;
                this.f85281r = O13.f32426y;
                return true;
            }
        }
        return event.getPointerCount() > 1 || super.onTouchEvent(event);
    }

    public void p(NoCodeAttribute attribute) {
        if (this.f85274k == null || attribute == null) {
            return;
        }
        AttributeAccessNode attributeAccessNode = new AttributeAccessNode();
        String str = attribute.f78942id;
        if (str == null) {
            str = "";
        }
        attributeAccessNode.attributeId = str;
        q(attributeAccessNode);
    }

    public final void p0(final String nodeId, final int slotIndex) {
        List<NoCodeBranchConnection> list;
        NoCodeData noCodeData = this.f85274k;
        if (noCodeData == null || (list = noCodeData.branchConnections) == null) {
            return;
        }
        list.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean c02;
                c02 = X.c0(String.this, slotIndex, (NoCodeBranchConnection) obj);
                return c02;
            }
        });
    }

    public void q(NoCodeNode node) {
        if (this.f85274k == null || node == null) {
            return;
        }
        if (node.a0() && this.f85274k.g0() != null) {
            N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE));
            return;
        }
        PointF u02 = u0(getWidth() * 0.5f, getHeight() * 0.5f);
        node.v0(u02.f32425x, u02.f32426y, getContext());
        this.f85274k.g(node);
        n0();
        i0();
    }

    public final void q0(final String nodeId, final int slotIndex) {
        List<NoCodeNodeConnection> list = this.f85274k.connections;
        if (list == null) {
            return;
        }
        list.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean d02;
                d02 = X.d0(String.this, slotIndex, (NoCodeNodeConnection) obj);
                return d02;
            }
        });
    }

    public void r(ga.p nodeInterface) {
        if (this.f85274k == null || nodeInterface == null) {
            return;
        }
        q(nodeInterface.a());
    }

    public void r0(E nodeView) {
        E e10 = this.f85278o;
        if (e10 == nodeView) {
            return;
        }
        if (e10 != null) {
            e10.setSelected(false);
        }
        this.f85278o = nodeView;
        if (nodeView != null) {
            nodeView.setSelected(true);
        }
    }

    public void s(NoCodeAttribute attribute) {
        if (this.f85274k == null || attribute == null) {
            return;
        }
        SetAttributeNode setAttributeNode = new SetAttributeNode();
        String str = attribute.f78942id;
        if (str == null) {
            str = "";
        }
        setAttributeNode.attributeId = str;
        q(setAttributeNode);
    }

    public final void s0() {
        NoCodeData noCodeData = this.f85274k;
        if (noCodeData == null) {
            return;
        }
        if (this.f85288y != null) {
            if (noCodeData.connections == null) {
                noCodeData.connections = new SteppedArrayList();
            }
            NoCodeNodeConnection noCodeNodeConnection = this.f85288y;
            q0(noCodeNodeConnection.toNodeId, noCodeNodeConnection.toSlot);
            List<NoCodeNodeConnection> list = this.f85274k.connections;
            NoCodeNodeConnection noCodeNodeConnection2 = this.f85288y;
            list.add(new NoCodeNodeConnection(noCodeNodeConnection2.fromNodeId, noCodeNodeConnection2.fromSlot, noCodeNodeConnection2.toNodeId, noCodeNodeConnection2.toSlot));
        }
        if (this.f85289z != null) {
            NoCodeData noCodeData2 = this.f85274k;
            if (noCodeData2.branchConnections == null) {
                noCodeData2.branchConnections = new SteppedArrayList();
            }
            NoCodeBranchConnection noCodeBranchConnection = this.f85289z;
            p0(noCodeBranchConnection.toNodeId, noCodeBranchConnection.toSlot);
            List<NoCodeBranchConnection> list2 = this.f85274k.branchConnections;
            NoCodeBranchConnection noCodeBranchConnection2 = this.f85289z;
            list2.add(new NoCodeBranchConnection(noCodeBranchConnection2.fromNodeId, noCodeBranchConnection2.fromSlot, noCodeBranchConnection2.toNodeId, noCodeBranchConnection2.toSlot));
        }
    }

    public void setCompileStatusView(TextView view) {
        this.f85260B = view;
        if (view != null) {
            view.bringToFront();
        }
        C0();
    }

    public void setScale(float newScale) {
        float f10 = this.f85268e;
        float E10 = Nc.b.E(0.1f, newScale, 1.6f);
        if (E10 == f10) {
            return;
        }
        float width = getWidth() * 0.5f;
        float height = getHeight() * 0.5f;
        if (width > 0.0f && height > 0.0f) {
            float f11 = (width - this.f85266c) / f10;
            float f12 = (height - this.f85267d) / f10;
            this.f85266c = width - (f11 * E10);
            this.f85267d = height - (f12 * E10);
        }
        this.f85268e = E10;
        C13031m c13031m = this.f85273j;
        if (c13031m != null) {
            c13031m.setGraphScale(E10);
        }
        this.f85283t = System.currentTimeMillis();
        r0(null);
        Iterator<E> it = this.f85269f.iterator();
        while (it.hasNext()) {
            it.next().P0();
        }
        E0();
        invalidate();
        this.f85273j.invalidate();
    }

    public final void t(List<C12908b> items) {
        if (items == null) {
            return;
        }
        List<C14205b.c> c10 = C14205b.c();
        for (int i10 = 0; i10 < c10.size(); i10++) {
            C14205b.c cVar = c10.get(i10);
            if (cVar != null) {
                C12908b I10 = I(new String[]{"Actions", "Component", cVar.f96915a, cVar.f96916b}, items);
                (I10 != null ? I10.f84530c : items).add(new C12908b(cVar.f96917c, new i(cVar)));
            }
        }
    }

    public void t0() {
        if (this.f85274k == null) {
            return;
        }
        removeCallbacks(this.f85263E);
        if (this.f85276m != null) {
            if (this.f85262D || this.f85277n) {
                return;
            }
            this.f85262D = true;
            this.f85277n = true;
            this.f85274k.e1();
            this.f85274k.y0();
            new Thread(new Runnable() {
                @Override
                public final void run() {
                    X.this.f0();
                }
            }).start();
            return;
        }
        if (this.f85275l == null || this.f85262D) {
            return;
        }
        this.f85262D = true;
        this.f85274k.e1();
        this.f85274k.y0();
        this.f85275l.setNoCodeData(this.f85274k);
        this.f85274k.f78947b = false;
        this.f85275l.reloadInspector();
        this.f85262D = false;
        C0();
    }

    public final void u(K socket) {
        socket.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean V10;
                V10 = X.this.V(view, motionEvent);
                return V10;
            }
        });
    }

    public PointF u0(float sx, float sy) {
        float f10 = sx - this.f85266c;
        float f11 = this.f85268e;
        return new PointF(f10 / f11, (sy - this.f85267d) / f11);
    }

    public void v(NoCodeExecutor executor) {
        removeCallbacks(this.f85263E);
        this.f85276m = null;
        this.f85277n = false;
        this.f85275l = executor;
        if (executor == null) {
            this.f85274k = null;
            z();
            F f10 = this.f85259A;
            if (f10 != null) {
                f10.a(null, null);
                return;
            }
            return;
        }
        NoCodeData noCodeData = executor.getNoCodeData();
        this.f85274k = noCodeData;
        if (noCodeData != null) {
            noCodeData.X0(new Runnable() {
                @Override
                public final void run() {
                    X.this.W();
                }
            });
        }
        F f11 = this.f85259A;
        if (f11 != null) {
            f11.a(null, this.f85274k);
        }
        n0();
        C0();
    }

    public void v0(View anchor) {
        if (this.f85274k == null) {
            return;
        }
        ga.q.a();
        List<C12908b> x10 = x();
        if (x10 == null) {
            return;
        }
        x10.add(0, new C12908b(R.drawable.search_store_icon_v2, "Search", new g()));
        Y6.a.F1(anchor, C15147a.e.Above, x10);
    }

    public void w(String inProjectPath) {
        removeCallbacks(this.f85263E);
        this.f85276m = inProjectPath;
        this.f85277n = false;
        this.f85275l = null;
        if (inProjectPath == null || inProjectPath.isEmpty()) {
            this.f85274k = null;
            z();
            F f10 = this.f85259A;
            if (f10 != null) {
                f10.a(null, null);
                return;
            }
            return;
        }
        NoCodeData g02 = g0(inProjectPath);
        this.f85274k = g02;
        if (g02 != null) {
            g02.X0(new Runnable() {
                @Override
                public final void run() {
                    X.this.X();
                }
            });
        }
        F f11 = this.f85259A;
        if (f11 != null) {
            f11.a(null, this.f85274k);
        }
        n0();
        C0();
    }

    public void w0(View anchor) {
        NoCodeData noCodeData = this.f85274k;
        if (noCodeData == null || anchor == null) {
            return;
        }
        C13030l.U1(anchor, C15147a.e.Below, this, noCodeData);
    }

    public final List<C12908b> x() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < ga.o.b(); i10++) {
            ga.p e10 = ga.o.e(i10);
            if (e10 != null && e10.g()) {
                String e11 = e10.e();
                C12908b I10 = (e11 == null || !e11.contains("/")) ? (e11 == null || e11.isEmpty()) ? null : I(new String[]{e11}, steppedArrayList) : I(e11.split("/"), steppedArrayList);
                List<C12908b> list = I10 != null ? I10.f84530c : steppedArrayList;
                String f10 = e10.f();
                NoCodeNode a10 = e10.a();
                if (a10 != null) {
                    f10 = (EditorSettings.a() == null || !EditorSettings.a().translateNoCodeV2) ? a10.N(this.f85274k) : a10.x(this.f85274k);
                }
                list.add(new C12908b(f10, new h(e10)));
            }
        }
        t(steppedArrayList);
        return steppedArrayList;
    }

    public void x0(View anchor) {
        NoCodeData noCodeData = this.f85274k;
        if (noCodeData == null || anchor == null) {
            return;
        }
        C13030l.W1(anchor, C15147a.e.Below, this, noCodeData);
    }

    public final boolean y(NoCodeNode from, int fromSlot, NoCodeNode to, int toSlot) {
        return N(from, fromSlot, to, toSlot) == null;
    }

    public void y0(K from, float rawX, float rawY) {
        K i02;
        this.f85285v = from;
        this.f85286w = from;
        h0();
        this.f85288y = null;
        this.f85289z = null;
        this.f85287x = false;
        if (from != null && from.g() && this.f85274k != null) {
            E nodeView = from.getNodeView();
            NoCodeNode node = nodeView != null ? nodeView.getNode() : null;
            if (node != null) {
                if (from.e() || from.getType() == ga.H.BRANCH) {
                    NoCodeBranchConnection F10 = F(this.f85274k, node.B(), from.e() ? -1 : from.getSlotIndex());
                    if (F10 != null) {
                        this.f85289z = new NoCodeBranchConnection(F10.fromNodeId, F10.fromSlot, F10.toNodeId, F10.toSlot);
                        p0(F10.toNodeId, F10.toSlot);
                        E e10 = this.f85270g.get(F10.fromNodeId);
                        if (e10 != null) {
                            int i10 = F10.fromSlot;
                            K branchOutputSocket = i10 == -1 ? e10.getBranchOutputSocket() : e10.i0(i10);
                            if (branchOutputSocket != null) {
                                this.f85286w = branchOutputSocket;
                            }
                        }
                    }
                } else {
                    NoCodeNodeConnection G10 = G(this.f85274k, node.B(), from.getSlotIndex());
                    if (G10 != null) {
                        this.f85288y = new NoCodeNodeConnection(G10.fromNodeId, G10.fromSlot, G10.toNodeId, G10.toSlot);
                        q0(G10.toNodeId, G10.toSlot);
                        E e11 = this.f85270g.get(G10.fromNodeId);
                        if (e11 != null && (i02 = e11.i0(G10.fromSlot)) != null) {
                            this.f85286w = i02;
                        }
                    }
                }
            }
        }
        C13031m c13031m = this.f85273j;
        if (c13031m != null) {
            c13031m.invalidate();
        }
        PointF z02 = z0(rawX, rawY);
        C13031m c13031m2 = this.f85273j;
        K k10 = this.f85286w;
        if (k10 != null) {
            from = k10;
        }
        c13031m2.g(from, z02.f32425x, z02.f32426y);
    }

    public final void z() {
        Iterator<E> it = this.f85269f.iterator();
        while (it.hasNext()) {
            removeView(it.next());
        }
        this.f85269f.clear();
        this.f85270g.clear();
        Iterator<K> it2 = this.f85271h.iterator();
        while (it2.hasNext()) {
            removeView(it2.next());
        }
        this.f85271h.clear();
        Iterator<K> it3 = this.f85272i.iterator();
        while (it3.hasNext()) {
            removeView(it3.next());
        }
        this.f85272i.clear();
        C13031m c13031m = this.f85273j;
        if (c13031m != null) {
            c13031m.f(null, null);
        }
        this.f85278o = null;
        C0();
    }

    public final PointF z0(float rawX, float rawY) {
        getLocationOnScreen(new int[2]);
        return new PointF(rawX - r0[0], rawY - r0[1]);
    }

    public X(Context context, AttributeSet attrs) {
        super(context, attrs);
        Paint paint = new Paint(1);
        this.f85265b = paint;
        this.f85268e = 1.0f;
        this.f85269f = new SteppedArrayList();
        this.f85270g = new HashMap();
        this.f85271h = new SteppedArrayList();
        this.f85272i = new SteppedArrayList();
        this.f85263E = new a();
        this.f85264F = new b();
        setWillNotDraw(false);
        setMotionEventSplittingEnabled(false);
        setClipChildren(false);
        setClipToPadding(false);
        paint.setColor(Theme.i(Theme.T.NODEGRAPH_GRID));
        paint.setStrokeWidth(1.0f);
        C13031m c13031m = new C13031m(context);
        this.f85273j = c13031m;
        addView(c13031m, new FrameLayout.LayoutParams(-1, -1));
        this.f85273j.setClickable(false);
        this.f85273j.setFocusable(false);
        this.f85273j.setGraphScale(this.f85268e);
        this.f85259A = new F(this);
        this.f85284u = new ScaleGestureDetector(context, new c());
    }
}
