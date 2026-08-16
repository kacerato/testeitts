package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import java.util.function.Consumer;

public class C5485La0 {

    public final com.android.tools.r8.graph.L2 f41979A;

    public final com.android.tools.r8.graph.L2 f41980B;

    public final com.android.tools.r8.graph.L2 f41981C;

    public final com.android.tools.r8.graph.I2 f41982D;

    public final com.android.tools.r8.graph.I2 f41983E;

    public final com.android.tools.r8.graph.A2 f41984F;

    public final com.android.tools.r8.graph.A2 f41985G;

    public final com.android.tools.r8.graph.A2 f41986H;

    public final C4554l1 f41987I;

    public final C4554l1 f41988J;

    public final C4724u1 f41989a;

    public final com.android.tools.r8.graph.M2 f41990b;

    public final com.android.tools.r8.graph.M2 f41991c;

    public final com.android.tools.r8.graph.M2 f41992d;

    public final com.android.tools.r8.graph.M2 f41993e;

    public final com.android.tools.r8.graph.M2 f41994f;

    public final com.android.tools.r8.graph.M2 f41995g;

    public final com.android.tools.r8.graph.M2 f41996h;

    public final com.android.tools.r8.graph.M2 f41997i;

    public final com.android.tools.r8.graph.M2 f41998j;

    public final com.android.tools.r8.graph.M2 f41999k;

    public final com.android.tools.r8.graph.M2 f42000l;

    public final com.android.tools.r8.graph.M2 f42001m;

    public final com.android.tools.r8.graph.M2 f42002n;

    public final com.android.tools.r8.graph.M2 f42003o;

    public final com.android.tools.r8.graph.M2 f42004p;

    public final C5195Ga0 f42005q;

    public final C5369Ja0 f42006r;

    public final C5253Ha0 f42007s;

    public final C5311Ia0 f42008t;

    public final C5427Ka0 f42009u;

    public final com.android.tools.r8.graph.L2 f42010v;

    public final com.android.tools.r8.graph.L2 f42011w;

    public final com.android.tools.r8.graph.L2 f42012x;

    public final com.android.tools.r8.graph.L2 f42013y;

    public final com.android.tools.r8.graph.L2 f42014z;

    public C5485La0(C4724u1 c4724u1) {
        this.f41989a = c4724u1;
        this.f41990b = c4724u1.d("Lcom/google/protobuf/Internal$EnumLite;");
        this.f41991c = c4724u1.d("Lcom/google/protobuf/Internal$EnumLiteMap;");
        this.f41992d = c4724u1.d("Lcom/google/protobuf/Internal$EnumVerifier;");
        this.f41993e = c4724u1.d("Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;");
        this.f41994f = c4724u1.d("Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;");
        this.f41995g = c4724u1.d("Lcom/google/protobuf/ExtensionRegistryLite;");
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;");
        this.f41996h = d10;
        com.android.tools.r8.graph.M2 d11 = c4724u1.d("Lcom/google/protobuf/GeneratedMessageLite;");
        this.f41997i = d11;
        this.f41998j = c4724u1.d("Lcom/google/protobuf/GeneratedMessageLite$Builder;");
        this.f41999k = c4724u1.d("Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;");
        this.f42000l = c4724u1.d("Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;");
        com.android.tools.r8.graph.M2 d12 = c4724u1.d("Lcom/google/protobuf/RawMessageInfo;");
        this.f42001m = d12;
        com.android.tools.r8.graph.M2 d13 = c4724u1.d("Lcom/google/protobuf/MessageLite;");
        this.f42002n = d13;
        com.android.tools.r8.graph.M2 d14 = c4724u1.d("Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;");
        this.f42003o = d14;
        this.f42004p = c4724u1.d("Lcom/google/protobuf/WireFormat$FieldType;");
        this.f42010v = c4724u1.b("DEFAULT_INSTANCE");
        this.f42011w = c4724u1.b("INSTANCE");
        this.f42012x = c4724u1.b("internalValueMap");
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("dynamicMethod");
        this.f42013y = b10;
        this.f42014z = c4724u1.b("findLiteExtensionByNumber");
        this.f41979A = c4724u1.b("newBuilder");
        this.f41980B = c4724u1.b("findValueByNumber");
        this.f41981C = c4724u1.b("Lcom/google/protobuf/");
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38068i2;
        com.android.tools.r8.graph.I2 a10 = c4724u1.a(m22, d14, m22, m22);
        this.f41982D = a10;
        this.f41983E = c4724u1.a(d10, d13, c4724u1.f37884J1);
        this.f41984F = c4724u1.a(d11, a10, b10);
        this.f41985G = c4724u1.a(d11, c4724u1.a(c4724u1.f38068i2, d13, c4724u1.f38052g2, c4724u1.f38092l2), c4724u1.b("newMessageInfo"));
        this.f41986H = c4724u1.a(d12, c4724u1.a(c4724u1.f37905M1, d13, c4724u1.f38052g2, c4724u1.f38092l2), c4724u1.f38067i1);
        this.f41987I = c4724u1.a(d12, c4724u1.f38052g2, "info");
        this.f41988J = c4724u1.a(d12, c4724u1.f38092l2, "objects");
        this.f42005q = new C5195Ga0(this, c4724u1);
        this.f42006r = new C5369Ja0(this, c4724u1);
        this.f42007s = new C5253Ha0(this, c4724u1);
        this.f42008t = new C5311Ia0(this, c4724u1);
        this.f42009u = new C5427Ka0(this, c4724u1);
    }

    public final void a(Consumer consumer) {
        C5195Ga0 c5195Ga0 = this.f42005q;
        consumer.accept(c5195Ga0.f40521a);
        consumer.accept(c5195Ga0.f40522b);
        C5369Ja0 c5369Ja0 = this.f42006r;
        consumer.accept(c5369Ja0.f41421a);
        consumer.accept(c5369Ja0.f41422b);
        consumer.accept(c5369Ja0.f41423c);
        consumer.accept(c5369Ja0.f41425e);
        consumer.accept(c5369Ja0.f41426f);
        consumer.accept(this.f42007s.f40794a);
        C5311Ia0 c5311Ia0 = this.f42008t;
        consumer.accept(c5311Ia0.f41129a);
        consumer.accept(c5311Ia0.f41130b);
        this.f42009u.getClass();
        consumer.accept(this.f41984F);
        consumer.accept(this.f41985G);
        consumer.accept(this.f41986H);
    }

    public final boolean b(com.android.tools.r8.graph.A2 a22) {
        C5369Ja0 c5369Ja0 = this.f42006r;
        return a22 == c5369Ja0.f41422b || a22 == c5369Ja0.f41423c;
    }

    public final boolean c(com.android.tools.r8.graph.A2 a22) {
        if (!a22.y0().a(this.f41983E)) {
            return false;
        }
        com.android.tools.r8.graph.L2 t02 = a22.t0();
        com.android.tools.r8.graph.L2 l22 = this.f42014z;
        t02.getClass();
        return t02.b(l22.f36562f) && !a22.s0().a(this.f41995g);
    }

    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        return a22.f38298g == this.f42013y && a22.f36127i == this.f41982D;
    }

    public boolean a(C4516j1 c4516j1) {
        return a(c4516j1.getReference());
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        return c(h52.getReference());
    }

    public final boolean a(VJ vj2) {
        if (vj2.B2().c(this.f41985G)) {
            return true;
        }
        if (vj2.a(this.f41989a)) {
            C10340xw0 C22 = vj2.c0().C2();
            if (C22.d(new C7680hz0()) && C22.r().w0().u2() == this.f42001m) {
                return true;
            }
        }
        return false;
    }
}
