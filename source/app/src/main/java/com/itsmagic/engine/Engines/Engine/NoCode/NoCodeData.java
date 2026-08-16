package com.itsmagic.engine.Engines.Engine.NoCode;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import N9.a;
import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.NoCode.Components.NoCodeFileExecutor;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeBranchConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeVariable;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Custom.BaseCustomEventNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files.RawCubemapNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files.RawObjectFileNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files.RawTextureNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.Material.RawBlendingModeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.Material.RawBooleanNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.Material.RawUvSourceNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawColorNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawFloat2Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawFloat3Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawFloat4Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawGradientNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawMat3Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawMat4Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawNumberNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawObjectNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawSliderNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawTextNode;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ec.EnumC13053a;
import ga.C13310f;
import ga.F;
import ga.H;
import ga.y;
import j9.C13813a;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;
import org.eclipse.jdt.core.Signature;

public class NoCodeData {

    public static final int f78945u = Integer.MIN_VALUE;

    public transient boolean f78947b;

    public transient long f78948c;

    public transient GameObject f78949d;

    public transient Component f78950e;

    public transient boolean f78951f;

    public transient boolean f78952g;

    public transient boolean f78953h;

    public transient p f78957l;

    public transient Runnable f78965t;

    @Expose
    public List<NoCodeNodeRecord> serializedNodes = new SteppedArrayList();

    @Expose
    public List<NoCodeNodeConnection> connections = new SteppedArrayList();

    @Expose
    public List<NoCodeBranchConnection> branchConnections = new SteppedArrayList();

    @Expose
    public List<NoCodeVariable> variables = new SteppedArrayList();

    @Expose
    public List<NoCodeAttribute> attributes = new SteppedArrayList();

    public transient List<NoCodeNode> f78946a = new SteppedArrayList();

    public transient boolean f78954i = true;

    public transient boolean f78955j = true;

    public transient long f78956k = 1;

    public transient long f78958m = 1;

    public transient Map<Long, p> f78959n = new HashMap();

    public transient Map<String, Long> f78960o = new HashMap();

    public transient Map<String, Integer> f78961p = new HashMap();

    public transient Map<String, Long> f78962q = new HashMap();

    public transient Map<String, Map<Integer, NoCodeVariable>> f78963r = new HashMap();

    public transient Map<String, Map<Integer, NoCodeVariable>> f78964s = new HashMap();

    public class a implements D5.h {

        public final RawTextureNode f78966a;

        public final q f78967b;

        public a(final RawTextureNode val$n, final q val$listener) {
            this.f78966a = val$n;
            this.f78967b = val$listener;
        }

        @Override
        public Variable get() {
            String str = this.f78966a.textureFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f78966a.I0(variable.str_value);
                NoCodeData.this.y0();
                q qVar = this.f78967b;
                if (qVar != null) {
                    qVar.a();
                }
            }
        }
    }

    public class b implements D5.h {

        public final RawCubemapNode f78969a;

        public final q f78970b;

        public b(final RawCubemapNode val$n, final q val$listener) {
            this.f78969a = val$n;
            this.f78970b = val$listener;
        }

        @Override
        public Variable get() {
            String str = this.f78969a.cubemapFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f78969a.H0(variable.str_value);
                NoCodeData.this.y0();
                q qVar = this.f78970b;
                if (qVar != null) {
                    qVar.a();
                }
            }
        }
    }

    public class c implements a.b {

        public final q f78972a;

        public c(final q val$listener) {
            this.f78972a = val$listener;
        }

        @Override
        public void a() {
            NoCodeData.this.y0();
            q qVar = this.f78972a;
            if (qVar != null) {
                qVar.a();
            }
        }
    }

    public class d implements D5.h {

        public final Vector4 f78974a;

        public final int f78975b;

        public final q f78976c;

        public d(final Vector4 val$vector, final int val$component, final q val$listener) {
            this.f78974a = val$vector;
            this.f78975b = val$component;
            this.f78976c = val$listener;
        }

        @Override
        public Variable get() {
            Vector4 vector4 = this.f78974a;
            if (vector4 == null) {
                return new Variable("", 0.0f);
            }
            int i10 = this.f78975b;
            return i10 == 0 ? new Variable("", vector4.getX()) : i10 == 1 ? new Variable("", vector4.getY()) : i10 == 2 ? new Variable("", vector4.getZ()) : new Variable("", vector4.f());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Vector4 vector4 = this.f78974a;
                if (vector4 != null) {
                    if (this.f78975b == 0) {
                        vector4.n(variable.float_value);
                    }
                    if (this.f78975b == 1) {
                        this.f78974a.o(variable.float_value);
                    }
                    if (this.f78975b == 2) {
                        this.f78974a.p(variable.float_value);
                    }
                    if (this.f78975b == 3) {
                        this.f78974a.m(variable.float_value);
                    }
                }
                NoCodeData.this.y0();
                q qVar = this.f78976c;
                if (qVar != null) {
                    qVar.a();
                }
            }
        }
    }

    public static class e {

        public static final int[] f78978a;

        static {
            int[] iArr = new int[H.values().length];
            f78978a = iArr;
            try {
                iArr[H.FLOAT2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78978a[H.FLOAT3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f78978a[H.DIRECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f78978a[H.FLOAT4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f78978a[H.QUATERNION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f78978a[H.COLOR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class f extends r {

        public final RawNumberNode f78979c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(q listener, final RawNumberNode val$n) {
            super(NoCodeData.this, listener, null);
            this.f78979c = val$n;
        }

        @Override
        public float a() {
            return this.f78979c.value;
        }

        @Override
        public void b(float value) {
            this.f78979c.value = value;
        }
    }

    public class g extends r {

        public final RawSliderNode f78981c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(q listener, final RawSliderNode val$n) {
            super(NoCodeData.this, listener, null);
            this.f78981c = val$n;
        }

        @Override
        public float a() {
            return this.f78981c.value;
        }

        @Override
        public void b(float value) {
            this.f78981c.value = value;
        }
    }

    public class h implements D5.h {

        public final RawTextNode f78983a;

        public final q f78984b;

        public h(final RawTextNode val$n, final q val$listener) {
            this.f78983a = val$n;
            this.f78984b = val$listener;
        }

        @Override
        public Variable get() {
            String str = this.f78983a.value;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            this.f78983a.value = variable != null ? variable.str_value : "";
            NoCodeData.this.y0();
            q qVar = this.f78984b;
            if (qVar != null) {
                qVar.a();
            }
        }
    }

    public class i implements D5.k {

        public final RawObjectNode f78986a;

        public final q f78987b;

        public i(final RawObjectNode val$n, final q val$listener) {
            this.f78986a = val$n;
            this.f78987b = val$listener;
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            return this.f78986a.H0();
        }

        @Override
        public String getExtraTittle() {
            return " (Object)";
        }

        @Override
        public GameObject getParent() {
            return null;
        }

        @Override
        public void set(GameObject gameObject) {
            this.f78986a.K0(gameObject);
            NoCodeData.this.y0();
            q qVar = this.f78987b;
            if (qVar != null) {
                qVar.a();
            }
        }
    }

    public class j implements D5.h {

        public final RawObjectFileNode f78989a;

        public final q f78990b;

        public j(final RawObjectFileNode val$n, final q val$listener) {
            this.f78989a = val$n;
            this.f78990b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f78989a.H0());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f78989a.I0(variable.str_value);
                NoCodeData.this.y0();
                q qVar = this.f78990b;
                if (qVar != null) {
                    qVar.a();
                }
            }
        }
    }

    public class k implements D5.h {

        public final RawColorNode f78992a;

        public final q f78993b;

        public k(final RawColorNode val$n, final q val$listener) {
            this.f78992a = val$n;
            this.f78993b = val$listener;
        }

        @Override
        public Variable get() {
            ColorINT colorINT = this.f78992a.value;
            return new Variable("", colorINT != null ? colorINT.clone() : new ColorINT(1.0f, 1.0f, 1.0f, 1.0f));
        }

        @Override
        public void set(Variable variable) {
            ColorINT colorINT;
            if (variable == null || (colorINT = variable.color_value) == null) {
                return;
            }
            this.f78992a.value = colorINT.clone();
            NoCodeData.this.y0();
            q qVar = this.f78993b;
            if (qVar != null) {
                qVar.a();
            }
        }
    }

    public class l implements D5.h {

        public final RawBooleanNode f78995a;

        public final q f78996b;

        public l(final RawBooleanNode val$n, final q val$listener) {
            this.f78995a = val$n;
            this.f78996b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", String.valueOf(this.f78995a.value));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                RawBooleanNode rawBooleanNode = this.f78995a;
                Boolean bool = variable.booolean_value;
                rawBooleanNode.value = bool != null ? bool.booleanValue() : "true".equalsIgnoreCase(variable.str_value);
                NoCodeData.this.y0();
                q qVar = this.f78996b;
                if (qVar != null) {
                    qVar.a();
                }
            }
        }
    }

    public class m extends c.n0<EnumC13053a> {

        public final RawBlendingModeNode f78998a;

        public final q f78999b;

        public m(final RawBlendingModeNode val$n, final q val$listener) {
            this.f78998a = val$n;
            this.f78999b = val$listener;
        }

        @Override
        public void a() {
            NoCodeData.this.y0();
            q qVar = this.f78999b;
            if (qVar != null) {
                qVar.a();
            }
        }

        @Override
        public void set(EnumC13053a value) {
            RawBlendingModeNode rawBlendingModeNode = this.f78998a;
            if (value == null) {
                value = EnumC13053a.OPAQUE;
            }
            rawBlendingModeNode.value = value;
        }
    }

    public class n extends c.n0<cc.e> {

        public final RawUvSourceNode f79001a;

        public final q f79002b;

        public n(final RawUvSourceNode val$n, final q val$listener) {
            this.f79001a = val$n;
            this.f79002b = val$listener;
        }

        @Override
        public void a() {
            NoCodeData.this.y0();
            q qVar = this.f79002b;
            if (qVar != null) {
                qVar.a();
            }
        }

        @Override
        public void set(cc.e value) {
            RawUvSourceNode rawUvSourceNode = this.f79001a;
            if (value == null) {
                value = cc.e.Vertex;
            }
            rawUvSourceNode.value = value;
        }
    }

    public enum o {
        WAITING,
        CAUGHT,
        FINISHED
    }

    public interface q {
        void a();
    }

    public abstract class r implements D5.h {

        public final q f79014a;

        public r(NoCodeData noCodeData, q qVar, f fVar) {
            this(qVar);
        }

        public abstract float a();

        public abstract void b(float value);

        @Override
        public Variable get() {
            return new Variable("", a());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                b(variable.float_value);
                NoCodeData.this.y0();
                q qVar = this.f79014a;
                if (qVar != null) {
                    qVar.a();
                }
            }
        }

        public r(q listener) {
            this.f79014a = listener;
        }
    }

    public static boolean t0(Long l10, Map.Entry entry) {
        return l10.equals(entry.getValue());
    }

    public static boolean u0(NoCodeNode noCodeNode, NoCodeNodeConnection noCodeNodeConnection) {
        return noCodeNode.B().equals(noCodeNodeConnection.fromNodeId) || noCodeNode.B().equals(noCodeNodeConnection.toNodeId);
    }

    public static boolean v0(NoCodeNode noCodeNode, NoCodeBranchConnection noCodeBranchConnection) {
        return noCodeNode.B().equals(noCodeBranchConnection.fromNodeId) || noCodeNode.B().equals(noCodeBranchConnection.toNodeId);
    }

    public static boolean w0(NoCodeNode noCodeNode, NoCodeVariable noCodeVariable) {
        return noCodeNode.B().equals(noCodeVariable.ownerNodeId);
    }

    public final boolean A(NoCodeNode node, p context, Long operationId) {
        if (node == null) {
            return false;
        }
        if (operationId != null && operationId.longValue() > 0) {
            this.f78962q.put(node.B(), operationId);
        }
        p pVar = this.f78957l;
        if (context == null) {
            context = pVar;
        }
        this.f78957l = context;
        try {
            return node.o();
        } finally {
            this.f78957l = pVar;
        }
    }

    public String A0() {
        return Tc.b.L();
    }

    public void B(Class<? extends NoCodeNode> eventClass, C13813a collision) {
        if (eventClass == null || collision == null) {
            return;
        }
        I();
        a1();
        for (int i10 = 0; i10 < this.f78946a.size(); i10++) {
            NoCodeNode noCodeNode = this.f78946a.get(i10);
            if (noCodeNode != null && eventClass.isInstance(noCodeNode) && noCodeNode.d0() && (noCodeNode instanceof Pa.c)) {
                ((Pa.a) noCodeNode).G0(collision);
            }
        }
    }

    public final boolean B0(List<NoCodeNode> targetNodes) {
        if (targetNodes == null || targetNodes.size() < 2) {
            return false;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList(targetNodes.size());
        HashSet hashSet = new HashSet();
        boolean z10 = false;
        for (int size = targetNodes.size() - 1; size >= 0; size--) {
            NoCodeNode noCodeNode = targetNodes.get(size);
            if (noCodeNode != null) {
                String B10 = noCodeNode.B();
                if (B10 == null || B10.isEmpty()) {
                    steppedArrayList.add(0, noCodeNode);
                } else if (hashSet.add(B10)) {
                    steppedArrayList.add(0, noCodeNode);
                }
            }
            z10 = true;
        }
        if (z10) {
            targetNodes.clear();
            targetNodes.addAll(steppedArrayList);
        }
        return z10;
    }

    public void C(String functionName, Object... args) {
        if (functionName == null || functionName.trim().isEmpty()) {
            return;
        }
        I();
        a1();
        for (int i10 = 0; i10 < this.f78946a.size(); i10++) {
            NoCodeNode noCodeNode = this.f78946a.get(i10);
            if ((noCodeNode instanceof BaseCustomEventNode) && noCodeNode.d0()) {
                ((BaseCustomEventNode) noCodeNode).H0(functionName, args);
            }
        }
    }

    public void C0() {
        y0();
        Runnable runnable = this.f78965t;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void D(Class<? extends NoCodeNode> eventClass, C13813a collision) {
        if (eventClass == null || collision == null) {
            return;
        }
        I();
        a1();
        for (int i10 = 0; i10 < this.f78946a.size(); i10++) {
            NoCodeNode noCodeNode = this.f78946a.get(i10);
            if (noCodeNode != null && eventClass.isInstance(noCodeNode) && noCodeNode.d0() && (noCodeNode instanceof Pa.d)) {
                ((Pa.a) noCodeNode).G0(collision);
            }
        }
    }

    public void D0() {
        I();
        k();
        this.f78952g = true;
        for (NoCodeNode noCodeNode : this.f78946a) {
            if (noCodeNode != null) {
                noCodeNode.j(this);
                noCodeNode.s0();
                noCodeNode.i0();
            }
        }
    }

    public void E(Class<? extends NoCodeNode> eventClass) {
        if (eventClass == null) {
            return;
        }
        I();
        a1();
        for (int i10 = 0; i10 < this.f78946a.size(); i10++) {
            NoCodeNode noCodeNode = this.f78946a.get(i10);
            if (noCodeNode != null && eventClass.isInstance(noCodeNode) && noCodeNode.d0() && (noCodeNode instanceof La.a)) {
                ((La.a) noCodeNode).G0();
            }
        }
    }

    public void E0() {
        I();
        for (NoCodeNode noCodeNode : this.f78946a) {
            if (noCodeNode != null) {
                noCodeNode.j0();
                noCodeNode.s0();
            }
        }
        k();
        this.f78952g = false;
        this.f78951f = false;
        this.f78949d = null;
    }

    public void F(NoCodeNode ownerNode) {
        G(ownerNode, P0(ownerNode));
    }

    public final Object F0(NoCodeVariable variable, Object value, H desiredType) {
        if (value == null || variable == null) {
            return value;
        }
        switch (e.f78978a[((desiredType == null || desiredType == H.DYNAMIC) ? q0(value) : desiredType).ordinal()]) {
            case 1:
                ga.m.m0(value, variable.f79034b);
                return variable.f79034b;
            case 2:
            case 3:
                ga.m.o0(value, variable.f79035c);
                return variable.f79035c;
            case 4:
                ga.m.q0(value, variable.f79036d);
                return variable.f79036d;
            case 5:
                ga.m.g0(value, variable.f79037e);
                return variable.f79037e;
            case 6:
                ga.m.R(value, variable.f79038f);
                return variable.f79038f;
            default:
                return ga.m.c(value, desiredType);
        }
    }

    public final void G(NoCodeNode ownerNode, p context) {
        NoCodeNode C10;
        if (ownerNode == null || (C10 = ownerNode.C()) == null) {
            return;
        }
        Long Q02 = Q0(ownerNode, context);
        if (Q02 == null) {
            Q02 = this.f78960o.get(C10.B());
        }
        if (p(ownerNode, C10, context, Q02) != o.FINISHED) {
            return;
        }
        Y(Q02, C10);
        b1(C10);
    }

    public void G0(NoCodeNode node) {
        if (node == null) {
            return;
        }
        H0(node, node.C(), u());
    }

    public void H() {
        if (this.attributes == null) {
            this.attributes = new SteppedArrayList();
        }
        for (NoCodeAttribute noCodeAttribute : this.attributes) {
            if (noCodeAttribute != null) {
                noCodeAttribute.e();
            }
        }
    }

    public final void H0(NoCodeNode node, NoCodeNode rootEvent, p context) {
        NoCodeNode V10;
        if (node == null) {
            return;
        }
        if (context == null) {
            context = new p(null);
        }
        NoCodeSlot[] F10 = node.F();
        if (F10 == null) {
            return;
        }
        context.f79010g++;
        for (int i10 = 0; i10 < F10.length; i10++) {
            try {
                NoCodeSlot noCodeSlot = F10[i10];
                if (noCodeSlot != null && noCodeSlot.type != H.BRANCH) {
                    NoCodeNodeConnection Q10 = Q(node.B(), i10);
                    if (Q10 != null && (V10 = V(Q10.fromNodeId)) != null) {
                        J(V10, rootEvent != null ? rootEvent : node, context, Integer.MIN_VALUE);
                    }
                    m0(node, noCodeSlot);
                }
            } catch (Throwable th2) {
                context.f79010g--;
                throw th2;
            }
        }
        context.f79010g--;
    }

    public void I() {
        NoCodeNode c10;
        ga.q.a();
        if (this.f78946a == null) {
            this.f78946a = new SteppedArrayList();
        }
        if (this.f78953h) {
            if (B0(this.f78946a)) {
                z0();
                f1();
                return;
            }
            return;
        }
        if (!this.f78946a.isEmpty()) {
            B0(this.f78946a);
            for (NoCodeNode noCodeNode : this.f78946a) {
                if (noCodeNode != null) {
                    noCodeNode.j(this);
                }
            }
            this.f78953h = true;
            z0();
            return;
        }
        if (this.serializedNodes == null) {
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (NoCodeNodeRecord noCodeNodeRecord : this.serializedNodes) {
            if (noCodeNodeRecord != null && (c10 = ga.o.c(noCodeNodeRecord.serializedType, noCodeNodeRecord.data)) != null) {
                steppedArrayList.add(c10);
            }
        }
        B0(steppedArrayList);
        for (NoCodeNode noCodeNode2 : steppedArrayList) {
            if (noCodeNode2 != null) {
                noCodeNode2.j(this);
                noCodeNode2.s0();
                if (this.f78952g) {
                    noCodeNode2.i0();
                }
                this.f78946a.add(noCodeNode2);
            }
        }
        this.f78953h = true;
        z0();
        f1();
    }

    public final void I0() {
        String str;
        if (this.f78955j) {
            if (this.f78963r == null) {
                this.f78963r = new HashMap();
            }
            if (this.f78964s == null) {
                this.f78964s = new HashMap();
            }
            this.f78963r.clear();
            this.f78964s.clear();
            List<NoCodeVariable> list = this.variables;
            if (list != null) {
                for (NoCodeVariable noCodeVariable : list) {
                    if (noCodeVariable != null && (str = noCodeVariable.ownerNodeId) != null) {
                        Map<String, Map<Integer, NoCodeVariable>> map = noCodeVariable.input ? this.f78963r : this.f78964s;
                        Map<Integer, NoCodeVariable> map2 = map.get(str);
                        if (map2 == null) {
                            map2 = new HashMap<>();
                            map.put(noCodeVariable.ownerNodeId, map2);
                        }
                        map2.put(Integer.valueOf(noCodeVariable.slotIndex), noCodeVariable);
                    }
                }
            }
            this.f78955j = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean J(NoCodeNode noCodeNode, NoCodeNode noCodeNode2, p pVar, int i10) {
        if (noCodeNode == null) {
            return false;
        }
        Object[] objArr = 0;
        if (pVar == null) {
            pVar = new p(objArr == true ? 1 : 0);
        }
        String B10 = noCodeNode.B();
        if (s0(pVar, B10)) {
            return false;
        }
        p0(pVar.f79005b, B10);
        p0(pVar.f79004a, B10);
        long j10 = pVar.f79011h;
        if (j10 > 0) {
            this.f78962q.put(B10, Long.valueOf(j10));
        }
        if (noCodeNode2 == null) {
            noCodeNode2 = noCodeNode;
        }
        H0(noCodeNode, noCodeNode2, pVar);
        noCodeNode.k(noCodeNode2);
        p pVar2 = this.f78957l;
        this.f78957l = pVar;
        String B11 = noCodeNode.B();
        Integer num = pVar.f79008e.containsKey(B11) ? pVar.f79008e.get(B11) : null;
        if (i10 != Integer.MIN_VALUE) {
            pVar.f79008e.put(B11, Integer.valueOf(i10));
        } else {
            pVar.f79008e.remove(B11);
        }
        try {
            noCodeNode.n0();
            this.f78957l = pVar2;
            v(pVar.f79005b, B10);
            if (num != null) {
                pVar.f79008e.put(B11, num);
                return true;
            }
            pVar.f79008e.remove(B11);
            return true;
        } catch (Throwable th2) {
            this.f78957l = pVar2;
            v(pVar.f79005b, B10);
            if (num != null) {
                pVar.f79008e.put(B11, num);
            } else {
                pVar.f79008e.remove(B11);
            }
            throw th2;
        }
    }

    public final void J0(NoCodeNode ownerNode, NoCodeNode nextNode, p context) {
        if (ownerNode == null || nextNode == null || context == null) {
            return;
        }
        String B10 = ownerNode.B();
        String B11 = nextNode.B();
        context.f79006c.merge(B10, 1, new C13310f());
        ArrayDeque<String> arrayDeque = context.f79007d.get(B11);
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque<>();
            context.f79007d.put(B11, arrayDeque);
        }
        arrayDeque.addLast(B10);
    }

    public void K(NoCodeNode ownerNode) {
        L(ownerNode, P0(ownerNode));
    }

    public void K0(NoCodeNode ownerNode, Object value) {
        L0(W(ownerNode), value);
    }

    public final void L(NoCodeNode ownerNode, p context) {
        if (ownerNode == null) {
            return;
        }
        l(ownerNode, Q0(ownerNode, context));
        if (context == null || !context.a()) {
            if (this.branchConnections == null) {
                G(ownerNode, context);
                return;
            }
            NoCodeNode C10 = ownerNode.C();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (NoCodeBranchConnection noCodeBranchConnection : this.branchConnections) {
                if (noCodeBranchConnection != null && ownerNode.B().equals(noCodeBranchConnection.fromNodeId) && noCodeBranchConnection.fromSlot == -1) {
                    steppedArrayList.add(noCodeBranchConnection);
                }
            }
            if (steppedArrayList.isEmpty()) {
                G(ownerNode, context);
                return;
            }
            Iterator it = steppedArrayList.iterator();
            while (it.hasNext()) {
                NoCodeNode V10 = V(((NoCodeBranchConnection) it.next()).toNodeId);
                if (V10 != null) {
                    J0(ownerNode, V10, context);
                }
            }
            Iterator it2 = steppedArrayList.iterator();
            while (it2.hasNext()) {
                NoCodeBranchConnection noCodeBranchConnection2 = (NoCodeBranchConnection) it2.next();
                NoCodeNode V11 = V(noCodeBranchConnection2.toNodeId);
                if (V11 != null) {
                    if (!J(V11, C10 != null ? C10 : ownerNode, context, noCodeBranchConnection2.toSlot)) {
                        g1(ownerNode, V11, context);
                    }
                }
            }
        }
    }

    public final void L0(p context, Object value) {
        if (context == null || value == null || !context.f79009f.d(value)) {
            return;
        }
        context.f79009f.g(value);
    }

    public void M(NoCodeNode ownerNode, NoCodeSlot slot) {
        N(ownerNode, slot, P0(ownerNode));
    }

    public void M0(BuildDictionary dictionary) {
        BuildDicFile f10;
        I();
        for (int i10 = 0; i10 < this.attributes.size(); i10++) {
            NoCodeAttribute noCodeAttribute = this.attributes.get(i10);
            String str = noCodeAttribute.file;
            if (str != null && !str.isEmpty() && !noCodeAttribute.file.startsWith("@@ASSET@@") && (f10 = dictionary.f(noCodeAttribute.file)) != null) {
                dictionary.h("NoCode: REPLACING " + noCodeAttribute.file + " TO " + f10.b());
                noCodeAttribute.file = f10.b();
            }
        }
        for (int i11 = 0; i11 < this.f78946a.size(); i11++) {
            NoCodeNode noCodeNode = this.f78946a.get(i11);
            if (noCodeNode != null) {
                noCodeNode.r0(dictionary);
            }
        }
    }

    public final void N(NoCodeNode ownerNode, NoCodeSlot slot, p context) {
        List<NoCodeNodeConnection> list;
        NoCodeNode V10;
        int S02 = S0(ownerNode != null ? ownerNode.J() : null, slot);
        if (ownerNode == null) {
            return;
        }
        l(ownerNode, Q0(ownerNode, context));
        if (context == null || !context.a()) {
            if (S02 < 0) {
                G(ownerNode, context);
                return;
            }
            NoCodeNode C10 = ownerNode.C();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            boolean z10 = slot != null && slot.type == H.BRANCH;
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            List<NoCodeBranchConnection> list2 = this.branchConnections;
            if (list2 != null) {
                for (NoCodeBranchConnection noCodeBranchConnection : list2) {
                    if (noCodeBranchConnection != null && ownerNode.B().equals(noCodeBranchConnection.fromNodeId) && S02 == noCodeBranchConnection.fromSlot) {
                        steppedArrayList.add(noCodeBranchConnection);
                    }
                }
                if (!z10) {
                    for (NoCodeBranchConnection noCodeBranchConnection2 : this.branchConnections) {
                        if (noCodeBranchConnection2 != null && ownerNode.B().equals(noCodeBranchConnection2.fromNodeId) && noCodeBranchConnection2.fromSlot == -1) {
                            steppedArrayList2.add(noCodeBranchConnection2);
                        }
                    }
                }
            }
            SteppedArrayList steppedArrayList3 = new SteppedArrayList();
            if (steppedArrayList.isEmpty() && (list = this.connections) != null) {
                for (NoCodeNodeConnection noCodeNodeConnection : list) {
                    if (noCodeNodeConnection != null && ownerNode.B().equals(noCodeNodeConnection.fromNodeId) && S02 == noCodeNodeConnection.fromSlot && (V10 = V(noCodeNodeConnection.toNodeId)) != null) {
                        steppedArrayList3.add(V10);
                    }
                }
            }
            if (steppedArrayList.isEmpty() && steppedArrayList3.isEmpty() && steppedArrayList2.isEmpty()) {
                G(ownerNode, context);
                return;
            }
            Iterator it = steppedArrayList.iterator();
            while (it.hasNext()) {
                NoCodeNode V11 = V(((NoCodeBranchConnection) it.next()).toNodeId);
                if (V11 != null) {
                    J0(ownerNode, V11, context);
                }
            }
            Iterator it2 = steppedArrayList3.iterator();
            while (it2.hasNext()) {
                J0(ownerNode, (NoCodeNode) it2.next(), context);
            }
            Iterator it3 = steppedArrayList.iterator();
            while (it3.hasNext()) {
                NoCodeBranchConnection noCodeBranchConnection3 = (NoCodeBranchConnection) it3.next();
                NoCodeNode V12 = V(noCodeBranchConnection3.toNodeId);
                if (V12 != null) {
                    if (!J(V12, C10 != null ? C10 : ownerNode, context, noCodeBranchConnection3.toSlot)) {
                        g1(ownerNode, V12, context);
                    }
                }
            }
            Iterator it4 = steppedArrayList3.iterator();
            while (it4.hasNext()) {
                NoCodeNode noCodeNode = (NoCodeNode) it4.next();
                if (!J(noCodeNode, C10 != null ? C10 : ownerNode, context, Integer.MIN_VALUE)) {
                    g1(ownerNode, noCodeNode, context);
                }
            }
            if (z10) {
                return;
            }
            Iterator it5 = steppedArrayList2.iterator();
            while (it5.hasNext()) {
                NoCodeNode V13 = V(((NoCodeBranchConnection) it5.next()).toNodeId);
                if (V13 != null) {
                    J0(ownerNode, V13, context);
                }
            }
            Iterator it6 = steppedArrayList2.iterator();
            while (it6.hasNext()) {
                NoCodeBranchConnection noCodeBranchConnection4 = (NoCodeBranchConnection) it6.next();
                NoCodeNode V14 = V(noCodeBranchConnection4.toNodeId);
                if (V14 != null) {
                    if (!J(V14, C10 != null ? C10 : ownerNode, context, noCodeBranchConnection4.toSlot)) {
                        g1(ownerNode, V14, context);
                    }
                }
            }
        }
    }

    public void N0(final NoCodeNode node) {
        if (node != null && node.m()) {
            I();
            O0(node.B());
            if (this.f78952g) {
                node.j0();
            }
            node.s0();
            this.f78946a.remove(node);
            List<NoCodeNodeConnection> list = this.connections;
            if (list != null) {
                list.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean u02;
                        u02 = NoCodeData.u0(NoCodeNode.this, (NoCodeNodeConnection) obj);
                        return u02;
                    }
                });
            }
            List<NoCodeBranchConnection> list2 = this.branchConnections;
            if (list2 != null) {
                list2.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean v02;
                        v02 = NoCodeData.v0(NoCodeNode.this, (NoCodeBranchConnection) obj);
                        return v02;
                    }
                });
            }
            List<NoCodeVariable> list3 = this.variables;
            if (list3 != null) {
                list3.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean w02;
                        w02 = NoCodeData.w0(NoCodeNode.this, (NoCodeVariable) obj);
                        return w02;
                    }
                });
            }
            z0();
            f1();
            y0();
        }
    }

    public NoCodeAttribute O(String id2) {
        NoCodeAttribute T10 = T(id2);
        return T10 != null ? T10 : R(id2);
    }

    public final void O0(String nodeId) {
        if (nodeId == null || nodeId.isEmpty()) {
            return;
        }
        this.f78962q.remove(nodeId);
        this.f78961p.remove(nodeId);
        Long remove = this.f78960o.remove(nodeId);
        if (remove != null) {
            Y(remove, null);
        }
    }

    public NoCodeAttribute P(String name) {
        NoCodeAttribute U10 = U(name);
        return U10 != null ? U10 : S(name);
    }

    public final p P0(NoCodeNode node) {
        Long l10;
        p pVar;
        p pVar2 = this.f78957l;
        return pVar2 != null ? pVar2 : (node == null || (l10 = this.f78962q.get(node.B())) == null || (pVar = this.f78959n.get(l10)) == null) ? new p(null) : pVar;
    }

    public NoCodeNodeConnection Q(String nodeId, int inputIndex) {
        List<NoCodeNodeConnection> list = this.connections;
        if (list == null) {
            return null;
        }
        for (NoCodeNodeConnection noCodeNodeConnection : list) {
            if (noCodeNodeConnection != null && Objects.equals(nodeId, noCodeNodeConnection.toNodeId) && inputIndex == noCodeNodeConnection.toSlot) {
                return noCodeNodeConnection;
            }
        }
        return null;
    }

    public final Long Q0(NoCodeNode node, p context) {
        if (context != null) {
            long j10 = context.f79011h;
            if (j10 > 0) {
                return Long.valueOf(j10);
            }
        }
        if (node == null) {
            return null;
        }
        return this.f78962q.get(node.B());
    }

    public NoCodeAttribute R(String id2) {
        return K8.a.l().f().a(id2);
    }

    public final NoCodeVariable R0(NoCodeNode node, NoCodeSlot slot) {
        if (node != null && slot != null) {
            int S02 = S0(node.J(), slot);
            if (S02 >= 0) {
                return X(node.B(), S02, false);
            }
            int S03 = S0(node.F(), slot);
            if (S03 >= 0) {
                return X(node.B(), S03, true);
            }
        }
        return null;
    }

    public NoCodeAttribute S(String name) {
        return K8.a.l().f().b(name);
    }

    public final int S0(NoCodeSlot[] slots, NoCodeSlot target) {
        if (slots != null && target != null) {
            for (int i10 = 0; i10 < slots.length; i10++) {
                if (slots[i10] == target) {
                    return i10;
                }
            }
            for (int i11 = 0; i11 < slots.length; i11++) {
                NoCodeSlot noCodeSlot = slots[i11];
                if (noCodeSlot != null && Objects.equals(noCodeSlot.name, target.name) && noCodeSlot.type == target.type) {
                    return i11;
                }
            }
        }
        return -1;
    }

    public NoCodeAttribute T(String id2) {
        if (id2 == null) {
            return null;
        }
        H();
        for (NoCodeAttribute noCodeAttribute : this.attributes) {
            if (noCodeAttribute != null && id2.equals(noCodeAttribute.f78942id)) {
                return noCodeAttribute;
            }
        }
        return null;
    }

    public void T0(NoCodeNode node) {
        if (node == null) {
            return;
        }
        U0(node);
    }

    public NoCodeAttribute U(String name) {
        if (name == null) {
            return null;
        }
        H();
        for (NoCodeAttribute noCodeAttribute : this.attributes) {
            if (noCodeAttribute != null && name.equals(noCodeAttribute.name)) {
                return noCodeAttribute;
            }
        }
        return null;
    }

    public final void U0(NoCodeNode eventNode) {
        String B10 = eventNode.B();
        if (this.f78960o.containsKey(B10)) {
            this.f78961p.merge(B10, 1, new C13310f());
        } else {
            c1(eventNode);
        }
    }

    public NoCodeNode V(String id2) {
        if (id2 == null) {
            return null;
        }
        I();
        for (NoCodeNode noCodeNode : this.f78946a) {
            if (noCodeNode != null && id2.equals(noCodeNode.B())) {
                return noCodeNode;
            }
        }
        return null;
    }

    public boolean V0(String name, Object value) {
        NoCodeAttribute U10 = U(name);
        if (U10 != null) {
            U10.f(value, this.f78949d, this.f78950e);
            y0();
            Component component = this.f78950e;
            if (component instanceof NoCodeFileExecutor) {
                ((NoCodeFileExecutor) component).storeRuntimeAttributeValues();
            }
            return true;
        }
        NoCodeAttribute S10 = S(name);
        if (S10 == null) {
            return false;
        }
        S10.f(value, this.f78949d, this.f78950e);
        K8.a.l().k();
        return true;
    }

    public final p W(NoCodeNode node) {
        Long l10;
        p pVar = this.f78957l;
        if (pVar != null) {
            return pVar;
        }
        if (node == null || (l10 = this.f78962q.get(node.B())) == null) {
            return null;
        }
        return this.f78959n.get(l10);
    }

    public boolean W0(String id2, Object value) {
        NoCodeAttribute T10 = T(id2);
        if (T10 != null) {
            T10.f(value, this.f78949d, this.f78950e);
            y0();
            Component component = this.f78950e;
            if (component instanceof NoCodeFileExecutor) {
                ((NoCodeFileExecutor) component).storeRuntimeAttributeValues();
            }
            return true;
        }
        NoCodeAttribute R10 = R(id2);
        if (R10 == null) {
            return false;
        }
        R10.f(value, this.f78949d, this.f78950e);
        K8.a.l().k();
        return true;
    }

    public final NoCodeVariable X(String nodeId, int slotIndex, boolean input) {
        Map<Integer, NoCodeVariable> map;
        if (nodeId == null) {
            return null;
        }
        I0();
        Map<String, Map<Integer, NoCodeVariable>> map2 = input ? this.f78963r : this.f78964s;
        if (map2 == null || map2.isEmpty() || (map = map2.get(nodeId)) == null) {
            return null;
        }
        return map.get(Integer.valueOf(slotIndex));
    }

    public void X0(Runnable listener) {
        this.f78965t = listener;
    }

    public final void Y(final Long operationId, NoCodeNode rootEvent) {
        Long l10;
        if (operationId == null || operationId.longValue() <= 0) {
            return;
        }
        p remove = this.f78959n.remove(operationId);
        String str = remove != null ? remove.f79012i : null;
        if (str == null && rootEvent != null) {
            str = rootEvent.B();
        }
        if (str != null && (l10 = this.f78960o.get(str)) != null && l10.equals(operationId)) {
            this.f78960o.remove(str);
        }
        this.f78962q.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean t02;
                t02 = NoCodeData.t0(Long.this, (Map.Entry) obj);
                return t02;
            }
        });
        if (remove != null) {
            remove.f79009f.e();
        }
    }

    public void Y0(GameObject owner, Component ownerComponent) {
        this.f78949d = owner;
        this.f78950e = ownerComponent;
    }

    public Object Z(String name) {
        NoCodeAttribute P10 = P(name);
        if (P10 != null) {
            return P10.w(this.f78949d, this.f78950e);
        }
        return null;
    }

    public Object Z0(NoCodeNode ownerNode, NoCodeSlot slot, Object value) {
        NoCodeVariable R02 = R0(ownerNode, slot);
        if (R02 == null) {
            return value;
        }
        Object d12 = d1(R02, value, slot != null ? slot.type : R02.type, W(ownerNode));
        j();
        return d12;
    }

    public Object a0(String id2) {
        NoCodeAttribute O10 = O(id2);
        if (O10 != null) {
            return O10.w(this.f78949d, this.f78950e);
        }
        return null;
    }

    public final void a1() {
        if (this.f78951f) {
            return;
        }
        this.f78951f = true;
        for (NoCodeNode noCodeNode : this.f78946a) {
            if (noCodeNode != null) {
                noCodeNode.l0();
            }
        }
    }

    public Set<Integer> b0(NoCodeNode node) {
        int i10;
        HashSet hashSet = new HashSet();
        if (node != null && this.branchConnections != null) {
            String B10 = node.B();
            for (NoCodeBranchConnection noCodeBranchConnection : this.branchConnections) {
                if (noCodeBranchConnection != null && Objects.equals(B10, noCodeBranchConnection.toNodeId) && (i10 = noCodeBranchConnection.toSlot) >= 0) {
                    hashSet.add(Integer.valueOf(i10));
                }
            }
        }
        return hashSet;
    }

    public final void b1(NoCodeNode eventNode) {
        if (eventNode == null) {
            return;
        }
        q(eventNode.B());
        c1(eventNode);
    }

    public Long c0(NoCodeNode node) {
        if (node == null) {
            return null;
        }
        return Q0(node, P0(node));
    }

    public final void c1(NoCodeNode eventNode) {
        String B10;
        NoCodeNode V10;
        if (eventNode == null || (V10 = V((B10 = eventNode.B()))) == null) {
            return;
        }
        if (this.f78960o.containsKey(B10)) {
            this.f78961p.merge(B10, 1, new C13310f());
            return;
        }
        p pVar = new p(null);
        long j10 = this.f78958m;
        this.f78958m = 1 + j10;
        pVar.f79011h = j10;
        pVar.f79012i = B10;
        this.f78959n.put(Long.valueOf(j10), pVar);
        this.f78960o.put(B10, Long.valueOf(pVar.f79011h));
        J(V10, V10, pVar, Integer.MIN_VALUE);
    }

    public C2632k d0(C2629h dependencyRequest) {
        I();
        C2632k c2632k = new C2632k();
        for (int i10 = 0; i10 < this.attributes.size(); i10++) {
            NoCodeAttribute noCodeAttribute = this.attributes.get(i10);
            String str = noCodeAttribute.file;
            if (str != null && !str.isEmpty() && !noCodeAttribute.file.startsWith("@@ASSET@@")) {
                c2632k.f9114a.add(noCodeAttribute.file);
            }
        }
        for (int i11 = 0; i11 < this.f78946a.size(); i11++) {
            NoCodeNode noCodeNode = this.f78946a.get(i11);
            if (noCodeNode != null) {
                c2632k.f9114a.addAll(noCodeNode.w(dependencyRequest).f9114a);
            }
        }
        return c2632k;
    }

    public final Object d1(NoCodeVariable variable, Object value, H desiredType, p context) {
        if (variable == null) {
            return value;
        }
        Object obj = variable.f79033a;
        Object F02 = F0(variable, value, desiredType);
        variable.f79033a = F02;
        if (obj != F02) {
            L0(context, obj);
        }
        if (F02 != value) {
            L0(context, value);
        }
        return F02;
    }

    public <T> T e(NoCodeNode noCodeNode, Class<T> cls) {
        p W10 = W(noCodeNode);
        return W10 != null ? (T) W10.f79009f.a(cls) : (T) y.c(cls);
    }

    public List<NoCodeAttribute> e0() {
        return K8.a.l().f().d();
    }

    public void e1() {
        if (this.serializedNodes == null) {
            this.serializedNodes = new SteppedArrayList();
        }
        this.serializedNodes.clear();
        List<NoCodeNode> list = this.f78946a;
        if (list == null) {
            return;
        }
        for (NoCodeNode noCodeNode : list) {
            if (noCodeNode != null) {
                noCodeNode.j(this);
                String str = noCodeNode.serializedNodeType;
                if (str == null || str.isEmpty()) {
                    str = noCodeNode.L();
                }
                this.serializedNodes.add(new NoCodeNodeRecord(str, ga.o.f(noCodeNode)));
            }
        }
    }

    public void f(NoCodeAttribute attribute) {
        if (attribute == null) {
            return;
        }
        H();
        attribute.e();
        this.attributes.add(attribute);
        y0();
    }

    public List<C5.b> f0(Context context, q listener) {
        if (!this.f78953h) {
            I();
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.addAll(com.itsmagic.engine.Engines.Engine.NoCode.a.c(this, context, listener));
        for (NoCodeNode noCodeNode : this.f78946a) {
            if (noCodeNode != null && noCodeNode.c0() && noCodeNode.exposeInInspector) {
                if (noCodeNode instanceof RawNumberNode) {
                    RawNumberNode rawNumberNode = (RawNumberNode) noCodeNode;
                    steppedArrayList.add(new C5.b(new f(listener, rawNumberNode), rawNumberNode.H(this), b.a.SLFloat));
                } else if (noCodeNode instanceof RawSliderNode) {
                    RawSliderNode rawSliderNode = (RawSliderNode) noCodeNode;
                    steppedArrayList.add(new C5.b(new g(listener, rawSliderNode), rawSliderNode.H(this), b.a.SLFloat01));
                } else if (noCodeNode instanceof RawTextNode) {
                    RawTextNode rawTextNode = (RawTextNode) noCodeNode;
                    steppedArrayList.add(new C5.b(new h(rawTextNode, listener), rawTextNode.H(this), b.a.SLString));
                } else if (noCodeNode instanceof RawObjectNode) {
                    RawObjectNode rawObjectNode = (RawObjectNode) noCodeNode;
                    steppedArrayList.add(new C5.b(new i(rawObjectNode, listener), rawObjectNode.H(this)));
                } else if (noCodeNode instanceof RawObjectFileNode) {
                    RawObjectFileNode rawObjectFileNode = (RawObjectFileNode) noCodeNode;
                    steppedArrayList.add(new C5.b(new j(rawObjectFileNode, listener), rawObjectFileNode.H(this), b.a.InputFile, ".go"));
                } else if (noCodeNode instanceof RawFloat2Node) {
                    RawFloat2Node rawFloat2Node = (RawFloat2Node) noCodeNode;
                    steppedArrayList.add(F5.c.x(rawFloat2Node.H(this), rawFloat2Node.value));
                } else if (noCodeNode instanceof RawFloat3Node) {
                    RawFloat3Node rawFloat3Node = (RawFloat3Node) noCodeNode;
                    steppedArrayList.add(F5.c.K(rawFloat3Node.H(this), rawFloat3Node.value));
                } else if (noCodeNode instanceof RawFloat4Node) {
                    RawFloat4Node rawFloat4Node = (RawFloat4Node) noCodeNode;
                    steppedArrayList.add(t(rawFloat4Node.H(this), rawFloat4Node.value, listener));
                } else if (noCodeNode instanceof RawMat3Node) {
                    RawMat3Node rawMat3Node = (RawMat3Node) noCodeNode;
                    steppedArrayList.add(F5.c.K(rawMat3Node.H(this) + " C0", rawMat3Node.f79128c0));
                    steppedArrayList.add(F5.c.K(rawMat3Node.H(this) + " C1", rawMat3Node.f79129c1));
                    steppedArrayList.add(F5.c.K(rawMat3Node.H(this) + " C2", rawMat3Node.f79130c2));
                } else if (noCodeNode instanceof RawMat4Node) {
                    RawMat4Node rawMat4Node = (RawMat4Node) noCodeNode;
                    steppedArrayList.add(t(rawMat4Node.H(this) + " C0", rawMat4Node.f79133c0, listener));
                    steppedArrayList.add(t(rawMat4Node.H(this) + " C1", rawMat4Node.f79134c1, listener));
                    steppedArrayList.add(t(rawMat4Node.H(this) + " C2", rawMat4Node.f79135c2, listener));
                    steppedArrayList.add(t(rawMat4Node.H(this) + " C3", rawMat4Node.f79136c3, listener));
                } else if (noCodeNode instanceof RawColorNode) {
                    RawColorNode rawColorNode = (RawColorNode) noCodeNode;
                    steppedArrayList.add(new C5.b(new k(rawColorNode, listener), rawColorNode.H(this), b.a.Color));
                } else if (noCodeNode instanceof RawBooleanNode) {
                    RawBooleanNode rawBooleanNode = (RawBooleanNode) noCodeNode;
                    steppedArrayList.add(new C5.b(new l(rawBooleanNode, listener), rawBooleanNode.H(this), b.a.SLBoolean));
                } else if (noCodeNode instanceof RawBlendingModeNode) {
                    RawBlendingModeNode rawBlendingModeNode = (RawBlendingModeNode) noCodeNode;
                    steppedArrayList.add(F5.c.j(rawBlendingModeNode.H(this), EnumC13053a.class, rawBlendingModeNode.value, new m(rawBlendingModeNode, listener), b.a.SLDropdownWrap));
                } else if (noCodeNode instanceof RawUvSourceNode) {
                    RawUvSourceNode rawUvSourceNode = (RawUvSourceNode) noCodeNode;
                    steppedArrayList.add(F5.c.j(rawUvSourceNode.H(this), cc.e.class, rawUvSourceNode.value, new n(rawUvSourceNode, listener), b.a.SLDropdownWrap));
                } else if (noCodeNode instanceof RawTextureNode) {
                    RawTextureNode rawTextureNode = (RawTextureNode) noCodeNode;
                    steppedArrayList.add(new C5.b(new a(rawTextureNode, listener), rawTextureNode.H(this), b.a.Texture));
                } else if (noCodeNode instanceof RawCubemapNode) {
                    RawCubemapNode rawCubemapNode = (RawCubemapNode) noCodeNode;
                    steppedArrayList.add(new C5.b(new b(rawCubemapNode, listener), rawCubemapNode.H(this), b.a.CubemapOrGallery));
                } else if (noCodeNode instanceof RawGradientNode) {
                    RawGradientNode rawGradientNode = (RawGradientNode) noCodeNode;
                    steppedArrayList.add(N9.a.b(rawGradientNode.H(this), rawGradientNode.gradient, context, new c(listener)));
                }
            }
        }
        return steppedArrayList;
    }

    public void f1() {
        if (!this.f78953h) {
            I();
        }
        if (this.f78954i || this.variables == null) {
            if (this.variables == null) {
                this.variables = new SteppedArrayList();
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (NoCodeNode noCodeNode : this.f78946a) {
                if (noCodeNode != null) {
                    h(steppedArrayList, noCodeNode, noCodeNode.F(), true);
                    h(steppedArrayList, noCodeNode, noCodeNode.J(), false);
                }
            }
            this.variables = steppedArrayList;
            this.f78954i = false;
            this.f78955j = true;
            j();
            I0();
        }
    }

    public void g(NoCodeNode node) {
        I();
        if (node == null) {
            return;
        }
        String B10 = node.B();
        if (B10 != null && !B10.isEmpty()) {
            Iterator<NoCodeNode> it = this.f78946a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                NoCodeNode next = it.next();
                if (next != null && next != node && B10.equals(next.B())) {
                    node.f79027id = Tc.b.L();
                    break;
                }
            }
        }
        node.j(this);
        node.s0();
        this.f78946a.add(node);
        z0();
        f1();
        if (this.f78952g) {
            node.i0();
        }
        if (this.f78951f) {
            node.l0();
        }
        y0();
    }

    public NoCodeNode g0() {
        I();
        for (NoCodeNode noCodeNode : this.f78946a) {
            if (noCodeNode != null && !noCodeNode.m() && noCodeNode.a0()) {
                return noCodeNode;
            }
        }
        return null;
    }

    public final void g1(NoCodeNode ownerNode, NoCodeNode nextNode, p context) {
        if (ownerNode == null || nextNode == null || context == null) {
            return;
        }
        String B10 = ownerNode.B();
        String B11 = nextNode.B();
        ArrayDeque<String> arrayDeque = context.f79007d.get(B11);
        if (arrayDeque != null) {
            arrayDeque.removeFirstOccurrence(B10);
            if (arrayDeque.isEmpty()) {
                context.f79007d.remove(B11);
            }
        }
        Integer num = context.f79006c.get(B10);
        if (num == null || num.intValue() <= 1) {
            context.f79006c.remove(B10);
        } else {
            context.f79006c.put(B10, Integer.valueOf(num.intValue() - 1));
        }
    }

    public final void h(List<NoCodeVariable> next, NoCodeNode node, NoCodeSlot[] slots, boolean input) {
        if (slots == null) {
            return;
        }
        for (int i10 = 0; i10 < slots.length; i10++) {
            NoCodeSlot noCodeSlot = slots[i10];
            if (noCodeSlot != null && noCodeSlot.type != H.BRANCH) {
                NoCodeVariable X10 = X(node.B(), i10, input);
                if (X10 == null) {
                    X10 = new NoCodeVariable();
                    X10.guid = Tc.b.L();
                }
                X10.ownerNodeId = node.B();
                X10.slotIndex = i10;
                X10.input = input;
                X10.slotName = noCodeSlot.name;
                X10.type = noCodeSlot.type;
                next.add(X10);
            }
        }
    }

    public GameObject h0() {
        return this.f78949d;
    }

    public void h1() {
        if (!this.f78953h) {
            I();
        }
        a1();
        for (NoCodeNode noCodeNode : this.f78946a) {
            if (noCodeNode != null) {
                noCodeNode.E0();
            }
        }
    }

    public void i(NoCodeNode ownerNode) {
        p P02 = P0(ownerNode);
        if (P02 != null) {
            P02.f79013j = true;
        }
        G(ownerNode, P02);
    }

    public Component i0() {
        return this.f78950e;
    }

    public void i1() {
        if (!this.f78953h) {
            I();
        }
        for (NoCodeNode noCodeNode : this.f78946a) {
            if (noCodeNode != null) {
                noCodeNode.F0();
            }
        }
    }

    public final void j() {
        long j10 = this.f78956k;
        if (j10 == Long.MAX_VALUE) {
            this.f78956k = 1L;
        } else {
            this.f78956k = j10 + 1;
        }
    }

    public int j0(NoCodeNode node) {
        Integer num;
        if (node == null) {
            return 0;
        }
        p pVar = this.f78957l;
        if (pVar == null) {
            pVar = P0(node);
        }
        if (pVar == null || (num = pVar.f79006c.get(node.B())) == null) {
            return 0;
        }
        return num.intValue();
    }

    public final boolean j1(p context, String nodeId) {
        Integer num;
        return (context == null || nodeId == null || nodeId.isEmpty() || (num = context.f79004a.get(nodeId)) == null || num.intValue() <= 0) ? false : true;
    }

    public final void k() {
        p pVar = this.f78957l;
        if (pVar != null) {
            pVar.f79009f.e();
        }
        for (p pVar2 : this.f78959n.values()) {
            if (pVar2 != null && pVar2 != this.f78957l) {
                pVar2.f79009f.e();
            }
        }
        this.f78957l = null;
        this.f78958m = 1L;
        this.f78959n.clear();
        this.f78960o.clear();
        this.f78961p.clear();
        this.f78962q.clear();
    }

    public List<NoCodeAttribute> k0() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        H();
        for (NoCodeAttribute noCodeAttribute : this.attributes) {
            if (noCodeAttribute != null) {
                steppedArrayList.add(noCodeAttribute);
            }
        }
        for (NoCodeAttribute noCodeAttribute2 : e0()) {
            if (noCodeAttribute2 != null) {
                steppedArrayList.add(noCodeAttribute2);
            }
        }
        return steppedArrayList;
    }

    public final void l(NoCodeNode node, Long operationId) {
        Long l10;
        if (node == null || (l10 = this.f78962q.get(node.B())) == null) {
            return;
        }
        if (operationId == null || operationId.longValue() <= 0 || l10.equals(operationId)) {
            this.f78962q.remove(node.B());
        }
    }

    public int l0(NoCodeNode node) {
        Integer num;
        if (node == null) {
            return Integer.MIN_VALUE;
        }
        p pVar = this.f78957l;
        if (pVar == null) {
            pVar = P0(node);
        }
        if (pVar == null || (num = pVar.f79008e.get(node.B())) == null) {
            return Integer.MIN_VALUE;
        }
        return num.intValue();
    }

    public final Set<String> m(String startNodeId) {
        HashSet hashSet = new HashSet();
        if (startNodeId != null && !startNodeId.isEmpty()) {
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.addLast(startNodeId);
            while (!arrayDeque.isEmpty()) {
                String str = (String) arrayDeque.removeFirst();
                List<NoCodeBranchConnection> list = this.branchConnections;
                if (list != null) {
                    for (NoCodeBranchConnection noCodeBranchConnection : list) {
                        if (noCodeBranchConnection != null && noCodeBranchConnection.toNodeId != null && Objects.equals(str, noCodeBranchConnection.fromNodeId) && hashSet.add(noCodeBranchConnection.toNodeId)) {
                            arrayDeque.addLast(noCodeBranchConnection.toNodeId);
                        }
                    }
                }
                List<NoCodeNodeConnection> list2 = this.connections;
                if (list2 != null) {
                    for (NoCodeNodeConnection noCodeNodeConnection : list2) {
                        if (noCodeNodeConnection != null && noCodeNodeConnection.toNodeId != null && Objects.equals(str, noCodeNodeConnection.fromNodeId) && hashSet.add(noCodeNodeConnection.toNodeId)) {
                            arrayDeque.addLast(noCodeNodeConnection.toNodeId);
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    public Object m0(NoCodeNode ownerNode, NoCodeSlot slot) {
        Object w10;
        if (!this.f78953h) {
            I();
        }
        if (ownerNode == null || slot == null) {
            return null;
        }
        p W10 = W(ownerNode);
        int S02 = S0(ownerNode.F(), slot);
        if (S02 < 0) {
            NoCodeVariable R02 = R0(ownerNode, slot);
            if (R02 != null) {
                return R02.f79033a;
            }
            return null;
        }
        NoCodeNodeConnection Q10 = Q(ownerNode.B(), S02);
        if (Q10 == null) {
            w10 = w(ownerNode, S02, slot.type);
        } else if (V(Q10.fromNodeId) == null) {
            w10 = w(ownerNode, S02, slot.type);
        } else {
            NoCodeVariable X10 = X(Q10.fromNodeId, Q10.fromSlot, false);
            w10 = X10 != null ? X10.f79033a : null;
            if (w10 == null) {
                w10 = w(ownerNode, S02, slot.type);
            }
        }
        NoCodeVariable X11 = X(ownerNode.B(), S02, true);
        return X11 != null ? d1(X11, w10, slot.type, W10) : ga.m.c(w10, slot.type);
    }

    public final void n(String nodeId, ArrayDeque<String> out) {
        if (nodeId == null || out == null) {
            return;
        }
        List<NoCodeBranchConnection> list = this.branchConnections;
        if (list != null) {
            for (NoCodeBranchConnection noCodeBranchConnection : list) {
                if (noCodeBranchConnection != null && noCodeBranchConnection.fromNodeId != null && nodeId.equals(noCodeBranchConnection.toNodeId)) {
                    out.addLast(noCodeBranchConnection.fromNodeId);
                }
            }
        }
        List<NoCodeNodeConnection> list2 = this.connections;
        if (list2 != null) {
            for (NoCodeNodeConnection noCodeNodeConnection : list2) {
                if (noCodeNodeConnection != null && noCodeNodeConnection.fromNodeId != null && nodeId.equals(noCodeNodeConnection.toNodeId)) {
                    out.addLast(noCodeNodeConnection.fromNodeId);
                }
            }
        }
    }

    public long n0() {
        return this.f78956k;
    }

    public final int o(String parentNodeId, p context) {
        Integer num;
        if (parentNodeId == null || context == null || (num = context.f79006c.get(parentNodeId)) == null || num.intValue() <= 0) {
            return 0;
        }
        int intValue = num.intValue() - 1;
        if (intValue <= 0) {
            context.f79006c.remove(parentNodeId);
            return 0;
        }
        context.f79006c.put(parentNodeId, Integer.valueOf(intValue));
        return intValue;
    }

    public boolean o0(NoCodeNode ownerNode, NoCodeSlot slot) {
        List<NoCodeBranchConnection> list;
        int S02 = S0(ownerNode != null ? ownerNode.J() : null, slot);
        if (ownerNode != null && S02 >= 0 && (list = this.branchConnections) != null) {
            for (NoCodeBranchConnection noCodeBranchConnection : list) {
                if (noCodeBranchConnection != null && ownerNode.B().equals(noCodeBranchConnection.fromNodeId) && S02 == noCodeBranchConnection.fromSlot) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0034, code lost:
    
        if (r6 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0038, code lost:
    
        return com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData.o.WAITING;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0071, code lost:
    
        if (r1 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0075, code lost:
    
        return com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData.o.FINISHED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0076, code lost:
    
        if (r2 == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
    
        return com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData.o.WAITING;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x007d, code lost:
    
        return com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData.o.FINISHED;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final o p(NoCodeNode ownerNode, NoCodeNode rootEvent, p context, Long operationId) {
        if (ownerNode == null) {
            return o.FINISHED;
        }
        if (context == null) {
            context = P0(ownerNode);
        }
        String B10 = ownerNode.B();
        boolean p10 = ownerNode.p();
        boolean z10 = false;
        loop0: while (true) {
            boolean z11 = z10;
            while (true) {
                String x10 = x(B10, context);
                if (x10 == null || x10.isEmpty()) {
                    break loop0;
                }
                if (j1(context, x10)) {
                    if (o(x10, context) > 0) {
                        break;
                    }
                    NoCodeNode V10 = V(x10);
                    if (V10 != null) {
                        if (context == null || !context.f79013j) {
                            if (A(V10, context, operationId)) {
                                return o.CAUGHT;
                            }
                        } else if (z(V10, context, operationId)) {
                            return o.CAUGHT;
                        }
                        o p11 = p(V10, rootEvent, context, operationId);
                        o oVar = o.CAUGHT;
                        if (p11 == oVar) {
                            return oVar;
                        }
                        if (p11 == o.WAITING) {
                            z11 = true;
                        }
                        if (!p10) {
                            return p11;
                        }
                    } else if (!p10) {
                        return o.FINISHED;
                    }
                } else if (!p10) {
                    return o.FINISHED;
                }
                z10 = true;
            }
            z10 = true;
        }
    }

    public final void p0(Map<String, Integer> counts, String nodeId) {
        if (counts == null || nodeId == null || nodeId.isEmpty()) {
            return;
        }
        counts.merge(nodeId, 1, new C13310f());
    }

    public final void q(String eventNodeId) {
        Integer num;
        if (eventNodeId == null || (num = this.f78961p.get(eventNodeId)) == null || num.intValue() <= 0) {
            return;
        }
        if (num.intValue() == 1) {
            this.f78961p.remove(eventNodeId);
        } else {
            this.f78961p.put(eventNodeId, Integer.valueOf(num.intValue() - 1));
        }
    }

    public final H q0(Object value) {
        return value instanceof Vector2 ? H.FLOAT2 : value instanceof Vector3 ? H.FLOAT3 : value instanceof Vector4 ? H.FLOAT4 : value instanceof Quaternion ? H.QUATERNION : value instanceof ColorINT ? H.COLOR : H.DYNAMIC;
    }

    public int r() {
        I();
        int i10 = 0;
        for (int i11 = 0; i11 < this.f78946a.size(); i11++) {
            NoCodeNode noCodeNode = this.f78946a.get(i11);
            if (noCodeNode != null) {
                i10 += noCodeNode.q();
            }
        }
        return i10;
    }

    public boolean r0(String id2) {
        return T(id2) == null && R(id2) != null;
    }

    public final C5.b s(String axis, Vector4 vector, int component, q listener) {
        return new C5.b(new d(vector, component, listener), axis, b.a.SLFloat);
    }

    public final boolean s0(p context, String nodeId) {
        Integer num;
        return (context == null || nodeId == null || nodeId.isEmpty() || (num = context.f79005b.get(nodeId)) == null || num.intValue() <= 0) ? false : true;
    }

    public final C5.b t(String title, Vector4 value, q listener) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[4]);
        bVar.f2081p[0] = s("X", value, 0, listener);
        bVar.f2081p[1] = s("Y", value, 1, listener);
        bVar.f2081p[2] = s(Signature.SIG_BOOLEAN, value, 2, listener);
        bVar.f2081p[3] = s(ExifInterface.LONGITUDE_WEST, value, 3, listener);
        return bVar;
    }

    public final p u() {
        p pVar = this.f78957l;
        return pVar != null ? pVar : new p(null);
    }

    public final void v(Map<String, Integer> counts, String nodeId) {
        if (counts == null || nodeId == null || nodeId.isEmpty()) {
            return;
        }
        Integer num = counts.get(nodeId);
        if (num == null || num.intValue() <= 1) {
            counts.remove(nodeId);
        } else {
            counts.put(nodeId, Integer.valueOf(num.intValue() - 1));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object w(NoCodeNode node, int inputIndex, H type) {
        NoCodeInputDefault D10 = node.D(inputIndex);
        return D10 != null ? ga.m.e(node, inputIndex, type, D10, h0()) : node instanceof F ? ga.m.u(((F) node).a(inputIndex, type), type, h0(), i0()) : ga.m.f(type, h0());
    }

    public final String x(String childNodeId, p context) {
        ArrayDeque<String> arrayDeque;
        String str = null;
        if (childNodeId != null && context != null && (arrayDeque = context.f79007d.get(childNodeId)) != null && !arrayDeque.isEmpty()) {
            str = arrayDeque.removeFirst();
            if (arrayDeque.isEmpty()) {
                context.f79007d.remove(childNodeId);
            }
        }
        return str;
    }

    public void x0(Lb.a listener) {
        I();
        for (int i10 = 0; i10 < this.f78946a.size(); i10++) {
            NoCodeNode noCodeNode = this.f78946a.get(i10);
            if (noCodeNode != null) {
                noCodeNode.f0(listener);
            }
        }
    }

    public void y(Class<? extends NoCodeNode> eventClass, C13813a collision) {
        if (eventClass == null || collision == null) {
            return;
        }
        I();
        a1();
        for (int i10 = 0; i10 < this.f78946a.size(); i10++) {
            NoCodeNode noCodeNode = this.f78946a.get(i10);
            if (noCodeNode != null && eventClass.isInstance(noCodeNode) && noCodeNode.d0() && (noCodeNode instanceof Pa.b)) {
                ((Pa.a) noCodeNode).G0(collision);
            }
        }
    }

    public void y0() {
        this.f78947b = true;
        this.f78948c = System.currentTimeMillis();
    }

    public final boolean z(NoCodeNode node, p context, Long operationId) {
        if (node == null || context == null || !context.f79013j) {
            return false;
        }
        if (operationId != null && operationId.longValue() > 0) {
            this.f78962q.put(node.B(), operationId);
        }
        p pVar = this.f78957l;
        this.f78957l = context;
        try {
            boolean n10 = node.n();
            if (n10) {
                context.f79013j = false;
            }
            return n10;
        } finally {
            this.f78957l = pVar;
        }
    }

    public final void z0() {
        this.f78954i = true;
        this.f78955j = true;
        j();
    }

    public static final class p {

        public final Map<String, Integer> f79004a;

        public final Map<String, Integer> f79005b;

        public final Map<String, Integer> f79006c;

        public final Map<String, ArrayDeque<String>> f79007d;

        public final Map<String, Integer> f79008e;

        public final y f79009f;

        public int f79010g;

        public long f79011h;

        public String f79012i;

        public boolean f79013j;

        public p() {
            this.f79004a = new HashMap();
            this.f79005b = new HashMap();
            this.f79006c = new HashMap();
            this.f79007d = new HashMap();
            this.f79008e = new HashMap();
            this.f79009f = new y();
        }

        public boolean a() {
            return this.f79010g > 0;
        }

        public p(f fVar) {
            this();
        }
    }
}
