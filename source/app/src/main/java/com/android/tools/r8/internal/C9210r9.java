package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.internal.C10656zq0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

public class C9210r9 extends C6063Va {

    public static final boolean f51982s = true;

    public final HashSet f51983j = new HashSet();

    public final ArrayList f51984k = new ArrayList();

    public final HashSet f51985l = new HashSet();

    public final HashSet f51986m = new HashSet();

    public ArrayList f51987n = null;

    public C9115qd0 f51988o = null;

    public boolean f51989p = false;

    public StringBuilder f51990q = null;

    public final AbstractC8552nC f51991r = new C8051kC(4).a(Signature.SIG_BOOLEAN, "booleanType").a(Signature.SIG_BYTE, "byteType").a(Signature.SIG_CHAR, "charType").a(Signature.SIG_DOUBLE, "doubleType").a(Signature.SIG_FLOAT, "floatType").a(Signature.SIG_INT, "intType").a(Signature.SIG_LONG, "longType").a("S", "shortType").a("V", "voidType").a("[Z", "booleanArrayType").a("[B", "byteArrayType").a("[C", "charArrayType").a("[D", "doubleArrayType").a("[F", "floatArrayType").a("[I", "intArrayType").a("[J", "longArrayType").a("[S", "shortArrayType").a("Ljava/lang/Object;", "objectType").a("Ljava/lang/Class;", "classType").a("Ljava/lang/Throwable;", "throwableType").a("Ljava/lang/String;", "stringType").a("Ljava/lang/Character;", "boxedCharType").a("Ljava/lang/CharSequence;", "charSequenceType").a("Ljava/lang/StringBuilder;", "stringBuilderType").a("Ljava/lang/AutoCloseable;", "autoCloseableType").a();

    public static String b(String str) {
        return JavadocConstants.ANCHOR_PREFIX_END + str + JavadocConstants.ANCHOR_PREFIX_END;
    }

    @Override
    public final void a(C5541Ma c5541Ma) {
    }

    public final String c(C8103ka c8103ka) {
        return "label" + this.f51988o.b(c8103ka);
    }

    @Override
    public final void d() {
    }

    @Override
    public final void e() {
        a("CfThrow", new String[0]);
    }

    @Override
    public final void f() {
        a("CfConstNull", new String[0]);
    }

    @Override
    public final void g() {
        a("CfReturnVoid", new String[0]);
    }

    @Override
    public final void h() {
        a("CfArrayLength", new String[0]);
    }

    public final String i() {
        return a("FrameType", (List) AbstractC7552hC.a("cf", "code", TypedValues.AttributesType.S_FRAME));
    }

    public Set<String> j() {
        return this.f51983j;
    }

    public List<String> k() {
        ArrayList arrayList = new ArrayList(this.f51983j);
        arrayList.sort(new Jo1());
        return arrayList;
    }

    public List<String> l() {
        return this.f51984k;
    }

    public Set<String> m() {
        return this.f51986m;
    }

    public void a(String str, com.android.tools.r8.graph.G g10) {
        if (this.f51985l.add(str)) {
            this.f51988o = new C9115qd0();
            this.f51987n = new ArrayList();
            this.f51989p = false;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("public static ");
            sb2.append(a("CfCode", Collections.singletonList("graph")));
            sb2.append(" ");
            sb2.append(str);
            sb2.append("(");
            sb2.append(a("DexItemFactory", Collections.singletonList("graph")));
            sb2.append(" factory, ");
            sb2.append(a("DexMethod", Collections.singletonList("graph")));
            sb2.append(" method) {");
            this.f51990q = sb2;
            for (W9 w92 : g10.E0()) {
                if (w92 instanceof C8103ka) {
                    C8103ka c8103ka = (C8103ka) w92;
                    this.f51988o.b(this.f51987n.size(), c8103ka);
                    this.f51987n.add(c8103ka);
                    StringBuilder sb3 = this.f51990q;
                    sb3.append("CfLabel ");
                    sb3.append(c(c8103ka));
                    sb3.append(" = new " + a("CfLabel", (List) AbstractC7552hC.a("cf", "code")) + "();");
                }
            }
            StringBuilder sb4 = this.f51990q;
            sb4.append("return new " + a("CfCode", Collections.singletonList("graph")) + "(");
            sb4.append("method.holder,");
            sb4.append(g10.f36304g);
            sb4.append(DocLint.SEPARATOR);
            sb4.append(g10.G0());
            sb4.append(DocLint.SEPARATOR);
            sb4.append(a("ImmutableList", AbstractC7552hC.a("com", "google", "common", "collect")));
            sb4.append(".of(");
            Iterator<W9> it = g10.E0().iterator();
            while (it.hasNext()) {
                it.next().a(this);
            }
            StringBuilder sb5 = this.f51990q;
            sb5.append("),");
            sb5.append(a("ImmutableList", AbstractC7552hC.a("com", "google", "common", "collect")));
            sb5.append(".of(");
            this.f51989p = false;
            for (C5023Db c5023Db : g10.I0()) {
                String str2 = (String) c5023Db.f39558c.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C9210r9.this.c((com.android.tools.r8.graph.M2) obj);
                    }
                }).collect(Collectors.joining(", "));
                String str3 = (String) c5023Db.f39559d.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C9210r9.this.c((C8103ka) obj);
                    }
                }).collect(Collectors.joining(", "));
                a("CfTryCatch", c(c5023Db.f39556a), c(c5023Db.f39557b), a("ImmutableList", AbstractC7552hC.a("com", "google", "common", "collect")) + ".of(" + str2 + ")", a("ImmutableList", AbstractC7552hC.a("com", "google", "common", "collect")) + ".of(" + str3 + ")");
            }
            StringBuilder sb6 = this.f51990q;
            sb6.append("),");
            sb6.append(a("ImmutableList", AbstractC7552hC.a("com", "google", "common", "collect")));
            sb6.append(".of());");
            sb6.append(VectorFormat.DEFAULT_SUFFIX);
            this.f51984k.add(this.f51990q.toString());
            return;
        }
        throw new IllegalStateException("Invalid attempt to visit the same method twice: " + str);
    }

    public final String b(EnumC5477Kw0 enumC5477Kw0) {
        return a("ValueType", (List) AbstractC7552hC.a("ir", "code")) + "." + enumC5477Kw0.name();
    }

    public final String c(com.android.tools.r8.graph.M2 m22) {
        String V02 = m22.V0();
        String str = (String) this.f51991r.get(V02);
        if (str != null) {
            return "factory." + str;
        }
        this.f51986m.add(V02);
        return "factory.createType(" + b(V02) + ")";
    }

    public final String b(YV yv) {
        return a("MemberType", (List) AbstractC7552hC.a("ir", "code")) + "." + yv.name();
    }

    @Override
    public final void b(C8103ka c8103ka) {
        if (this.f51989p) {
            this.f51990q.append(DocLint.SEPARATOR);
        }
        this.f51989p = true;
        this.f51990q.append(c(c8103ka));
    }

    public final String c(G9 g92) {
        String a10 = C10656zq0.a(DocLint.SEPARATOR, g92.f40405d, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9210r9.this.b((S60) obj);
            }
        });
        return "new " + a("ArrayDeque", AbstractC7552hC.a(SuffixConstants.EXTENSION_java, "util")) + "<>(" + a("Arrays", AbstractC7552hC.a(SuffixConstants.EXTENSION_java, "util")) + ".asList(" + a10 + "))";
    }

    public final String b(G9 g92) {
        String a10 = C10656zq0.a(DocLint.SEPARATOR, g92.f40404c.o());
        String a11 = C10656zq0.a(DocLint.SEPARATOR, g92.f40404c.values(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9210r9.this.b((InterfaceC8008jy) obj);
            }
        });
        return "new " + a("Int2ObjectAVLTreeMap", AbstractC7552hC.a("it", "unimi", "dsi", "fastutil", "ints")) + "<>(new int[] {" + a10 + "},new " + i() + "[] { " + a11 + " })";
    }

    public final String b(InterfaceC8008jy interfaceC8008jy) {
        if (interfaceC8008jy.f()) {
            return i() + ".oneWord()";
        }
        if (interfaceC8008jy.c()) {
            return i() + ".twoWord()";
        }
        if (interfaceC8008jy.i()) {
            return i() + ".uninitializedThis()";
        }
        if (interfaceC8008jy.y()) {
            return i() + ".uninitializedNew(new " + a("CfLabel", (List) AbstractC7552hC.a("cf", "code")) + "())";
        }
        if (interfaceC8008jy.isPrimitive()) {
            if (interfaceC8008jy.r()) {
                return i() + "." + interfaceC8008jy.e().J().getTypeName() + "HighType()";
            }
            return i() + "." + interfaceC8008jy.asPrimitive().getTypeName() + "Type()";
        }
        boolean z10 = f51982s;
        if (!z10 && !interfaceC8008jy.F()) {
            throw new AssertionError();
        }
        if (!z10 && interfaceC8008jy.B()) {
            throw new AssertionError((Object) "Unexpected InitializedNonNullReferenceTypeWithInterfaces in CfFrame");
        }
        if (interfaceC8008jy.d()) {
            return i() + ".nullType()";
        }
        if (!z10 && !interfaceC8008jy.m()) {
            throw new AssertionError();
        }
        return i() + ".initializedNonNullReference(" + c(interfaceC8008jy.b().f39470c) + ")";
    }

    @Override
    public final void a(G9 g92) {
        if (g92.f40404c.isEmpty()) {
            if (g92.f40405d.isEmpty()) {
                a(a("CfFrame", (List) AbstractC7552hC.a("cf", "code")), new String[0]);
                return;
            } else {
                a(a("CfFrame", (List) AbstractC7552hC.a("cf", "code")), c(g92));
                return;
            }
        }
        if (g92.f40405d.isEmpty()) {
            a(a("CfFrame", (List) AbstractC7552hC.a("cf", "code")), b(g92));
        } else {
            a(a("CfFrame", (List) AbstractC7552hC.a("cf", "code")), b(g92), c(g92));
        }
    }

    public static String a(long j10) {
        StringBuilder sb2;
        if (j10 < -2147483648L || 2147483647L < j10) {
            sb2 = new StringBuilder();
            sb2.append(j10);
            sb2.append("L");
        } else {
            sb2 = new StringBuilder();
            sb2.append(j10);
        }
        return sb2.toString();
    }

    public final String a(String str, AbstractC7552hC abstractC7552hC) {
        boolean z10 = f51982s;
        if (!z10 && str.contains(".")) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC7552hC.stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean contains;
                contains = ((String) obj).contains(".");
                return contains;
            }
        })) {
            throw new AssertionError();
        }
        this.f51983j.add(String.join(".", abstractC7552hC) + "." + str);
        return str;
    }

    public final String a(T10 t10) {
        return a("NumericType", (List) AbstractC7552hC.a("ir", "code")) + "." + t10.name();
    }

    public final String a(NB nb2) {
        return a("IfType", (List) AbstractC7552hC.a("ir", "code")) + "." + nb2.name();
    }

    public final String a(XX xx) {
        return a("MonitorType", (List) AbstractC7552hC.a("ir", "code")) + "." + xx.name();
    }

    public static String a(com.android.tools.r8.graph.L2 l22) {
        return "factory.createString(" + b(l22.toString()) + ")";
    }

    public final String a(com.android.tools.r8.graph.A2 a22) {
        String c10 = c(a22.f38297f);
        com.android.tools.r8.graph.I2 i22 = a22.f36127i;
        StringBuilder sb2 = new StringBuilder("factory.createProto(");
        sb2.append(c(i22.f36440e));
        for (com.android.tools.r8.graph.M2 m22 : i22.f36441f.f36675b) {
            sb2.append(", ");
            sb2.append(c(m22));
        }
        sb2.append(")");
        return "factory.createMethod(" + c10 + ", " + sb2.toString() + ", " + a(a22.f38298g) + ")";
    }

    public final String a(C4554l1 c4554l1) {
        return "factory.createField(" + c(c4554l1.f38297f) + ", " + c(c4554l1.f37449i) + ", " + a(c4554l1.f38298g) + ")";
    }

    public final void a(String str, String... strArr) {
        if (this.f51989p) {
            this.f51990q.append(DocLint.SEPARATOR);
        }
        this.f51989p = true;
        StringBuilder sb2 = this.f51990q;
        sb2.append("new ");
        sb2.append(a(str, (List) AbstractC7552hC.a("cf", "code")));
        C10656zq0.a(this.f51990q, Arrays.asList(strArr), ", ", C10656zq0.a.f54549b);
    }

    public final void a(String str, EnumC5477Kw0 enumC5477Kw0, int i10) {
        String b10 = b(enumC5477Kw0);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        a(str, b10, sb2.toString());
    }

    @Override
    public final void a(C8106kb c8106kb) {
        a("CfStackInstruction", a("CfStackInstruction", (List) AbstractC7552hC.a("cf", "code")) + ".Opcode." + c8106kb.V().name());
    }

    @Override
    public final void a(C10546z9 c10546z9) {
        a("CfConstNumber", a(c10546z9.V()), b(c10546z9.f54295d));
    }

    @Override
    public final void a(C9544t9 c9544t9) {
        a("CfConstClass", c(c9544t9.getType()));
    }

    @Override
    public final void a(C9711u9 c9711u9) {
        throw new C6501av0(C9711u9.class.getSimpleName());
    }

    @Override
    public final void a(C6440ab c6440ab) {
        a("CfReturn", b(c6440ab.W()));
    }

    @Override
    public final void a(C9438sa c9438sa) {
        a("CfMonitor", a(c9438sa.V()));
    }

    @Override
    public final void a(V8 v82) {
        a("CfArithmeticBinop", a("CfArithmeticBinop", (List) AbstractC7552hC.a("cf", "code")) + ".Opcode." + v82.V().name(), a(v82.W()));
    }

    @Override
    public final void a(C9044q9 c9044q9) {
        a("CfCmp", a("Cmp", (List) AbstractC7552hC.a("ir", "code")) + ".Bias." + c9044q9.f51725c.name(), a(c9044q9.f51726d));
    }

    @Override
    public final void a(C9271ra c9271ra) {
        a("CfLogicalBinop", a("CfLogicalBinop", (List) AbstractC7552hC.a("cf", "code")) + ".Opcode." + c9271ra.f52066c.name(), a(c9271ra.V()));
    }

    @Override
    public final void a(C9939va c9939va) {
        a("CfNeg", a(c9939va.f53147c));
    }

    @Override
    public final void a(C4904Ba c4904Ba) {
        a("CfNumberConversion", a(c4904Ba.f38940c), a(c4904Ba.f38941d));
    }

    @Override
    public final void a(A9 a92) {
        a("CfConstString", a(a92.V()));
    }

    @Override
    public final void a(E9 e92) {
        throw new C6501av0(E9.class.getSimpleName());
    }

    @Override
    public final void a(X8 x82) {
        a("CfArrayLoad", b(x82.f45936c));
    }

    @Override
    public final void a(Z8 z82) {
        a("CfArrayStore", b(z82.f45936c));
    }

    @Override
    public final void a(C7437ga c7437ga) {
        a("CfInvoke", Integer.toString(c7437ga.W()), a(c7437ga.V()), Boolean.toString(c7437ga.X()));
    }

    @Override
    public final void a(C7604ha c7604ha) {
        throw new C6501av0(c7604ha.getClass().getSimpleName());
    }

    @Override
    public final void a(V9 v92) {
        a("CfInstanceOf", c(v92.getType()));
    }

    @Override
    public final void a(C7710i9 c7710i9) {
        a("CfCheckCast", c(c7710i9.getType()));
    }

    @Override
    public final void a(F9 f92) {
        switch (f92.B()) {
            case 178:
                a("CfStaticFieldRead", a(f92.getField()));
                return;
            case 179:
                a("CfStaticFieldWrite", a(f92.getField()));
                return;
            case 180:
                a("CfInstanceFieldRead", a(f92.getField()));
                return;
            case 181:
                a("CfInstanceFieldWrite", a(f92.getField()));
                return;
            default:
                throw new C5417Jv0();
        }
    }

    @Override
    public final void a(C10106wa c10106wa) {
        a("CfNew", c(c10106wa.getType()));
    }

    @Override
    public final void a(C10273xa c10273xa) {
        a("CfNewArray", c(c10273xa.f53775c));
    }

    @Override
    public final void a(C9605ta c9605ta) {
        throw new C6501av0(C9605ta.class.getSimpleName());
    }

    @Override
    public final void a(M9 m92) {
        a("CfGoto", c(m92.f42195c));
    }

    @Override
    public final void a(O9 o92) {
        a("CfIf", a(o92.f52292c), b(o92.f52293d), c(o92.f52294e));
    }

    @Override
    public final void a(Q9 q92) {
        a("CfIfCmp", a(q92.f52292c), b(q92.f52293d), c(q92.f52294e));
    }

    @Override
    public final void a(C4907Bb c4907Bb) {
        throw new C6501av0(c4907Bb.getClass().getSimpleName());
    }

    @Override
    public final void a(C8938pa c8938pa) {
        a("CfLoad", c8938pa.f51555d, c8938pa.f51554c);
    }

    @Override
    public final void a(C10443yb c10443yb) {
        a("CfStore", c10443yb.f54051d, c10443yb.f54050c);
    }

    @Override
    public final void a(R9 r92) {
        a("CfIinc", Integer.toString(r92.f43819c), Integer.toString(r92.f43820d));
    }

    @Override
    public final void a(C9878v9 c9878v9) {
        throw new C6501av0(C9878v9.class.getSimpleName());
    }

    @Override
    public final void a(C10045w9 c10045w9) {
        throw new C6501av0(C10045w9.class.getSimpleName());
    }

    public final String a(String str, List list) {
        return a(str, new C7051eC().b((Iterable) AbstractC7552hC.a("com", "android", "tools", "r8")).b((Iterable) list).a());
    }
}
