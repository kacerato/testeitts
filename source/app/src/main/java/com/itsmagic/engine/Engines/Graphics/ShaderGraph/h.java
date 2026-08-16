package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import cc.C4173d;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ic.N0;
import java.lang.constant.ConstantDescs;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import nc.C14377b;
import org.apache.commons.math3.geometry.VectorFormat;

public class h {

    public static String f81320a;

    public static String f81321b;

    public static class a {

        public static final int[] f81322a;

        static {
            int[] iArr = new int[C.values().length];
            f81322a = iArr;
            try {
                iArr[C.FLOAT2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81322a[C.FLOAT3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81322a[C.FLOAT4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81322a[C.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f81322a[C.TEXTURE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f81322a[C.CUBEMAP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f81322a[C.COLOR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f81322a[C.MAT3.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f81322a[C.MAT4.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f81322a[C.NUMBER01.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f81322a[C.BRANCH.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static class b implements g, z {

        public final ShaderGraphData f81323a;

        public final Map<String, ShaderGraphNode> f81324b;

        public final Set<String> f81325c;

        public final Set<String> f81326d;

        public final boolean f81327e;

        public final Map<String, String[]> f81328f = new HashMap();

        public final Map<String, String[]> f81329g = new HashMap();

        public final Map<String, String[]> f81330h = new HashMap();

        public final Map<String, C[]> f81331i = new HashMap();

        public final Set<String> f81332j = new LinkedHashSet();

        public final Set<String> f81333k = new LinkedHashSet();

        public final Map<String, ec.f> f81334l = new HashMap();

        public final Map<String, ec.g> f81335m = new HashMap();

        public final List<String> f81336n = new SteppedArrayList();

        public final StringBuilder f81337o = new StringBuilder();

        public final StringBuilder f81338p = new StringBuilder();

        public final StringBuilder f81339q = new StringBuilder();

        public final StringBuilder f81340r = new StringBuilder();

        public final Map<String, String> f81341s = new HashMap();

        public b(ShaderGraphData graphData, Map<String, ShaderGraphNode> nodeMap, Set<String> requiredVertex, Set<String> requiredFragment, boolean useEasy) {
            this.f81323a = graphData;
            this.f81324b = nodeMap;
            this.f81325c = requiredVertex == null ? new HashSet<>() : requiredVertex;
            this.f81326d = requiredFragment == null ? new HashSet<>() : requiredFragment;
            this.f81327e = useEasy;
        }

        public static String D(C type) {
            if (type == null) {
                return "highp float";
            }
            int i10 = a.f81322a[type.ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 7 ? i10 != 10 ? G(type) : "highp float" : "highp float4" : "highp float" : "highp float4" : "highp float3" : "highp float2";
        }

        public static String F(String id2) {
            return id2.replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME);
        }

        public static String G(C type) {
            if (type == null) {
                return TypedValues.Custom.S_FLOAT;
            }
            switch (a.f81322a[type.ordinal()]) {
                case 1:
                    return "float2";
                case 2:
                    return "float3";
                case 3:
                    return "float4";
                case 4:
                case 10:
                default:
                    return TypedValues.Custom.S_FLOAT;
                case 5:
                    return "sampler2D";
                case 6:
                    return "samplerCube";
                case 7:
                    return "float4";
                case 8:
                    return "mat3";
                case 9:
                    return "mat4";
                case 11:
                    return "bool";
            }
        }

        public String A(ShaderGraphNode node, int outputIndex, w stage) {
            String str;
            String[] strArr = (stage == w.VERTEX ? this.f81328f : this.f81329g).get(node.j());
            return (strArr == null || (str = strArr[outputIndex]) == null) ? c(node, outputIndex, stage, z(node, outputIndex)) : str;
        }

        public List<ec.f> B() {
            return new SteppedArrayList(this.f81334l.values());
        }

        public List<ec.g> C() {
            return new SteppedArrayList(this.f81335m.values());
        }

        public boolean E(ShaderGraphNode node, w stage) {
            if (node == null) {
                return false;
            }
            w u10 = node.u();
            w wVar = w.VERTEX;
            if (stage == wVar && u10 == w.FRAGMENT) {
                return false;
            }
            w wVar2 = w.FRAGMENT;
            if (stage == wVar2 && u10 == wVar) {
                return false;
            }
            if (stage == wVar) {
                return this.f81325c.contains(node.j());
            }
            if (stage == wVar2) {
                return this.f81326d.contains(node.j());
            }
            return false;
        }

        @Override
        public ShaderGraphData a() {
            return this.f81323a;
        }

        @Override
        public C b(ShaderGraphNode node, int inputIndex) {
            ShaderGraphNode shaderGraphNode;
            ShaderGraphSlot[] m10 = node.m();
            C c10 = C.NUMBER;
            if (m10 != null && inputIndex >= 0 && inputIndex < m10.length) {
                c10 = m10[inputIndex].type;
            }
            ShaderGraphNodeConnection l10 = h.l(this.f81323a, node.j(), inputIndex);
            return (l10 == null || (shaderGraphNode = this.f81324b.get(l10.fromNodeId)) == null) ? c10 : shaderGraphNode.D(l10.fromSlot, this);
        }

        @Override
        public String c(ShaderGraphNode node, int outputIndex, w stage, C type) {
            String j10 = node.j();
            w wVar = w.VERTEX;
            Map<String, String[]> map = stage == wVar ? this.f81328f : this.f81329g;
            String[] strArr = map.get(j10);
            if (strArr == null) {
                strArr = new String[node.q().length];
                map.put(j10, strArr);
            }
            if (strArr[outputIndex] == null) {
                if (type == C.TEXTURE) {
                    strArr[outputIndex] = u();
                    w(node, outputIndex, type);
                    return strArr[outputIndex];
                }
                if (type == C.CUBEMAP) {
                    strArr[outputIndex] = t();
                    w(node, outputIndex, type);
                    return strArr[outputIndex];
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("sg_");
                sb2.append(F(j10));
                sb2.append("_o");
                sb2.append(outputIndex);
                sb2.append(stage == wVar ? "_v" : "_f");
                String sb3 = sb2.toString();
                strArr[outputIndex] = sb3;
                w(node, outputIndex, type);
                h(stage, D(type) + " " + sb3 + " = " + o(type) + ";");
            }
            return strArr[outputIndex];
        }

        @Override
        public void d(ShaderGraphNode node, int outputIndex, w stage, String expression, C type) {
            if (node == null) {
                return;
            }
            Map<String, String[]> map = stage == w.VERTEX ? this.f81328f : this.f81329g;
            String[] strArr = map.get(node.j());
            if (strArr == null) {
                ShaderGraphSlot[] q10 = node.q();
                strArr = new String[q10 != null ? q10.length : 0];
                map.put(node.j(), strArr);
            }
            strArr[outputIndex] = expression;
            w(node, outputIndex, type);
            v(expression, type);
        }

        @Override
        public void e(ec.g sampler) {
            if (sampler == null) {
                return;
            }
            this.f81335m.put(sampler.b(), sampler);
        }

        @Override
        public void f(w stage, String functionCode) {
            if (functionCode == null || functionCode.isEmpty()) {
                return;
            }
            if (stage == w.VERTEX) {
                this.f81332j.add(functionCode);
            } else {
                this.f81333k.add(functionCode);
            }
        }

        @Override
        public String g(ShaderGraphNode node, int inputIndex, w stage, C desiredType) {
            ShaderGraphNodeConnection l10 = h.l(this.f81323a, node.j(), inputIndex);
            ShaderGraphSlot[] m10 = node.m();
            ShaderGraphSlot shaderGraphSlot = (m10 == null || inputIndex < 0 || inputIndex >= m10.length) ? null : m10[inputIndex];
            if (shaderGraphSlot != null) {
                shaderGraphSlot.a(node.u());
            } else {
                node.u();
            }
            if (l10 == null) {
                String p10 = p(node, inputIndex, desiredType);
                return (stage == w.VERTEX && p10 != null && p10.contains("getUV0()")) ? p10.replace("getUV0()", "v.uv0") : p10;
            }
            ShaderGraphNode shaderGraphNode = this.f81324b.get(l10.fromNodeId);
            if (shaderGraphNode == null) {
                return p(node, inputIndex, desiredType);
            }
            w u10 = shaderGraphNode.u();
            w wVar = w.VERTEX;
            if (stage != wVar || u10 != w.FRAGMENT) {
                C D10 = shaderGraphNode.D(l10.fromSlot, this);
                return y.b((stage == w.FRAGMENT && u10 == wVar) ? y(shaderGraphNode, l10.fromSlot, D10) : A(shaderGraphNode, l10.fromSlot, stage), D10, desiredType);
            }
            this.f81336n.add("Invalid stage connection: FRAGMENT -> VERTEX (from " + q(shaderGraphNode) + " out#" + l10.fromSlot + " -> to " + q(node) + " in#" + inputIndex + r(shaderGraphSlot) + ")");
            return p(node, inputIndex, desiredType);
        }

        @Override
        public void h(w stage, String codeLine) {
            if (codeLine == null || codeLine.isEmpty()) {
                return;
            }
            if (stage == w.VERTEX) {
                StringBuilder sb2 = this.f81337o;
                sb2.append(codeLine);
                sb2.append('\n');
            } else {
                StringBuilder sb3 = this.f81338p;
                sb3.append(codeLine);
                sb3.append('\n');
            }
        }

        @Override
        public void i(ec.f param) {
            if (param == null) {
                return;
            }
            this.f81334l.put(param.a(), param);
        }

        @Override
        public ShaderGraphData j() {
            return this.f81323a;
        }

        @Override
        public boolean k(ShaderGraphNode node, int inputIndex) {
            return h.l(this.f81323a, node.j(), inputIndex) != null;
        }

        public String m() {
            StringBuilder sb2 = new StringBuilder();
            if (this.f81327e) {
                sb2.append(h.m(w.FRAGMENT));
                sb2.append('\n');
            }
            Iterator<String> it = this.f81341s.values().iterator();
            while (it.hasNext()) {
                sb2.append(it.next());
                sb2.append('\n');
            }
            Iterator<String> it2 = this.f81333k.iterator();
            while (it2.hasNext()) {
                sb2.append(it2.next());
                sb2.append('\n');
            }
            sb2.append(this.f81327e ? "void easyMaterial(inout MaterialInputs material, SubMaterialData smData) {\n" : "void material(inout MaterialInputs material) {\n");
            sb2.append((CharSequence) this.f81338p);
            sb2.append("}\n");
            return sb2.toString();
        }

        public String n() {
            StringBuilder sb2 = new StringBuilder();
            if (this.f81327e) {
                sb2.append(h.m(w.VERTEX));
                sb2.append('\n');
            }
            Iterator<String> it = this.f81341s.values().iterator();
            while (it.hasNext()) {
                sb2.append(it.next());
                sb2.append('\n');
            }
            Iterator<String> it2 = this.f81332j.iterator();
            while (it2.hasNext()) {
                sb2.append(it2.next());
                sb2.append('\n');
            }
            sb2.append(this.f81327e ? "void easyVertex(inout MaterialVertexInputs v) {\n" : "void materialVertex(inout MaterialVertexInputs v) {\n");
            sb2.append((CharSequence) this.f81337o);
            sb2.append("}\n");
            return sb2.toString();
        }

        public final String o(C type) {
            if (type == null) {
                return "0.0";
            }
            if (type == C.COLOR) {
                return "float4(1.0)";
            }
            int i10 = a.f81322a[type.ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 5 ? i10 != 6 ? "0.0" : t() : u() : "float4(0.0)" : "float3(0.0)" : "float2(0.0)";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final String p(ShaderGraphNode node, int inputIndex, C desiredType) {
            String d10;
            ShaderGraphInputDefault k10;
            if (node != 0 && (k10 = node.k(inputIndex)) != null) {
                C c10 = k10.type;
                C c11 = C.TEXTURE;
                if (c10 == c11 && desiredType == c11) {
                    return x(k10.fileIPP);
                }
                C c12 = C.CUBEMAP;
                if (c10 == c12 && desiredType == c12) {
                    return s(k10.fileIPP);
                }
                if (c10 != null && c10 != c11 && c10 != c12) {
                    return y.b(k10.j(), k10.type, desiredType);
                }
            }
            return (!(node instanceof B) || (d10 = ((B) node).d(inputIndex, desiredType)) == null) ? desiredType == C.TEXTURE ? u() : desiredType == C.CUBEMAP ? t() : o(desiredType) : d10;
        }

        public final String q(ShaderGraphNode node) {
            if (node == null) {
                return "null";
            }
            String v10 = node.v(this.f81323a);
            if (v10 == null || v10.isEmpty()) {
                v10 = node.serializedNodeType;
            }
            if (v10 == null || v10.isEmpty()) {
                v10 = node.getClass().getSimpleName();
            }
            return v10 + " [" + node.j() + "]";
        }

        public final String r(ShaderGraphSlot slot) {
            String str;
            if (slot == null || (str = slot.name) == null || str.isEmpty()) {
                return "";
            }
            return " (" + slot.name + ")";
        }

        public final String s(String file) {
            String str;
            if (file == null) {
                file = "";
            }
            if (file.isEmpty()) {
                str = "sgp_cube_0";
            } else {
                str = "sgp_cube_" + Math.abs(file.hashCode());
            }
            e(new ec.g(MaterialBuilder.m.SAMPLER_CUBEMAP, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, str));
            return "materialParams_" + str;
        }

        public final String t() {
            e(new ec.g(MaterialBuilder.m.SAMPLER_CUBEMAP, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "sg_default_cubemap"));
            return "materialParams_sg_default_cubemap";
        }

        public final String u() {
            e(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "sg_default_texture"));
            return "materialParams_sg_default_texture";
        }

        public final void v(String expression, C type) {
            String substring;
            if (expression == null || type == null) {
                return;
            }
            if (type == C.COLOR) {
                type = C.FLOAT4;
            }
            if (expression.startsWith("materialParams_")) {
                substring = expression.substring(15);
            } else if (!expression.startsWith("materialParams.")) {
                return;
            } else {
                substring = expression.substring(15);
            }
            if (substring.isEmpty()) {
                return;
            }
            switch (a.f81322a[type.ordinal()]) {
                case 1:
                    i(new ec.f(MaterialBuilder.r.FLOAT2, substring));
                    return;
                case 2:
                    i(new ec.f(MaterialBuilder.r.FLOAT3, substring));
                    return;
                case 3:
                    i(new ec.f(MaterialBuilder.r.FLOAT4, substring));
                    return;
                case 4:
                    i(new ec.f(MaterialBuilder.r.FLOAT, substring));
                    return;
                case 5:
                    e(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, substring));
                    return;
                case 6:
                    e(new ec.g(MaterialBuilder.m.SAMPLER_CUBEMAP, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, substring));
                    return;
                default:
                    return;
            }
        }

        public final void w(ShaderGraphNode node, int outputIndex, C type) {
            String j10 = node.j();
            C[] cArr = this.f81331i.get(j10);
            if (cArr == null) {
                cArr = new C[node.q().length];
                this.f81331i.put(j10, cArr);
            }
            if (cArr[outputIndex] == null) {
                cArr[outputIndex] = type;
            }
        }

        public final String x(String file) {
            String str;
            if (file == null) {
                file = "";
            }
            if (file.isEmpty()) {
                str = "sgp_tex_0";
            } else {
                str = "sgp_tex_" + Math.abs(file.hashCode());
            }
            e(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, str));
            return "materialParams_" + str;
        }

        public final String y(ShaderGraphNode node, int outputIndex, C type) {
            String j10 = node.j();
            String[] strArr = this.f81330h.get(j10);
            if (strArr == null) {
                strArr = new String[node.q().length];
                this.f81330h.put(j10, strArr);
            }
            if (strArr[outputIndex] == null) {
                String str = "sg_v_" + F(j10) + "_o" + outputIndex;
                strArr[outputIndex] = str;
                this.f81341s.put(str, "varying highp " + G(type) + " " + str + ";");
                w wVar = w.VERTEX;
                h(wVar, str + " = " + A(node, outputIndex, wVar) + ";");
            }
            return strArr[outputIndex];
        }

        public final C z(ShaderGraphNode node, int outputIndex) {
            C[] cArr = this.f81331i.get(node.j());
            if (cArr == null || cArr[outputIndex] == null) {
                w(node, outputIndex, node.D(outputIndex, this));
            }
            return this.f81331i.get(node.j())[outputIndex];
        }
    }

    public static void c(List<ec.f> base, List<ec.f> extra) {
        if (base == null || extra == null || extra.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (ec.f fVar : base) {
            if (fVar != null && fVar.a() != null && !fVar.a().isEmpty()) {
                hashSet.add(fVar.a());
            }
        }
        for (ec.f fVar2 : extra) {
            if (fVar2 != null && fVar2.a() != null && !fVar2.a().isEmpty() && hashSet.add(fVar2.a())) {
                base.add(fVar2);
            }
        }
    }

    public static void d(List<ec.g> base, List<ec.g> extra) {
        if (base == null || extra == null || extra.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (ec.g gVar : base) {
            if (gVar != null && gVar.b() != null && !gVar.b().isEmpty()) {
                hashSet.add(gVar.b());
            }
        }
        for (ec.g gVar2 : extra) {
            if (gVar2 != null && gVar2.b() != null && !gVar2.b().isEmpty() && hashSet.add(gVar2.b())) {
                base.add(gVar2);
            }
        }
    }

    public static String e(b ctx, ShaderGraphData data, Map<String, ShaderGraphNode> nodeMap, ShaderGraphNode node, w stage) {
        ShaderGraphBranchConnection k10;
        String str;
        String c10;
        if (ctx != null && data != null && node != null && (k10 = k(data, node.j())) != null && (str = k10.fromNodeId) != null) {
            Object obj = nodeMap != null ? (ShaderGraphNode) nodeMap.get(str) : null;
            if (obj == null) {
                obj = data.f(k10.fromNodeId);
            }
            if ((obj instanceof e) && (c10 = ((e) obj).c(ctx, stage)) != null && !c10.isEmpty()) {
                if (k10.fromSlot != 1) {
                    return c10;
                }
                return "!(" + c10 + ")";
            }
        }
        return null;
    }

    public static Map<String, ShaderGraphNode> f(ShaderGraphData data) {
        HashMap hashMap = new HashMap();
        for (ShaderGraphNode shaderGraphNode : data.f81295a) {
            hashMap.put(shaderGraphNode.j(), shaderGraphNode);
        }
        return hashMap;
    }

    public static Set<String> g(ShaderGraphData data, Map<String, ShaderGraphNode> nodeMap, ShaderGraphNode target, w stage) {
        ShaderGraphNodeConnection l10;
        ShaderGraphNode shaderGraphNode;
        ShaderGraphNode shaderGraphNode2;
        HashSet hashSet = new HashSet();
        if (data == null || target == null || !(stage != w.VERTEX || target.w() || o(data, target))) {
            return hashSet;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(target);
        while (!arrayDeque.isEmpty()) {
            ShaderGraphNode shaderGraphNode3 = (ShaderGraphNode) arrayDeque.pop();
            if (shaderGraphNode3 != null && hashSet.add(shaderGraphNode3.j())) {
                ShaderGraphBranchConnection k10 = k(data, shaderGraphNode3.j());
                if (k10 != null && (shaderGraphNode2 = nodeMap.get(k10.fromNodeId)) != null) {
                    arrayDeque.push(shaderGraphNode2);
                }
                ShaderGraphSlot[] m10 = shaderGraphNode3.m();
                if (m10 != null) {
                    for (int i10 = 0; i10 < m10.length; i10++) {
                        ShaderGraphSlot shaderGraphSlot = m10[i10];
                        if (q(shaderGraphSlot != null ? shaderGraphSlot.a(shaderGraphNode3.u()) : shaderGraphNode3.u(), stage) && (l10 = l(data, shaderGraphNode3.j(), i10)) != null && (shaderGraphNode = nodeMap.get(l10.fromNodeId)) != null) {
                            arrayDeque.push(shaderGraphNode);
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    public static boolean i(ShaderGraphNode node, ShaderGraphData data, Map<String, ShaderGraphNode> map, Set<String> visited, Set<String> stack) {
        if (node == null) {
            return false;
        }
        String j10 = node.j();
        if (stack.contains(j10)) {
            return true;
        }
        if (visited.contains(j10)) {
            return false;
        }
        visited.add(j10);
        stack.add(j10);
        ShaderGraphBranchConnection k10 = k(data, j10);
        if (k10 != null && i(map.get(k10.fromNodeId), data, map, visited, stack)) {
            return true;
        }
        ShaderGraphSlot[] m10 = node.m();
        if (m10 != null) {
            for (int i10 = 0; i10 < m10.length; i10++) {
                ShaderGraphNodeConnection l10 = l(data, j10, i10);
                if (l10 != null && i(map.get(l10.fromNodeId), data, map, visited, stack)) {
                    return true;
                }
            }
        }
        stack.remove(j10);
        return false;
    }

    public static void j(ShaderGraphNode node, ShaderGraphData data, Map<String, ShaderGraphNode> map, Set<String> visited, Set<String> visiting, List<ShaderGraphNode> order) {
        if (node == null) {
            return;
        }
        String j10 = node.j();
        if (visited.contains(j10) || visiting.contains(j10)) {
            return;
        }
        visiting.add(j10);
        ShaderGraphBranchConnection k10 = k(data, j10);
        if (k10 != null) {
            j(map.get(k10.fromNodeId), data, map, visited, visiting, order);
        }
        ShaderGraphSlot[] m10 = node.m();
        if (m10 != null) {
            for (int i10 = 0; i10 < m10.length; i10++) {
                ShaderGraphNodeConnection l10 = l(data, node.j(), i10);
                if (l10 != null) {
                    j(map.get(l10.fromNodeId), data, map, visited, visiting, order);
                }
            }
        }
        visiting.remove(j10);
        visited.add(j10);
        order.add(node);
    }

    public static ShaderGraphBranchConnection k(ShaderGraphData data, String toNodeId) {
        List<ShaderGraphBranchConnection> list;
        if (data != null && (list = data.branchConnections) != null && toNodeId != null) {
            for (ShaderGraphBranchConnection shaderGraphBranchConnection : list) {
                if (shaderGraphBranchConnection != null && toNodeId.equals(shaderGraphBranchConnection.toNodeId)) {
                    return shaderGraphBranchConnection;
                }
            }
        }
        return null;
    }

    public static ShaderGraphNodeConnection l(ShaderGraphData data, String nodeId, int inputIndex) {
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

    public static String m(w stage) {
        if (stage == w.FRAGMENT) {
            if (f81321b == null) {
                f81321b = C4173d.q(v.c(C4173d.n(C4173d.f34729p)), null).replace("[INSERT_CODE]", "");
            }
            return f81321b;
        }
        if (f81320a == null) {
            f81320a = C4173d.q(v.c(C4173d.n(C4173d.f34730q)), null).replace("[INSERT_CODE]", "");
        }
        return f81320a;
    }

    public static boolean n(ShaderGraphData data) {
        Map<String, ShaderGraphNode> f10 = f(data);
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator<ShaderGraphNode> it = data.f81295a.iterator();
        while (it.hasNext()) {
            if (i(it.next(), data, f10, hashSet, hashSet2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean o(ShaderGraphData data, ShaderGraphNode target) {
        ShaderGraphSlot[] m10;
        if (data == null || target == null || (m10 = target.m()) == null) {
            return false;
        }
        for (int i10 = 0; i10 < m10.length; i10++) {
            ShaderGraphSlot shaderGraphSlot = m10[i10];
            if (shaderGraphSlot != null && shaderGraphSlot.a(target.u()) == w.VERTEX && l(data, target.j(), i10) != null) {
                return true;
            }
        }
        return false;
    }

    public static boolean p(ShaderGraphData graphData, ShaderGraphNode targetNode) {
        ShaderGraphSettings shaderGraphSettings;
        if (graphData == null || (shaderGraphSettings = graphData.settings) == null) {
            return false;
        }
        return targetNode instanceof N0 ? ((N0) targetNode).I(graphData) : !shaderGraphSettings.isPostProcessing;
    }

    public static boolean q(w slotStage, w desired) {
        w wVar = w.VERTEX;
        if (desired == wVar) {
            return slotStage == wVar || slotStage == w.BOTH;
        }
        w wVar2 = w.FRAGMENT;
        if (desired == wVar2) {
            return slotStage == wVar2 || slotStage == w.BOTH;
        }
        return false;
    }

    public static List<ShaderGraphNode> r(ShaderGraphData data, ShaderGraphNode target) {
        Map<String, ShaderGraphNode> f10 = f(data);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        j(target, data, f10, new HashSet(), new HashSet(), steppedArrayList);
        return steppedArrayList;
    }

    public f h(ShaderGraphData graphData, ShaderGraphNode targetNode) {
        String b10;
        f fVar = new f();
        if (graphData == null || targetNode == null) {
            fVar.f81319e.add("Invalid graph or target node");
            return fVar;
        }
        graphData.e();
        r.a();
        if (n(graphData)) {
            throw new RuntimeException("Shader graph has a loop (DAG required)");
        }
        Map<String, ShaderGraphNode> f10 = f(graphData);
        List<ShaderGraphNode> r10 = r(graphData, targetNode);
        if (r10.isEmpty()) {
            fVar.f81319e.add("No nodes to compile");
            return fVar;
        }
        Set<String> g10 = g(graphData, f10, targetNode, w.VERTEX);
        Set<String> g11 = g(graphData, f10, targetNode, w.FRAGMENT);
        boolean p10 = p(graphData, targetNode);
        b bVar = new b(graphData, f10, g10, g11, p10);
        for (ShaderGraphNode shaderGraphNode : r10) {
            w wVar = w.VERTEX;
            if (bVar.E(shaderGraphNode, wVar)) {
                String e10 = e(bVar, graphData, f10, shaderGraphNode, wVar);
                if (e10 == null || e10.isEmpty()) {
                    shaderGraphNode.h(bVar, wVar);
                } else {
                    bVar.h(wVar, "if (" + e10 + ") {");
                    shaderGraphNode.h(bVar, wVar);
                    bVar.h(wVar, VectorFormat.DEFAULT_SUFFIX);
                }
            }
        }
        for (ShaderGraphNode shaderGraphNode2 : r10) {
            w wVar2 = w.FRAGMENT;
            if (bVar.E(shaderGraphNode2, wVar2)) {
                String e11 = e(bVar, graphData, f10, shaderGraphNode2, wVar2);
                if (e11 == null || e11.isEmpty()) {
                    shaderGraphNode2.h(bVar, wVar2);
                } else {
                    bVar.h(wVar2, "if (" + e11 + ") {");
                    shaderGraphNode2.h(bVar, wVar2);
                    bVar.h(wVar2, VectorFormat.DEFAULT_SUFFIX);
                }
            }
        }
        if (!targetNode.w()) {
            C D10 = targetNode.D(0, bVar);
            w u10 = targetNode.u();
            w wVar3 = w.VERTEX;
            if (u10 == wVar3) {
                bVar.h(wVar3, "v.worldPosition = float4(" + y.b(bVar.A(targetNode, 0, wVar3), D10, C.FLOAT3) + ", v.worldPosition.w);");
                w wVar4 = w.FRAGMENT;
                bVar.h(wVar4, "material.normal = float3(0.0, 0.0, 1.0);");
                bVar.h(wVar4, "prepareMaterial(material);");
                bVar.h(wVar4, "material.baseColor = float4(1.0);");
            } else {
                if (D10 == C.TEXTURE) {
                    b10 = "texture(" + bVar.A(targetNode, 0, w.FRAGMENT) + ", getUV0())";
                } else if (D10 == C.CUBEMAP) {
                    b10 = "texture(" + bVar.A(targetNode, 0, w.FRAGMENT) + ", float3(getUV0(), 1.0))";
                } else {
                    b10 = y.b(bVar.A(targetNode, 0, w.FRAGMENT), D10, C.FLOAT4);
                }
                w wVar5 = w.FRAGMENT;
                bVar.h(wVar5, "material.normal = float3(0.0, 0.0, 1.0);");
                bVar.h(wVar5, "prepareMaterial(material);");
                bVar.h(wVar5, "material.baseColor = " + b10 + ";");
            }
        }
        String n10 = bVar.n();
        String m10 = bVar.m();
        fVar.f81315a = n10;
        fVar.f81316b = m10;
        fVar.f81317c.addAll(bVar.B());
        c(fVar.f81317c, nc.h.o());
        fVar.f81318d.addAll(bVar.C());
        if (p10) {
            d(fVar.f81318d, C14377b.l());
        }
        d(fVar.f81318d, nc.h.p());
        fVar.f81319e.addAll(bVar.f81336n);
        return fVar;
    }
}
