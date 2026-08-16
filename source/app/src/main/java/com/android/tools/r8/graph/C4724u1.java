package com.android.tools.r8.graph;

import android.provider.ContactsContract;
import com.android.tools.r8.C11699z2;
import com.android.tools.r8.graph.O0;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6450ae0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10070wI;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6379aA;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C6899dH;
import com.android.tools.r8.internal.C6949de;
import com.android.tools.r8.internal.C7045eA;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.C8761oV;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.C9053qC;
import com.android.tools.r8.internal.D70;
import com.android.tools.r8.internal.GG;
import com.android.tools.r8.internal.IC;
import com.android.tools.r8.internal.InterfaceC10593zT;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.WQ;
import com.android.tools.r8.kotlin.C10781g;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.TypeReference;
import java.lang.constant.ConstantDescs;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import org.eclipse.jdt.core.Signature;

public class C4724u1 {

    public static final M2 f37808E6;

    public static final L2 f37809F6;

    public static final IdentityHashMap f37810G6;

    public static final AbstractC7552hC f37811H6;

    public static final AbstractC7552hC f37812I6;

    public static final AbstractC7552hC f37813J6;

    public static final boolean f37814K6 = true;

    public final L2 f37815A;

    public final L2 f37816A0;

    public final L2 f37817A1;

    public final M2 f37818A2;

    public final M2 f37819A3;

    public final K1 f37820A4;

    public final M2 f37821A5;

    public final QC f37822A6;

    public final L2 f37823B;

    public final L2 f37824B0;

    public final L2 f37825B1;

    public final M2 f37826B2;

    public final M2 f37827B3;

    public final N1 f37828B4;

    public final M2 f37829B5;

    public Set<M2> f37830B6;

    public final L2 f37831C;

    public final L2 f37832C0;

    public final L2 f37833C1;

    public final M2 f37834C2;

    public final M2 f37835C3;

    public final C4442f2 f37836C4;

    public final M2 f37837C5;

    public final QC f37838C6;

    public final L2 f37839D;

    public final L2 f37840D0;

    public final L2 f37841D1;

    public final M2 f37842D2;

    public final M2 f37843D3;

    public final C4706t2 f37844D4;

    public final M2 f37845D5;

    public boolean f37846D6;

    public final L2 f37847E;

    public final L2 f37848E0;

    public final M2 f37849E1;

    public final M2 f37850E2;

    public final M2 f37851E3;

    public final C4517j2 f37852E4;

    public final M2 f37853E5;

    public final L2 f37854F;

    public final L2 f37855F0;

    public final M2 f37856F1;

    public final M2 f37857F2;

    public final M2 f37858F3;

    public final c f37859F4;

    public final M2 f37860F5;

    public final L2 f37861G;

    public final L2 f37862G0;

    public final M2 f37863G1;

    public final M2 f37864G2;

    public final M2 f37865G3;

    public final D1 f37866G4;

    public final M2 f37867G5;

    public final L2 f37868H;

    public final L2 f37869H0;

    public final M2 f37870H1;

    public final M2 f37871H2;

    public final A2 f37872H3;

    public final C4593n2 f37873H4;

    public final M2 f37874H5;

    public final L2 f37875I;

    public final L2 f37876I0;

    public final M2 f37877I1;

    public final M2 f37878I2;

    public final M2 f37879I3;

    public final C4631p2 f37880I4;

    public final L2 f37881I5;

    public final L2 f37882J;

    public final L2 f37883J0;

    public final M2 f37884J1;

    public final M2 f37885J2;

    public final M2 f37886J3;

    public final d f37887J4;

    public final L2 f37888J5;

    public final L2 f37889K;

    public final L2 f37890K0;

    public final M2 f37891K1;

    public final M2 f37892K2;

    public final M2 f37893K3;

    public final C4687s2 f37894K4;

    public final L2 f37895K5;

    public final L2 f37896L;

    public final L2 f37897L0;

    public final M2 f37898L1;

    public final M2 f37899L2;

    public final M2 f37900L3;

    public final I1 f37901L4;

    public final L2 f37902L5;

    public final L2 f37903M;

    public final L2 f37904M0;

    public final M2 f37905M1;

    public final M2 f37906M2;

    public final M2 f37907M3;

    public final e f37908M4;

    public final L2 f37909M5;

    public final L2 f37910N;

    public final L2 f37911N0;

    public final M2 f37912N1;

    public final M2 f37913N2;

    public final I2 f37914N3;

    public final C4819z1 f37915N4;

    public final M2 f37916N5;

    public final L2 f37917O;

    public final L2 f37918O0;

    public final M2 f37919O1;

    public final M2 f37920O2;

    public final M2 f37921O3;

    public final G1 f37922O4;

    public final M2 f37923O5;

    public final L2 f37924P;

    public final L2 f37925P0;

    public final M2 f37926P1;

    public final M2 f37927P2;

    public final M2 f37928P3;

    public final H1 f37929P4;

    public final M2 f37930P5;

    public final L2 f37931Q;

    public final L2 f37932Q0;

    public final M2 f37933Q1;

    public final M2 f37934Q2;

    public final M2 f37935Q3;

    public final C4461g2 f37936Q4;

    public final M2 f37937Q5;

    public final L2 f37938R;

    public final L2 f37939R0;

    public final M2 f37940R1;

    public final M2 f37941R2;

    public final M2 f37942R3;

    public final J1 f37943R4;

    public final M2 f37944R5;

    public final L2 f37945S;

    public final L2 f37946S0;

    public final M2 f37947S1;

    public final M2 f37948S2;

    public final M2 f37949S3;

    public final S1 f37950S4;

    public final M2 f37951S5;

    public final L2 f37952T;

    public final L2 f37953T0;

    public final M2 f37954T1;

    public final M2 f37955T2;

    public final M2 f37956T3;

    public final Q1 f37957T4;

    public final M2 f37958T5;

    public final L2 f37959U;

    public final L2 f37960U0;

    public final M2 f37961U1;

    public final M2 f37962U2;

    public final M2 f37963U3;

    public final R1 f37964U4;

    public final A2 f37965U5;

    public final L2 f37966V;

    public final L2 f37967V0;

    public final M2 f37968V1;

    public final M2 f37969V2;

    public final M2 f37970V3;

    public final T1 f37971V4;

    public final A2 f37972V5;

    public final L2 f37973W;

    public final L2 f37974W0;

    public final M2 f37975W1;

    public final M2 f37976W2;

    public final M2 f37977W3;

    public final C4480h2 f37978W4;

    public final A2 f37979W5;

    public final L2 f37980X;

    public final L2 f37981X0;

    public final M2 f37982X1;

    public final M2 f37983X2;

    public final M2 f37984X3;

    public final M1 f37985X4;

    public final A2 f37986X5;

    public final L2 f37987Y;

    public final L2 f37988Y0;

    public final M2 f37989Y1;

    public final M2 f37990Y2;

    public final M2 f37991Y3;

    public final C4555l2 f37992Y4;

    public final A2 f37993Y5;

    public final L2 f37994Z;

    public final L2 f37995Z0;

    public final M2 f37996Z1;

    public final M2 f37997Z2;

    public final M2 f37998Z3;

    public final A1 f37999Z4;

    public final M2 f38000Z5;

    public final L2 f38002a0;

    public final L2 f38003a1;

    public final M2 f38004a2;

    public final M2 f38005a3;

    public final M2 f38006a4;

    public final C10781g f38007a5;

    public final M2 f38008a6;

    public final L2 f38010b0;

    public final L2 f38011b1;

    public final M2 f38012b2;

    public final M2 f38013b3;

    public final M2 f38014b4;

    public final C4536k2 f38015b5;

    public final M2 f38016b6;

    public final L2 f38018c0;

    public final L2 f38019c1;

    public final M2 f38020c2;

    public final M2 f38021c3;

    public final M2 f38022c4;

    public final C4574m2 f38023c5;

    public final M2 f38024c6;

    public final L2 f38026d0;

    public final L2 f38027d1;

    public final M2 f38028d2;

    public final M2 f38029d3;

    public final M2 f38030d4;

    public final a f38031d5;

    public final M2 f38032d6;

    public final L2 f38034e0;

    public final L2 f38035e1;

    public final M2 f38036e2;

    public final M2 f38037e3;

    public final M2 f38038e4;

    public final C4781x1 f38039e5;

    public final M2 f38040e6;

    public final L2 f38042f0;

    public final L2 f38043f1;

    public final M2 f38044f2;

    public final M2 f38045f3;

    public final M2 f38046f4;

    public final C4630p1 f38047f5;

    public final M2 f38048f6;

    public final L2 f38050g0;

    public final L2 f38051g1;

    public final M2 f38052g2;

    public final M2 f38053g3;

    public final M2 f38054g4;

    public final C4611o1 f38055g5;

    public final M2 f38056g6;

    public final L2 f38058h0;

    public final L2 f38059h1;

    public final M2 f38060h2;

    public final M2 f38061h3;

    public final M2 f38062h4;

    public final C4649q1 f38063h5;

    public final M2 f38064h6;

    public final L2 f38066i0;

    public final L2 f38067i1;

    public final M2 f38068i2;

    public final M2 f38069i3;

    public final M2 f38070i4;

    public final C4667r1 f38071i5;

    public final M2 f38072i6;

    public final L2 f38074j0;

    public final L2 f38075j1;

    public final M2 f38076j2;

    public final M2 f38077j3;

    public final M2 f38078j4;

    public final C4686s1 f38079j5;

    public final M2 f38080j6;

    public final L2 f38082k0;

    public final L2 f38083k1;

    public final M2 f38084k2;

    public final M2 f38085k3;

    public final M2 f38086k4;

    public final W1 f38087k5;

    public final M2 f38088k6;

    public final L2 f38090l0;

    public final L2 f38091l1;

    public final M2 f38092l2;

    public final M2 f38093l3;

    public final M2 f38094l4;

    public final X1 f38095l5;

    public final M2 f38096l6;

    public final L2 f38098m0;

    public final L2 f38099m1;

    public final M2 f38100m2;

    public final M2 f38101m3;

    public final M2 f38102m4;

    public final Z1 f38103m5;

    public final M2 f38104m6;

    public final L2 f38106n0;

    public final L2 f38107n1;

    public final M2 f38108n2;

    public final AbstractC7552hC f38109n3;

    public final M2 f38110n4;

    public final C4385c2 f38111n5;

    public final C4499i2 f38112n6;

    public final L2 f38114o0;

    public final L2 f38115o1;

    public final M2 f38116o2;

    public final AbstractC7552hC f38117o3;

    public final M2 f38118o4;

    public final C4404d2 f38119o5;

    public final C4612o2 f38120o6;

    public final L2 f38122p0;

    public final L2 f38123p1;

    public final M2 f38124p2;

    public final M2 f38125p3;

    public final M2 f38126p4;

    public final C4347a2 f38127p5;

    public final O1 f38128p6;

    public final L2 f38130q0;

    public final L2 f38131q1;

    public final M2 f38132q2;

    public final M2 f38133q3;

    public final M2 f38134q4;

    public final AbstractC7552hC f38135q5;

    public final C4668r2 f38136q6;

    public final L2 f38138r0;

    public final L2 f38139r1;

    public final M2 f38140r2;

    public final M2 f38141r3;

    public final M2 f38142r4;

    public final L2 f38143r5;

    public final com.android.tools.r8.synthesis.S f38144r6;

    public final L2 f38146s0;

    public final L2 f38147s1;

    public final M2 f38148s2;

    public final M2 f38149s3;

    public final L2 f38150s4;

    public final I2 f38151s5;

    public final C7045eA f38152s6;

    public final L2 f38154t0;

    public final L2 f38155t1;

    public final M2 f38156t2;

    public final M2 f38157t3;

    public final I2 f38158t4;

    public final L2 f38159t5;

    public final Map<M2, A2> f38160t6;

    public final L2 f38162u0;

    public final L2 f38163u1;

    public final M2 f38164u2;

    public final M2 f38165u3;

    public final A2 f38166u4;

    public final M2 f38167u5;

    public final A2 f38168u6;

    public final L2 f38170v0;

    public final L2 f38171v1;

    public final M2 f38172v2;

    public final M2 f38173v3;

    public final C4650q2 f38174v4;

    public final I2 f38175v5;

    public final A2 f38176v6;

    public final L2 f38177w;

    public final L2 f38178w0;

    public final L2 f38179w1;

    public final M2 f38180w2;

    public final M2 f38181w3;

    public final C4650q2 f38182w4;

    public final L2 f38183w5;

    public final A2 f38184w6;

    public final L2 f38185x;

    public final L2 f38186x0;

    public final L2 f38187x1;

    public final M2 f38188x2;

    public final A2 f38189x3;

    public final b f38190x4;

    public final M2 f38191x5;

    public final AbstractC8552nC f38192x6;

    public final L2 f38193y;

    public final L2 f38194y0;

    public final L2 f38195y1;

    public final M2 f38196y2;

    public final M2 f38197y3;

    public final E1 f38198y4;

    public final M2 f38199y5;

    public Set<A2> f38200y6;

    public final L2 f38201z;

    public final L2 f38202z0;

    public final L2 f38203z1;

    public final M2 f38204z2;

    public final M2 f38205z3;

    public final F1 f38206z4;

    public final M2 f38207z5;

    public final QC f38208z6;

    public final Set f38001a = AbstractC5513Ll0.c();

    public final ConcurrentHashMap f38009b = new ConcurrentHashMap();

    public final ConcurrentHashMap f38017c = new ConcurrentHashMap();

    public final ConcurrentHashMap f38025d = new ConcurrentHashMap();

    public final ConcurrentHashMap f38033e = new ConcurrentHashMap();

    public final ConcurrentHashMap f38041f = new ConcurrentHashMap();

    public final ConcurrentHashMap f38049g = new ConcurrentHashMap();

    public final ConcurrentHashMap f38057h = new ConcurrentHashMap();

    public final C6899dH f38065i = new C6899dH(16);

    public final C6899dH f38073j = new C6899dH(16);

    public final C6899dH f38081k = new C6899dH(16);

    public final C6899dH f38089l = new C6899dH(16);

    public final C6899dH f38097m = new C6899dH(16);

    public final R0 f38105n = new R0();

    public final T0 f38113o = new T0();

    public final HashMap f38121p = new HashMap();

    public final HashMap f38129q = new HashMap();

    public final O0.b f38137r = c(new O0.b(14).f36665d);

    public final O0.b f38145s = c(new O0.b(30).f36665d);

    public final ConcurrentHashMap f38153t = new ConcurrentHashMap();

    public final ConcurrentHashMap f38161u = new ConcurrentHashMap();

    public final WQ f38169v = new WQ();

    public class a extends AbstractC4423e2 {

        public final C4554l1 f38209a;

        public final C4554l1 f38210b;

        public final C4554l1 f38211c;

        public final C4554l1 f38212d;

        public final C4554l1 f38213e;

        public final C4554l1 f38214f;

        public a(C4724u1 c4724u1) {
            this.f38209a = c4724u1.a(c4724u1.f38038e4, c4724u1.f38052g2, "CODENAME");
            this.f38210b = c4724u1.a(c4724u1.f38038e4, c4724u1.f38052g2, "RELEASE");
            this.f38211c = c4724u1.a(c4724u1.f38038e4, c4724u1.f38052g2, "SDK");
            this.f38212d = c4724u1.a(c4724u1.f38038e4, c4724u1.f37884J1, "SDK_INT");
            this.f38213e = c4724u1.a(c4724u1.f38038e4, c4724u1.f37884J1, "SDK_INT_FULL");
            this.f38214f = c4724u1.a(c4724u1.f38038e4, c4724u1.f38052g2, "SECURITY_PATCH");
        }

        @Override
        public final void a(Consumer consumer) {
            consumer.accept(this.f38209a);
            consumer.accept(this.f38210b);
            consumer.accept(this.f38211c);
            consumer.accept(this.f38212d);
            consumer.accept(this.f38214f);
        }
    }

    public class c {

        public final C4554l1 f38223a;

        public final A2 f38224b;

        public final A2 f38225c;

        public final A2 f38226d;

        public final A2 f38227e;

        public final A2 f38228f;

        public final A2 f38229g;

        public final A2 f38230h;

        public final A2 f38231i;

        public final A2 f38232j;

        public final A2 f38233k;

        public final A2 f38234l;

        public final A2 f38235m;

        public c(C4724u1 c4724u1) {
            this.f38223a = c4724u1.a(c4724u1.f38068i2, c4724u1.f37884J1, "$r8$clinit");
            M2 m22 = c4724u1.f38068i2;
            this.f38225c = c4724u1.a(m22, c4724u1.a(c4724u1.f37849E1, m22), "equals");
            this.f38227e = c4724u1.a(c4724u1.f38068i2, c4724u1.a(c4724u1.f37884J1, new M2[0]), "hashCode");
            M2 m23 = c4724u1.f38068i2;
            this.f38224b = c4724u1.a(m23, c4724u1.a(m23, new M2[0]), c4724u1.f38050g0);
            L2 l22 = c4724u1.f37932Q0;
            L2 l23 = c4724u1.f38154t0;
            L2 l24 = c4724u1.f37946S0;
            L2[] l2Arr = L2.f36559g;
            this.f38226d = c4724u1.a(l22, l23, l24, l2Arr);
            this.f38228f = c4724u1.a(c4724u1.f37932Q0, c4724u1.f38067i1, c4724u1.f37905M1.f36592f, l2Arr);
            this.f38229g = c4724u1.a(c4724u1.f37932Q0, c4724u1.f38162u0, c4724u1.f37905M1.f36592f, l2Arr);
            this.f38230h = c4724u1.a(c4724u1.f37932Q0, c4724u1.f38098m0, c4724u1.f37925P0, l2Arr);
            this.f38231i = c4724u1.a(c4724u1.f37932Q0, c4724u1.f37917O, c4724u1.f37847E, l2Arr);
            this.f38232j = c4724u1.a(c4724u1.f37932Q0, c4724u1.f37924P, c4724u1.f37847E, l2Arr);
            this.f38233k = c4724u1.a(c4724u1.f37932Q0, c4724u1.f37910N, c4724u1.f37847E, l2Arr);
            this.f38234l = c4724u1.a(c4724u1.f37932Q0, c4724u1.f37910N, c4724u1.f37847E, new L2[]{c4724u1.f37831C});
            this.f38235m = c4724u1.a(c4724u1.f37932Q0, c4724u1.f37910N, c4724u1.f37847E, new L2[]{c4724u1.f37831C, c4724u1.f37823B});
        }

        public boolean a(A2 a22) {
            return a22.c(this.f38224b) || a22.c(this.f38226d) || a22.c(this.f38228f) || a22.c(this.f38229g) || a22.c(this.f38230h) || a22.c(this.f38227e) || a22.c(this.f38225c) || a22.c(this.f38231i) || a22.c(this.f38232j) || a22.c(this.f38233k) || a22.c(this.f38234l) || a22.c(this.f38235m);
        }
    }

    public class d extends AbstractC4423e2 {

        public final A2 f38236A;

        public final A2 f38237B;

        public final A2 f38238C;

        public final C4554l1 f38239a;

        public final A2 f38240b;

        public final A2 f38241c;

        public final A2 f38242d;

        public final A2 f38243e;

        public final A2 f38244f;

        public final A2 f38245g;

        public final A2 f38246h;

        public final A2 f38247i;

        public final A2 f38248j;

        public final A2 f38249k;

        public final A2 f38250l;

        public final A2 f38251m;

        public final A2 f38252n;

        public final A2 f38253o;

        public final A2 f38254p;

        public final A2 f38255q;

        public final A2 f38256r;

        public final A2 f38257s;

        public final A2 f38258t;

        public final A2 f38259u;

        public final A2 f38260v;

        public final A2 f38261w;

        public final A2 f38262x;

        public final A2 f38263y;

        public final A2 f38264z;

        public d(C4724u1 c4724u1) {
            this.f38239a = c4724u1.a(c4724u1.f38052g2, c4724u1.f37921O3, "CASE_INSENSITIVE_ORDER");
            M2 m22 = c4724u1.f38052g2;
            this.f38243e = c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, m22), c4724u1.f38067i1);
            M2 m23 = c4724u1.f38052g2;
            this.f38238C = c4724u1.a(m23, c4724u1.a(m23, new M2[0]), c4724u1.f38074j0);
            L2 l22 = c4724u1.f37925P0;
            L2 l23 = c4724u1.f37938R;
            L2 l24 = c4724u1.f38177w;
            L2[] l2Arr = L2.f36559g;
            this.f38240b = c4724u1.a(l22, l23, l24, l2Arr);
            this.f38241c = c4724u1.a(c4724u1.f37925P0, c4724u1.f37945S, c4724u1.f37823B, l2Arr);
            L2[] l2Arr2 = {c4724u1.f37918O0};
            L2 l25 = c4724u1.f37823B;
            L2[] l2Arr3 = {l25};
            L2[] l2Arr4 = {l25, l25};
            L2[] l2Arr5 = {c4724u1.f37932Q0};
            L2 l26 = c4724u1.f37925P0;
            L2[] l2Arr6 = {l26};
            L2[] l2Arr7 = {l26, l25};
            this.f38242d = c4724u1.a(l26, c4724u1.f37952T, l26, l2Arr6);
            this.f38244f = c4724u1.a(c4724u1.f37925P0, c4724u1.f37959U, c4724u1.f38177w, l2Arr2);
            this.f38245g = c4724u1.a(c4724u1.f37925P0, c4724u1.f37966V, c4724u1.f38177w, l2Arr6);
            this.f38248j = c4724u1.a(c4724u1.f37925P0, c4724u1.f37973W, c4724u1.f38177w, l2Arr6);
            L2 l27 = c4724u1.f37925P0;
            this.f38246h = c4724u1.a(l27, c4724u1.f38066i0, l27, l2Arr3);
            L2 l28 = c4724u1.f37925P0;
            this.f38247i = c4724u1.a(l28, c4724u1.f38066i0, l28, l2Arr4);
            this.f38249k = c4724u1.a(c4724u1.f37925P0, c4724u1.f37980X, c4724u1.f38177w, l2Arr5);
            this.f38250l = c4724u1.a(c4724u1.f37925P0, c4724u1.f38002a0, c4724u1.f38177w, l2Arr6);
            this.f38251m = c4724u1.a(c4724u1.f37925P0, c4724u1.f38010b0, c4724u1.f38177w, l2Arr2);
            this.f38254p = c4724u1.a(c4724u1.f37925P0, c4724u1.f38018c0, c4724u1.f37823B, l2Arr6);
            this.f38255q = c4724u1.a(c4724u1.f37925P0, c4724u1.f38018c0, c4724u1.f37823B, l2Arr7);
            this.f38252n = c4724u1.a(c4724u1.f37925P0, c4724u1.f38018c0, c4724u1.f37823B, l2Arr3);
            this.f38253o = c4724u1.a(c4724u1.f37925P0, c4724u1.f38018c0, c4724u1.f37823B, l2Arr4);
            this.f38258t = c4724u1.a(c4724u1.f37925P0, c4724u1.f38026d0, c4724u1.f37823B, l2Arr6);
            this.f38259u = c4724u1.a(c4724u1.f37925P0, c4724u1.f38026d0, c4724u1.f37823B, l2Arr7);
            this.f38256r = c4724u1.a(c4724u1.f37925P0, c4724u1.f38026d0, c4724u1.f37823B, l2Arr3);
            this.f38257s = c4724u1.a(c4724u1.f37925P0, c4724u1.f38026d0, c4724u1.f37823B, l2Arr4);
            this.f38260v = c4724u1.a(c4724u1.f37925P0, c4724u1.f38034e0, c4724u1.f37823B, l2Arr6);
            this.f38261w = c4724u1.a(c4724u1.f37925P0, c4724u1.f38042f0, c4724u1.f37823B, l2Arr6);
            this.f38262x = c4724u1.a(c4724u1.f38052g2, c4724u1.a(c4724u1.f37884J1, new M2[0]), c4724u1.f37987Y);
            L2 l29 = c4724u1.f37925P0;
            this.f38263y = c4724u1.a(l29, c4724u1.f38058h0, l29, new L2[]{l29, c4724u1.f37939R0});
            L2 l210 = c4724u1.f37925P0;
            this.f38264z = c4724u1.a(l210, c4724u1.f38058h0, l210, new L2[]{c4724u1.f37995Z0, l210, c4724u1.f37939R0});
            L2 l211 = c4724u1.f37925P0;
            this.f38236A = c4724u1.a(l211, c4724u1.f38082k0, l211, l2Arr5);
            L2 l212 = c4724u1.f37925P0;
            this.f38237B = c4724u1.a(l212, c4724u1.f38098m0, l212, l2Arr);
            L2 l213 = c4724u1.f37925P0;
            c4724u1.a(l213, c4724u1.f38106n0, l213, l2Arr);
        }

        @Override
        public final void a(Consumer consumer) {
            consumer.accept(this.f38239a);
        }
    }

    public class e {

        public final A2 f38265a;

        public final A2 f38266b;

        public final A2 f38267c;

        public e(C4724u1 c4724u1) {
            this.f38265a = c4724u1.a(c4724u1.f38019c1, c4724u1.b("addSuppressed"), c4724u1.f37847E, new L2[]{c4724u1.f38019c1});
            L2 l22 = c4724u1.f38019c1;
            L2 b10 = c4724u1.b("getSuppressed");
            L2 l23 = c4724u1.f38107n1;
            L2[] l2Arr = L2.f36559g;
            this.f38267c = c4724u1.a(l22, b10, l23, l2Arr);
            L2 l24 = c4724u1.f38019c1;
            L2 b11 = c4724u1.b("initCause");
            L2 l25 = c4724u1.f38019c1;
            c4724u1.a(l24, b11, l25, new L2[]{l25});
            this.f38266b = c4724u1.a(c4724u1.f38019c1, c4724u1.b("getMessage"), c4724u1.f37925P0, l2Arr);
        }
    }

    static {
        M2 m22 = new M2(new L2("NULL"));
        f37808E6 = m22;
        L2 l22 = new L2("UNKNOWN");
        f37809F6 = l22;
        f37810G6 = new IdentityHashMap(C6620bf0.a(2, new Map.Entry[]{new C9053qC(m22, m22), new C9053qC(l22, l22)}));
        f37811H6 = AbstractC7552hC.a("androidx/", "android/support/");
        f37812I6 = AbstractC7552hC.a("multidex/MultiDex$V14$ElementConstructor;", "multidex/MultiDex$V14$ICSElementConstructor;", "multidex/MultiDex$V14$JBMR11ElementConstructor;", "multidex/MultiDex$V14$JBMR2ElementConstructor;", "multidex/MultiDex$V14;", "multidex/MultiDex$V19;", "multidex/MultiDex$V21_PLUS;", "multidex/MultiDex$V4;", "multidex/MultiDexApplication;", "multidex/MultiDexExtractor$1;", "multidex/MultiDexExtractor$ExtractedDex;", "multidex/MultiDexExtractor;", "multidex/MultiDex;", "multidex/ZipUtil;", "multidex/ZipUtil$CentralDirectory;");
        f37813J6 = AbstractC7552hC.a("Landroidx/multidex/instrumentation/BuildConfig;", "Landroid/test/runner/MultiDexTestRunner;");
    }

    public C4724u1() {
        L2 b10 = b(Signature.SIG_BOOLEAN);
        this.f38177w = b10;
        L2 b11 = b(Signature.SIG_BYTE);
        this.f38185x = b11;
        L2 b12 = b(Signature.SIG_CHAR);
        this.f38193y = b12;
        L2 b13 = b(Signature.SIG_DOUBLE);
        this.f38201z = b13;
        L2 b14 = b(Signature.SIG_FLOAT);
        this.f37815A = b14;
        L2 b15 = b(Signature.SIG_INT);
        this.f37823B = b15;
        L2 b16 = b(Signature.SIG_LONG);
        this.f37831C = b16;
        L2 b17 = b("S");
        this.f37839D = b17;
        L2 b18 = b("V");
        this.f37847E = b18;
        this.f37854F = b("/");
        this.f37861G = b("Lcom/sun/");
        this.f37868H = b("Ljava/");
        this.f37875I = b("Ljavax/");
        this.f37882J = b("Ljdk/");
        this.f37889K = b("Lsun/");
        this.f37896L = b("Lj$/");
        L2 b19 = b("[Z");
        L2 b20 = b("[B");
        L2 b21 = b("[C");
        L2 b22 = b("[D");
        L2 b23 = b("[F");
        L2 b24 = b("[I");
        L2 b25 = b("[J");
        L2 b26 = b("[S");
        L2 b27 = b("Ljava/lang/Boolean;");
        L2 b28 = b("Ljava/lang/Byte;");
        L2 b29 = b("Ljava/lang/Character;");
        L2 b30 = b("Ljava/lang/Double;");
        L2 b31 = b("Ljava/lang/Float;");
        L2 b32 = b("Ljava/lang/Integer;");
        L2 b33 = b("Ljava/lang/Long;");
        L2 b34 = b("Ljava/lang/Short;");
        L2 b35 = b("Ljava/lang/Number;");
        this.f37903M = b35;
        L2 b36 = b("Ljava/lang/Void;");
        this.f37910N = b("wait");
        this.f37917O = b("notify");
        this.f37924P = b("notifyAll");
        L2 b37 = b("of");
        this.f37931Q = b37;
        L2 b38 = b("booleanValue");
        L2 b39 = b("byteValue");
        L2 b40 = b("charValue");
        L2 b41 = b("shortValue");
        L2 b42 = b("intValue");
        L2 b43 = b("longValue");
        L2 b44 = b("floatValue");
        L2 b45 = b("doubleValue");
        this.f37938R = b("isEmpty");
        this.f37945S = b("length");
        this.f37952T = b("concat");
        this.f37959U = b("contains");
        this.f37966V = b("startsWith");
        this.f37973W = b("endsWith");
        this.f37980X = b("equals");
        this.f37987Y = b("hashCode");
        this.f37994Z = b("identityHashCode");
        this.f38002a0 = b("equalsIgnoreCase");
        this.f38010b0 = b("contentEquals");
        this.f38018c0 = b("indexOf");
        this.f38026d0 = b("lastIndexOf");
        this.f38034e0 = b("compareTo");
        this.f38042f0 = b("compareToIgnoreCase");
        this.f38050g0 = b("clone");
        this.f38058h0 = b("format");
        this.f38066i0 = b("substring");
        this.f38074j0 = b("trim");
        this.f38082k0 = b("valueOf");
        this.f38090l0 = b("values");
        this.f38098m0 = b("toString");
        this.f38106n0 = b("intern");
        this.f38114o0 = b("convert");
        this.f38122p0 = b("wrappedValue");
        this.f38130q0 = b("iterator");
        this.f38138r0 = b("hasNext");
        this.f38146s0 = b("next");
        this.f38154t0 = b("getClass");
        this.f38162u0 = b("finalize");
        this.f38170v0 = b("ordinal");
        this.f38178w0 = b("name");
        this.f38186x0 = b("close");
        this.f38194y0 = b("desiredAssertionStatus");
        this.f38202z0 = b("forName");
        this.f37816A0 = b("getName");
        this.f37824B0 = b("getCanonicalName");
        this.f37832C0 = b("getSimpleName");
        this.f37840D0 = b("getTypeName");
        this.f37848E0 = b("getDeclaredConstructor");
        this.f37855F0 = b("getField");
        this.f37862G0 = b("getDeclaredField");
        this.f37869H0 = b("getMethod");
        this.f37876I0 = b("getDeclaredMethod");
        this.f37883J0 = b("newInstance");
        this.f37890K0 = b("$assertionsDisabled");
        L2 b46 = b("invoke");
        this.f37897L0 = b46;
        this.f37904M0 = b("invokeExact");
        L2 b47 = b("Ljava/lang/RuntimeException;");
        L2 b48 = b("Ljava/lang/AssertionError;");
        this.f37911N0 = b48;
        L2 b49 = b("Ljava/util/NoSuchElementException;");
        L2 b50 = b("Ljava/lang/CharSequence;");
        this.f37918O0 = b50;
        L2 b51 = b("[Ljava/lang/CharSequence;");
        L2 b52 = b("Ljava/lang/String;");
        this.f37925P0 = b52;
        L2 b53 = b("[Ljava/lang/String;");
        L2 b54 = b("Ljava/lang/Object;");
        this.f37932Q0 = b54;
        L2 b55 = b("Ljava/lang/Record;");
        L2 b56 = b("Lcom/android/tools/r8/RecordTag;");
        L2 b57 = b("Lcom/android/tools/r8/AutoCloseableTag;");
        L2 b58 = b("[Ljava/lang/Object;");
        this.f37939R0 = b58;
        L2 b59 = b("Ljava/lang/Class;");
        this.f37946S0 = b59;
        L2 b60 = b("Ljava/lang/ClassLoader;");
        this.f37953T0 = b60;
        L2 b61 = b("Ljava/lang/AutoCloseable;");
        L2 b62 = b("[Ljava/lang/Class;");
        this.f37960U0 = b62;
        L2 b63 = b("Ljava/lang/constant/ClassDesc;");
        L2 b64 = b("Ljava/lang/Enum$EnumDesc;");
        L2 b65 = b("Ljava/lang/reflect/Constructor;");
        this.f37967V0 = b65;
        L2 b66 = b("Ljava/lang/reflect/Field;");
        this.f37974W0 = b66;
        L2 b67 = b("Ljava/lang/reflect/Method;");
        this.f37981X0 = b67;
        L2 b68 = b("Ljava/lang/Enum;");
        this.f37988Y0 = b68;
        L2 b69 = b("Ljava/lang/System;");
        L2 b70 = b("Ljava/lang/annotation/Annotation;");
        L2 b71 = b("Ljava/util/Objects;");
        L2 b72 = b("Ljava/util/Collections;");
        L2 b73 = b("Ljava/lang/Iterable;");
        L2 b74 = b("Ljava/lang/Math;");
        L2 b75 = b("Ljava/lang/StrictMath;");
        L2 b76 = b("Ljava/io/Closeable;");
        L2 b77 = b("Ljava/util/zip/ZipFile;");
        L2 b78 = b("Ljava/nio/Buffer;");
        L2 b79 = b("Ljava/nio/ByteBuffer;");
        L2 b80 = b("Ljava/nio/MappedByteBuffer;");
        L2 b81 = b("Ljava/nio/CharBuffer;");
        L2 b82 = b("Ljava/nio/ShortBuffer;");
        L2 b83 = b("Ljava/nio/IntBuffer;");
        L2 b84 = b("Ljava/nio/LongBuffer;");
        L2 b85 = b("Ljava/nio/FloatBuffer;");
        L2 b86 = b("Ljava/nio/DoubleBuffer;");
        L2 b87 = b("Ljava/lang/StringBuilder;");
        L2 b88 = b("Ljava/lang/StringBuffer;");
        L2 b89 = b("Ljava/lang/invoke/VarHandle;");
        L2 b90 = b("Ljava/lang/invoke/MethodHandle;");
        L2 b91 = b("Ljava/lang/invoke/MethodHandles;");
        L2 b92 = b("Ljava/lang/invoke/MethodHandles$Lookup;");
        L2 b93 = b("Ljava/lang/invoke/MethodType;");
        L2 b94 = b("Ljava/lang/reflect/InvocationHandler;");
        L2 b95 = b("Ljava/lang/reflect/Proxy;");
        L2 b96 = b("Ljava/util/ServiceLoader;");
        L2 b97 = b("Ljava/util/ServiceConfigurationError;");
        L2 b98 = b("Ljava/util/Locale;");
        this.f37995Z0 = b98;
        L2 b99 = b("Ljava/util/List;");
        this.f38003a1 = b99;
        L2 b100 = b("Ljava/util/Set;");
        L2 b101 = b("Ljava/util/Map;");
        L2 b102 = b("Ljava/util/Map$Entry;");
        L2 b103 = b("Ljava/util/Collection;");
        L2 b104 = b("Ljava/util/Comparator;");
        L2 b105 = b("Ljava/util/concurrent/Callable;");
        L2 b106 = b("Ljava/util/function/Supplier;");
        L2 b107 = b("Ljava/util/function/Predicate;");
        L2 b108 = b("Ljava/util/function/Consumer;");
        L2 b109 = b("Ljava/lang/Runnable;");
        L2 b110 = b("Ljava/util/Optional;");
        L2 b111 = b("Ljava/util/OptionalDouble;");
        L2 b112 = b("Ljava/util/OptionalInt;");
        L2 b113 = b("Ljava/util/OptionalLong;");
        L2 b114 = b("Ljava/util/stream/Stream;");
        L2 b115 = b("Ljava/util/Arrays;");
        this.f38011b1 = b115;
        L2 b116 = b("Ljava/lang/ThreadLocal;");
        L2 b117 = b("Ljava/util/concurrent/ConcurrentHashMap;");
        L2 b118 = b("Ljava/util/concurrent/ConcurrentHashMap$KeySetView;");
        L2 b119 = b("Ljava/lang/Throwable;");
        this.f38019c1 = b119;
        L2 b120 = b("Ljava/lang/IllegalAccessError;");
        L2 b121 = b("Ljava/lang/IllegalArgumentException;");
        L2 b122 = b("Ljava/lang/AbstractMethodError;");
        L2 b123 = b("Ljava/lang/IncompatibleClassChangeError;");
        L2 b124 = b("Ljava/lang/ExceptionInInitializerError;");
        L2 b125 = b("Ljava/lang/NoClassDefFoundError;");
        L2 b126 = b("Ljava/lang/NoSuchFieldError;");
        L2 b127 = b("Ljava/lang/NullPointerException;");
        this.f38027d1 = b127;
        L2 b128 = b("Ljava/lang/ReflectiveOperationException;");
        L2 b129 = b("Lkotlin/Metadata;");
        L2 b130 = b("Lkotlin/jvm/JvmName;");
        this.f38035e1 = b("Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;");
        this.f38043f1 = b("Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;");
        L2 b131 = b("Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;");
        this.f38051g1 = b131;
        this.f38059h1 = b("newUpdater");
        L2 b132 = b(ConstantDescs.INIT_NAME);
        this.f38067i1 = b132;
        this.f38075j1 = b(ConstantDescs.CLASS_INIT_NAME);
        this.f38083k1 = b("this");
        b("INSTANCE");
        this.f38091l1 = b("lambda$");
        b("$VALUES");
        this.f38099m1 = b("ENABLED");
        this.f38107n1 = b("[Ljava/lang/Throwable;");
        this.f38115o1 = b("value");
        this.f38123p1 = b("kind");
        this.f38131q1 = b("versionHash");
        this.f38139r1 = b("apiLevel");
        this.f38147s1 = b("Ldalvik/annotation/");
        this.f38155t1 = b("Ldalvik/annotation/codegen/CovariantReturnType");
        this.f38163u1 = b("Ldalvik/annotation/optimization/");
        this.f38171v1 = b("get");
        this.f38179w1 = b("set");
        this.f38187x1 = b("compareAndSet");
        this.f38195y1 = b("weakCompareAndSet");
        this.f38203z1 = b("getVolatile");
        this.f37817A1 = b("setVolatile");
        this.f37825B1 = b("setRelease");
        this.f37833C1 = b(ContactsContract.ContactsColumns.LOOKUP_KEY);
        this.f37841D1 = b("privateLookupIn");
        M2 d10 = d(b10);
        a(d10);
        this.f37849E1 = d10;
        M2 d11 = d(b11);
        a(d11);
        this.f37856F1 = d11;
        M2 d12 = d(b12);
        a(d12);
        this.f37863G1 = d12;
        M2 d13 = d(b13);
        a(d13);
        this.f37870H1 = d13;
        M2 d14 = d(b14);
        a(d14);
        this.f37877I1 = d14;
        M2 d15 = d(b15);
        a(d15);
        this.f37884J1 = d15;
        M2 d16 = d(b16);
        a(d16);
        this.f37891K1 = d16;
        M2 d17 = d(b17);
        a(d17);
        this.f37898L1 = d17;
        M2 d18 = d(b18);
        a(d18);
        this.f37905M1 = d18;
        M2 d19 = d(b19);
        a(d19);
        this.f37912N1 = d19;
        M2 d20 = d(b20);
        a(d20);
        this.f37919O1 = d20;
        M2 d21 = d(b21);
        a(d21);
        this.f37926P1 = d21;
        M2 d22 = d(b22);
        a(d22);
        this.f37933Q1 = d22;
        M2 d23 = d(b23);
        a(d23);
        this.f37940R1 = d23;
        M2 d24 = d(b24);
        a(d24);
        this.f37947S1 = d24;
        M2 d25 = d(b25);
        a(d25);
        this.f37954T1 = d25;
        M2 d26 = d(b26);
        a(d26);
        this.f37961U1 = d26;
        M2 d27 = d(b27);
        a(d27);
        this.f37968V1 = d27;
        M2 d28 = d(b28);
        a(d28);
        this.f37975W1 = d28;
        M2 d29 = d(b29);
        a(d29);
        this.f37982X1 = d29;
        M2 d30 = d(b30);
        a(d30);
        this.f37989Y1 = d30;
        M2 b133 = b(b31);
        this.f37996Z1 = b133;
        M2 b134 = b(b32);
        this.f38004a2 = b134;
        M2 b135 = b(b33);
        this.f38012b2 = b135;
        M2 b136 = b(b34);
        this.f38020c2 = b136;
        M2 b137 = b(b35);
        this.f38028d2 = b137;
        M2 b138 = b(b36);
        this.f38036e2 = b(b50);
        this.f38044f2 = b(b51);
        M2 b139 = b(b52);
        this.f38052g2 = b139;
        this.f38060h2 = b(b53);
        M2 b140 = b(b54);
        this.f38068i2 = b140;
        this.f38076j2 = b(b55);
        this.f38084k2 = b(b56);
        b(b57);
        M2 b141 = b(b58);
        this.f38092l2 = b141;
        this.f38100m2 = b(b62);
        M2 b142 = b(b68);
        this.f38108n2 = b142;
        this.f38116o2 = b(b70);
        this.f38124p2 = b(b115);
        this.f38132q2 = b(b71);
        this.f38140r2 = b(b72);
        this.f38148s2 = b(b73);
        this.f38156t2 = b(b74);
        this.f38164u2 = b(b75);
        this.f38172v2 = b(b131);
        M2 b143 = b(b59);
        this.f38180w2 = b143;
        M2 d31 = d(b(C4932Bl.H(Package.class.getName())));
        a(d31);
        this.f38188x2 = d31;
        this.f38196y2 = b(b60);
        this.f38204z2 = b(b65);
        this.f37818A2 = b(b66);
        this.f37826B2 = b(b67);
        M2 b144 = b(b61);
        this.f37834C2 = b144;
        this.f37842D2 = b(b76);
        this.f37850E2 = b(b77);
        M2 b145 = b(b87);
        this.f37857F2 = b145;
        M2 b146 = b(b88);
        this.f37864G2 = b146;
        M2 b147 = b(b63);
        this.f37871H2 = b147;
        M2 b148 = b(b64);
        this.f37878I2 = b148;
        this.f37885J2 = a("Ljava/lang/annotation/RetentionPolicy;");
        this.f37892K2 = a("Ljava/lang/reflect/Array;");
        M2 b149 = b(b69);
        this.f37899L2 = b149;
        M2 a10 = a("Ljava/io/PrintStream;");
        this.f37906M2 = a10;
        this.f37913N2 = b(b89);
        M2 b150 = b(b90);
        this.f37920O2 = b150;
        this.f37927P2 = b(b91);
        M2 b151 = b(b92);
        this.f37934Q2 = b151;
        M2 b152 = b(b93);
        this.f37941R2 = b152;
        this.f37948S2 = b(b94);
        this.f37955T2 = b(b95);
        this.f37962U2 = b(b96);
        this.f37969V2 = b(b97);
        this.f37976W2 = b(b102);
        this.f37983X2 = a("Ljava/util/AbstractMap$SimpleEntry;");
        this.f37990Y2 = b(b103);
        this.f37997Z2 = b(b104);
        M2 b153 = b(b105);
        this.f38005a3 = b(b106);
        this.f38013b3 = b(b107);
        this.f38021c3 = b(b108);
        this.f38029d3 = b(b109);
        this.f38037e3 = b(b110);
        this.f38045f3 = b(b111);
        this.f38053g3 = b(b112);
        this.f38061h3 = b(b113);
        this.f38069i3 = b(b114);
        this.f38077j3 = b(b116);
        this.f38085k3 = b(b117);
        this.f38093l3 = b(b118);
        this.f38101m3 = b(b78);
        this.f38109n3 = AbstractC7552hC.a(b(b79), b(b80), b(b81), b(b82), b(b83), b(b84), b(b85), b(b86));
        this.f38117o3 = c();
        this.f38125p3 = a("Ljava/util/function/DoubleConsumer;");
        this.f38133q3 = a("Ljava/util/function/LongConsumer;");
        this.f38141r3 = a("Ljava/util/function/IntConsumer;");
        this.f38149s3 = a("Ljava/lang/annotation/Retention;");
        this.f38157t3 = b(b47);
        this.f38165u3 = b(b48);
        M2 b154 = b(b119);
        this.f38173v3 = b154;
        M2 b155 = b(b49);
        this.f38181w3 = b155;
        this.f38189x3 = a(b155, a(d18, new M2[0]), b132);
        this.f38197y3 = b(b120);
        this.f38205z3 = b(b121);
        this.f37819A3 = b(b122);
        this.f37827B3 = b(b123);
        b(b124);
        this.f37835C3 = b(b125);
        b(b126);
        this.f37843D3 = a("Ljava/lang/NoSuchMethodError;");
        M2 b156 = b(b127);
        this.f37851E3 = b156;
        b(b128);
        this.f37858F3 = b(b129);
        this.f37865G3 = b(b130);
        this.f37872H3 = a(a("Lkotlin/enums/EnumEntriesList;"), a(d18, a(1, b142)), b132);
        this.f37879I3 = a("Ljava/io/File;");
        this.f37886J3 = a("Ljava/math/BigInteger;");
        this.f37893K3 = a("Ljava/nio/ByteOrder;");
        this.f37900L3 = a("Ljava/util/Collections;");
        M2 a11 = a("Ljava/util/Iterator;");
        this.f37907M3 = a11;
        this.f37914N3 = a(a11, new M2[0]);
        this.f37921O3 = a("Ljava/util/Comparator;");
        this.f37928P3 = a("Ljava/util/concurrent/TimeUnit;");
        this.f37935Q3 = a("Ljava/util/Formattable;");
        this.f37942R3 = b(b99);
        this.f37949S3 = b(b101);
        this.f37956T3 = b(b100);
        this.f37963U3 = a("Ljava/util/ArrayList;");
        this.f37970V3 = a("Ljava/util/LinkedList;");
        this.f37977W3 = a("Lcom/google/common/collect/ImmutableList;");
        this.f37984X3 = a("Ljava/util/concurrent/CopyOnWriteArrayList;");
        this.f37991Y3 = b(b98);
        this.f37998Z3 = a("Ljava/util/logging/Level;");
        this.f38006a4 = a("Ljava/util/logging/Logger;");
        M2 a12 = a("Landroid/app/Activity;");
        this.f38014b4 = a("Landroid/app/Fragment;");
        this.f38022c4 = a("Landroid/app/ZygotePreload;");
        this.f38030d4 = a("Landroid/os/Build;");
        this.f38038e4 = a("Landroid/os/Build$VERSION;");
        this.f38046f4 = a("Landroid/os/Bundle;");
        M2 a13 = a("Landroid/os/Handler;");
        this.f38054g4 = a("Landroid/os/Parcelable$Creator;");
        this.f38062h4 = a("Landroid/system/OsConstants;");
        M2 a14 = a("Landroid/util/Log;");
        this.f38070i4 = a14;
        this.f38078j4 = a("Landroid/util/Property;");
        this.f38086k4 = a("Landroid/view/View;");
        this.f38094l4 = a("Landroid/util/SparseArray;");
        this.f38102m4 = a("Landroid/content/res/TypedArray;");
        this.f38110n4 = a("Landroid/content/ContentProviderClient;");
        this.f38118o4 = a("Landroid/drm/DrmManagerClient;");
        a("Landroid/media/MediaDrm;");
        this.f38126p4 = a("Landroid/media/MediaDrm;");
        this.f38134q4 = a("Landroid/media/MediaMetadataRetriever;");
        M2 a15 = a("Landroid/content/res/Resources;");
        this.f38142r4 = a15;
        L2 b157 = b("getString");
        this.f38150s4 = b157;
        I2 a16 = a(b139, d15);
        this.f38158t4 = a16;
        this.f38166u4 = a(a15, a16, b157);
        C4650q2 c4650q2 = new C4650q2(this, b145);
        this.f38174v4 = c4650q2;
        C4650q2 c4650q22 = new C4650q2(this, b146);
        this.f38182w4 = c4650q22;
        b bVar = new b(this);
        this.f38190x4 = bVar;
        this.f38198y4 = new E1(this);
        this.f38206z4 = new F1(this);
        K1 k12 = new K1(this);
        this.f37820A4 = k12;
        N1 n12 = new N1(this);
        this.f37828B4 = n12;
        C4442f2 c4442f2 = new C4442f2(this);
        this.f37836C4 = c4442f2;
        this.f37844D4 = new C4706t2(this);
        C4517j2 c4517j2 = new C4517j2(this);
        this.f37852E4 = c4517j2;
        c cVar = new c(this);
        this.f37859F4 = cVar;
        this.f37866G4 = new D1(this);
        this.f37873H4 = new C4593n2(this);
        this.f37880I4 = new C4631p2(this);
        d dVar = new d(this);
        this.f37887J4 = dVar;
        this.f37894K4 = new C4687s2(this);
        this.f37901L4 = new I1(this);
        this.f37908M4 = new e(this);
        this.f37915N4 = new C4819z1(this);
        G1 g12 = new G1(this);
        this.f37922O4 = g12;
        this.f37929P4 = new H1(this);
        this.f37936Q4 = new C4461g2(this);
        J1 j12 = new J1(this);
        this.f37943R4 = j12;
        a(a14, a(d15, b139, b139), "i");
        this.f37950S4 = new S1(this);
        this.f37957T4 = new Q1(this);
        this.f37964U4 = new R1(this);
        this.f37971V4 = new T1(this);
        a(a10, a(d18, b139), "println");
        this.f37978W4 = new C4480h2(this);
        this.f37985X4 = new M1(this);
        this.f37992Y4 = new C4555l2(this);
        this.f37999Z4 = new A1(this);
        this.f38015b5 = new C4536k2(this);
        this.f38023c5 = new C4574m2(this);
        C4705t1 c4705t1 = new C4705t1(this);
        a aVar = new a(this);
        this.f38031d5 = aVar;
        C4743v1 c4743v1 = new C4743v1(this);
        C4762w1 c4762w1 = new C4762w1(this);
        C4800y1 c4800y1 = new C4800y1(this);
        this.f38039e5 = new C4781x1(this);
        this.f38047f5 = new C4630p1(this);
        this.f38055g5 = new C4611o1(this);
        this.f38063h5 = new C4649q1(this);
        this.f38071i5 = new C4667r1(this);
        this.f38079j5 = new C4686s1(this);
        P1 p12 = new P1(this);
        U1 u12 = new U1(this);
        V1 v12 = new V1(this);
        this.f38087k5 = new W1(this);
        X1 x12 = new X1(this);
        this.f38095l5 = x12;
        Y1 y12 = new Y1(this);
        this.f38103m5 = new Z1(this);
        this.f38111n5 = new C4385c2(this);
        this.f38119o5 = new C4404d2(this);
        C4347a2 c4347a2 = new C4347a2(this);
        this.f38127p5 = c4347a2;
        this.f38135q5 = AbstractC7552hC.a(bVar, k12, n12, c4442f2, dVar, c4705t1, aVar, c4743v1, c4762w1, c4800y1, j12, p12, u12, v12, x12, y12, c4347a2, new C4366b2(this));
        this.f38143r5 = b("$closeResource");
        this.f38151s5 = a(d18, b154, b144);
        L2 b158 = b("$deserializeLambda$");
        this.f38159t5 = b158;
        M2 a17 = a("Ljava/lang/invoke/SerializedLambda;");
        this.f38167u5 = a17;
        I2 a18 = a(b140, a17);
        this.f38175v5 = a18;
        this.f38183w5 = b("SourceFile");
        this.f38191x5 = a("Ldalvik/annotation/AnnotationDefault;");
        this.f38199y5 = a("Ldalvik/annotation/EnclosingClass;");
        this.f38207z5 = a("Ldalvik/annotation/EnclosingMethod;");
        this.f37821A5 = a("Ldalvik/annotation/InnerClass;");
        this.f37829B5 = a("Ldalvik/annotation/MemberClasses;");
        this.f37837C5 = a("Ldalvik/annotation/MethodParameters;");
        this.f37845D5 = a("Ldalvik/annotation/Signature;");
        this.f37853E5 = a("Ldalvik/annotation/NestHost;");
        this.f37860F5 = a("Ldalvik/annotation/NestMembers;");
        this.f37867G5 = a("Ldalvik/annotation/PermittedSubclasses;");
        this.f37874H5 = a("Ldalvik/annotation/Record;");
        this.f37881I5 = b("componentNames");
        this.f37888J5 = b("componentTypes");
        this.f37895K5 = b("componentSignatures");
        this.f37902L5 = b("componentAnnotationVisibilities");
        this.f37909M5 = b("componentAnnotations");
        this.f37916N5 = a("Ldalvik/annotation/SourceDebugExtension;");
        this.f37923O5 = a("Ldalvik/annotation/Throws;");
        this.f37930P5 = a("Lcom/android/tools/r8/annotations/SynthesizedClassV2;");
        this.f37937Q5 = a("Ldalvik/annotation/optimization/ReachabilitySensitive;");
        M2 a19 = a("Ljava/lang/invoke/LambdaMetafactory;");
        M2 a20 = a("Ljava/lang/invoke/ConstantBootstraps;");
        this.f37944R5 = a20;
        M2 d32 = d("Ljava/lang/runtime/SwitchBootstraps;");
        M2 a21 = a("Ljava/lang/invoke/CallSite;");
        this.f37951S5 = a21;
        M2 a22 = a("Ljava/lang/invoke/MethodHandles$Lookup;");
        this.f37958T5 = a22;
        this.f37965U5 = a(a20, a(b140, b151, b139, b143, b150, b141), b46);
        I2 a23 = a(a21, b151, b139, b152, b141);
        this.f37972V5 = a(d32, a23, b("typeSwitch"));
        this.f37979W5 = a(d32, a23, b("enumSwitch"));
        this.f37986X5 = a(b148, a(b148, b147, b139), b37);
        this.f37993Y5 = a(b147, a(b147, b139), b37);
        this.f38000Z5 = a("Ljava/lang/runtime/ObjectMethods;");
        this.f38008a6 = a("Ljava/lang/invoke/TypeDescriptor;");
        this.f38016b6 = a("Ljava/util/ListIterator;");
        this.f38024c6 = a("Ljava/util/Enumeration;");
        this.f38032d6 = a("Ljava/io/Serializable;");
        this.f38040e6 = a("Ljava/io/Externalizable;");
        this.f38048f6 = a("Ljava/lang/Cloneable;");
        this.f38056g6 = a("Ljava/lang/Comparable;");
        this.f38064h6 = a("Ljava/lang/invoke/StringConcatFactory;");
        this.f38072i6 = a("Lsun/misc/Unsafe;");
        this.f38080j6 = a("Lcom/android/tools/r8/DesugarVarHandle;");
        this.f38088k6 = a("Lcom/android/tools/r8/DesugarMethodHandlesLookup;");
        this.f38096l6 = a("Ljava/util/concurrent/ExecutorService;");
        this.f38104m6 = a("Ljava/util/concurrent/ForkJoinPool;");
        this.f38112n6 = new C4499i2(this);
        this.f38120o6 = new C4612o2(this);
        this.f38128p6 = new O1(this);
        this.f38136q6 = new C4668r2(this);
        this.f38144r6 = new com.android.tools.r8.synthesis.S();
        AbstractC8552nC a24 = new C8051kC(4).a(d10, d27).a(d11, d28).a(d12, d29).a(d17, b136).a(d15, b134).a(d16, b135).a(d14, b133).a(d13, d30).a();
        int i10 = C7045eA.f47615j;
        C7045eA c7045eA = new C7045eA(a24.size());
        c7045eA.putAll(a24);
        this.f38152s6 = c7045eA;
        this.f38160t6 = new C8051kC(4).a(d27, a(b38, d10)).a(d28, a(b39, d11)).a(d29, a(b40, d12)).a(b136, a(b41, d17)).a(b134, a(b42, d15)).a(b135, a(b43, d16)).a(b133, a(b44, d14)).a(d30, a(b45, d13)).a();
        this.f38168u6 = a(a19, a(a21, a22, b139, b152, b152, b150, b152), b("metafactory"));
        this.f38176v6 = a(a19, a(a21, a22, b139, b152, b141), b("altMetafactory"));
        this.f38184w6 = a(b140, a18, b158);
        C8051kC c8051kC = new C8051kC(4);
        for (Iterator it = AbstractC7552hC.a(c4517j2.f37354f, c4517j2.f37355g, c4517j2.f37356h).iterator(); it.hasNext(); it = it) {
            c8051kC.a((A2) it.next(), new int[]{0});
        }
        this.f38192x6 = c8051kC.b();
        this.f38200y6 = QC.h().a((Set) c4650q22.f37667s).a((Set) c4650q2.f37667s).a();
        IC h10 = QC.h();
        A2[] a2Arr = {g12.f36323e, g12.f36325g, g12.f36320b, cVar.f38226d, c4517j2.f37354f, c4517j2.f37355g, c4517j2.f37356h, dVar.f38263y, dVar.f38264z, dVar.f38236A};
        for (int i11 = 0; i11 < 10; i11++) {
            h10.a(a2Arr[i11]);
        }
        this.f38208z6 = h10.a(a()).a((Set) c4650q22.f37667s).a((Set) c4650q2.f37667s).a();
        this.f37822A6 = QC.h().a(a()).a();
        IC h11 = QC.h();
        M2[] m2Arr = {a12, a13, b153, b142, b156, b140, b146, b145, b139};
        for (int i12 = 0; i12 < 9; i12++) {
            h11.a(m2Arr[i12]);
        }
        this.f37830B6 = h11.a(((C6379aA) c7045eA.f()).o()).a();
        this.f37838C6 = QC.a(d27, d28, d29, d30, b133, b134, b135, b137, b136, b138, b142, b149, b156, b140, b146, b145, b139);
        this.f37846D6 = false;
        this.f38007a5 = new C10781g(this);
    }

    public static S0 a(S0 s02) {
        return s02;
    }

    public static M2 g(M2 m22) {
        return m22;
    }

    public final Optional b(A2 a22, Predicate predicate, I2 i22) {
        return Optional.of(a(a22.f38297f, i22, a22.f38298g)).filter(predicate);
    }

    public final AbstractC7552hC c() {
        int i10 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        for (String str : f37811H6) {
            Iterator it = f37812I6.iterator();
            while (it.hasNext()) {
                c7051eC.a(d("L" + str + ((String) it.next())));
            }
        }
        Iterator it2 = f37813J6.iterator();
        while (it2.hasNext()) {
            c7051eC.a(d((String) it2.next()));
        }
        return c7051eC.a();
    }

    public final M2 d(M2 m22) {
        if (f37814K6 || m22.P0()) {
            return (M2) this.f38152s6.get(m22);
        }
        throw new AssertionError();
    }

    public final C1 e(M2 m22) {
        if (!f37814K6 && !m22.P0() && !m22.S0()) {
            throw new AssertionError();
        }
        char c10 = (char) m22.v0().f36562f[0];
        if (c10 == 'F') {
            return this.f37820A4;
        }
        if (c10 == 'S') {
            return this.f37880I4;
        }
        if (c10 == 'V') {
            return this.f37844D4;
        }
        if (c10 == 'Z') {
            return this.f38190x4;
        }
        if (c10 == 'I') {
            return this.f37828B4;
        }
        if (c10 != 'J') {
            switch (c10) {
                case 'B':
                    return this.f38198y4;
                case 'C':
                    return this.f38206z4;
                case 'D':
                    return this.f37901L4;
                default:
                    throw new C5417Jv0("Unknown type " + ((Object) m22));
            }
        }
        return this.f37836C4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public A2 f(M2 m22) {
        A2 a22 = this.f38160t6.get((M2) this.f38152s6.getOrDefault(m22, m22));
        if (a22 != null) {
            return a22;
        }
        throw new C5417Jv0("Invalid primitive type descriptor: " + ((Object) m22));
    }

    public final Optional a(A2 a22, Predicate predicate, I2 i22) {
        return Optional.of(a(a22.f38297f, i22, a22.f38298g)).filter(predicate);
    }

    public class b extends C1 {

        public final C4554l1 f38215a;

        public final C4554l1 f38216b;

        public final C4554l1 f38217c;

        public final A2 f38218d;

        public final A2 f38219e;

        public final A2 f38220f;

        public final A2 f38221g;

        public final A2 f38222h;

        public b(C4724u1 c4724u1) {
            M2 m22 = c4724u1.f37968V1;
            this.f38215a = c4724u1.a(m22, m22, "FALSE");
            M2 m23 = c4724u1.f37968V1;
            this.f38216b = c4724u1.a(m23, m23, "TRUE");
            this.f38217c = c4724u1.a(c4724u1.f37968V1, c4724u1.f38180w2, "TYPE");
            this.f38218d = c4724u1.a(c4724u1.f37968V1, c4724u1.a(c4724u1.f37849E1, new M2[0]), "booleanValue");
            this.f38219e = c4724u1.a(c4724u1.f37968V1, c4724u1.a(c4724u1.f37849E1, c4724u1.f38052g2), "parseBoolean");
            M2 m24 = c4724u1.f37968V1;
            this.f38220f = c4724u1.a(m24, c4724u1.a(m24, c4724u1.f37849E1), "valueOf");
            this.f38221g = c4724u1.a(c4724u1.f37968V1, c4724u1.a(c4724u1.f38052g2, new M2[0]), "toString");
            this.f38222h = c4724u1.a(c4724u1.f37968V1, c4724u1.a(c4724u1.f37884J1, c4724u1.f37849E1), "hashCode");
        }

        @Override
        public final void a(Consumer consumer) {
            consumer.accept(this.f38215a);
            consumer.accept(this.f38216b);
            consumer.accept(this.f38217c);
        }

        @Override
        public final C4554l1 a() {
            return this.f38217c;
        }
    }

    public synchronized Collection<com.android.tools.r8.dex.W> d() {
        HashSet hashSet;
        hashSet = new HashSet();
        Iterator it = this.f38009b.o().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.dex.W a10 = com.android.tools.r8.dex.W.a((L2) it.next());
            if (a10 != null) {
                hashSet.add(a10);
            }
        }
        return hashSet;
    }

    public L2 b(String str) {
        return (L2) a(this.f38017c, new L2(str));
    }

    public final A2 a(L2 l22, M2 m22) {
        return a((M2) this.f38152s6.get(m22), a(m22, new M2[0]), l22);
    }

    public final A2 b(M2 m22) {
        return a(m22, a(this.f37905M1, new M2[0]), this.f38075j1);
    }

    public final M2 b(L2 l22) {
        M2 d10 = d(l22);
        a(d10);
        return d10;
    }

    public final Set a() {
        C7045eA c7045eA = this.f38152s6;
        c7045eA.getClass();
        return (Set) new C8761oV(c7045eA).stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4724u1.this.a((Map.Entry) obj);
            }
        }).collect(Collectors.toSet());
    }

    public final M2 d(L2 l22) {
        boolean z10 = f37814K6;
        if (!z10 && l22 == null) {
            throw new AssertionError();
        }
        M2 m22 = (M2) this.f38025d.get(l22);
        if (m22 == null) {
            m22 = new M2(l22);
            if (!z10 && !m22.E0() && !m22.I0() && !m22.P0() && !m22.S0()) {
                throw new AssertionError((Object) l22.toString());
            }
            if (!z10 && f37810G6.containsKey(m22)) {
                throw new AssertionError();
            }
            this.f38025d.put(l22, m22);
        }
        return m22;
    }

    public final O0.a b(int i10) {
        O0.a aVar;
        synchronized (this.f38073j) {
            aVar = (O0.a) this.f38073j.computeIfAbsent(Integer.valueOf(i10), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new O0.a(((Integer) obj).intValue());
                }
            });
        }
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public A2 c(M2 m22) {
        M2 m23 = (M2) this.f38152s6.getOrDefault(m22, m22);
        M2 m24 = (M2) ((C6379aA) this.f38152s6.f()).get(m23);
        if (m24 != null) {
            return a(m23, a(m23, m24), this.f38082k0);
        }
        throw new C5417Jv0("Invalid primitive type descriptor: " + ((Object) m22));
    }

    public final void b() {
        this.f38153t.clear();
        this.f38161u.clear();
        this.f38169v.clear();
    }

    public final A2 a(Map.Entry entry) {
        M2 m22 = (M2) entry.getKey();
        L2 l22 = ((M2) entry.getValue()).f36592f;
        return a(l22, this.f38082k0, l22, new L2[]{m22.f36592f});
    }

    public static C10070wI b(C4798y c4798y, M2 m22) {
        C10070wI d10 = ((C4514j) c4798y.f()).d(m22);
        return C6949de.a((C4798y<? extends C4514j>) c4798y, d10, d10);
    }

    public void a(boolean z10) {
        this.f37846D6 = z10;
    }

    public final synchronized void c(String str) {
        a(d(b(str)));
    }

    public final Q0 e(int i10) {
        Q0 q02;
        synchronized (this.f38097m) {
            q02 = (Q0) this.f38097m.computeIfAbsent(Integer.valueOf(i10), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new Q0(((Integer) obj).intValue());
                }
            });
        }
        return q02;
    }

    public static AbstractC4592n1 a(ConcurrentHashMap concurrentHashMap, AbstractC4406d4 abstractC4406d4) {
        if (!f37814K6 && f37810G6.containsKey(abstractC4406d4)) {
            throw new AssertionError();
        }
        AbstractC4592n1 abstractC4592n1 = (AbstractC4592n1) concurrentHashMap.putIfAbsent(abstractC4406d4, abstractC4406d4);
        return abstractC4592n1 == null ? abstractC4406d4 : abstractC4592n1;
    }

    public synchronized M2 c(L2 l22) {
        return d(l22);
    }

    public final O0.b c(int i10) {
        O0.b bVar;
        synchronized (this.f38081k) {
            bVar = (O0.b) this.f38081k.computeIfAbsent(Integer.valueOf(i10), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new O0.b(((Integer) obj).intValue());
                }
            });
        }
        return bVar;
    }

    public final void e() {
        boolean z10 = f37814K6;
        if (!z10 && !this.f38153t.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f38161u.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f38169v.isEmpty()) {
            throw new AssertionError();
        }
    }

    public final L2 a(int i10, byte[] bArr) {
        return (L2) a(this.f38017c, new L2(i10, bArr));
    }

    public M2 d(String str) {
        return c(b(str));
    }

    public final Object a(Function function, String str, M2 m22, int i10) {
        int i11 = 0;
        while (true) {
            if (!f37814K6 && i11 >= 1000) {
                throw new AssertionError();
            }
            int i12 = i10 + i11;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            if (m22 != null) {
                sb2.append('$');
                sb2.append(m22.j0().replace('.', '$'));
            }
            if (i12 > 0) {
                sb2.append("$");
                sb2.append(i12);
            }
            Optional optional = (Optional) function.apply(b(sb2.toString()));
            if (optional.isPresent()) {
                return optional.get();
            }
            i11++;
        }
    }

    public final P0 d(int i10) {
        P0 p02;
        synchronized (this.f38089l) {
            p02 = (P0) this.f38089l.computeIfAbsent(Integer.valueOf(i10), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new P0(((Integer) obj).intValue());
                }
            });
        }
        return p02;
    }

    public final A2 a(String str, M2 m22, final I2 i22, final M2 m23, final Predicate predicate, int i10) {
        return (A2) a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4724u1.this.a(m23, i22, predicate, (L2) obj);
            }
        }, str, m22, i10);
    }

    public final Optional a(M2 m22, I2 i22, Predicate predicate, L2 l22) {
        A2 a10 = a(m22, i22, l22);
        if (predicate.test(a10)) {
            return Optional.of(a10);
        }
        return Optional.empty();
    }

    public final F2 a(String str, final I2 i22, final Predicate predicate) {
        return (F2) a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4724u1.a(I2.this, predicate, (L2) obj);
            }
        }, str, (M2) null, 0);
    }

    public static Optional a(I2 i22, Predicate predicate, L2 l22) {
        int i10 = F2.f36286b;
        E2 e22 = new E2(i22, l22);
        if (predicate.test(e22)) {
            return Optional.of(e22);
        }
        return Optional.empty();
    }

    public final C4554l1 a(final M2 m22, final M2 m23, String str, final Predicate predicate) {
        return (C4554l1) a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4724u1.this.a(m22, m23, predicate, (L2) obj);
            }
        }, str, (M2) null, 0);
    }

    public final Optional a(M2 m22, M2 m23, Predicate predicate, L2 l22) {
        C4554l1 a10 = a(m22, m23, l22);
        return predicate.test(a10) ? Optional.of(a10) : Optional.empty();
    }

    public final A2 a(final A2 a22, AbstractC7552hC abstractC7552hC, final Predicate predicate, Consumer consumer) {
        if (f37814K6 || a22.b(this)) {
            return a(a22.f36127i, abstractC7552hC, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C4724u1.this.a(a22, predicate, (I2) obj);
                }
            }, consumer);
        }
        throw new AssertionError();
    }

    public final A2 a(final A2 a22, final M2 m22, final Predicate predicate) {
        if (f37814K6 || a22.b(this)) {
            return a(a22.f36127i, new C5920Sm0(new Supplier() {
                @Override
                public final Object get() {
                    return C4724u1.g(M2.this);
                }
            }), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C4724u1.this.b(a22, predicate, (I2) obj);
                }
            }, C6628bi.b());
        }
        throw new AssertionError();
    }

    public final A2 a(I2 i22, AbstractC7552hC abstractC7552hC, Function function, Consumer consumer) {
        Optional optional = (Optional) function.apply(i22);
        if (optional.isPresent()) {
            return (A2) optional.get();
        }
        if (!f37814K6 && abstractC7552hC.isEmpty()) {
            throw new AssertionError();
        }
        ArrayDeque arrayDeque = new ArrayDeque(abstractC7552hC.size());
        Iterator it = abstractC7552hC.iterator();
        while (it.hasNext()) {
            arrayDeque.addLast(new L1(this, i22, (Supplier) it.next(), Collections.EMPTY_SET));
        }
        int i10 = 0;
        while (true) {
            boolean z10 = f37814K6;
            if (!z10) {
                int i11 = i10 + 1;
                if (i10 >= 100) {
                    throw new AssertionError();
                }
                i10 = i11;
            }
            if (!z10 && arrayDeque.isEmpty()) {
                throw new AssertionError();
            }
            L1 l12 = (L1) arrayDeque.removeFirst();
            M2 m22 = (M2) l12.f36556b.get();
            l12.f36557c.add(m22);
            C4724u1 c4724u1 = l12.f36558d;
            I2 i23 = l12.f36555a;
            c4724u1.getClass();
            int size = i23.f36441f.size();
            M2[] m2Arr = new M2[size + 1];
            O2 o22 = i23.f36441f;
            System.arraycopy(o22.f36675b, 0, m2Arr, 0, o22.size());
            m2Arr[size] = m22;
            I2 a10 = c4724u1.a(i23.f36440e, m2Arr);
            Optional optional2 = (Optional) function.apply(a10);
            if (optional2.isPresent()) {
                if (!z10 && l12.f36557c.isEmpty()) {
                    throw new AssertionError();
                }
                consumer.accept(l12.f36557c);
                return (A2) optional2.get();
            }
            Iterator it2 = abstractC7552hC.iterator();
            while (it2.hasNext()) {
                arrayDeque.addLast(new L1(this, a10, (Supplier) it2.next(), l12.f36557c));
            }
        }
    }

    public final M2 a(String str) {
        M2 d10 = d(b(str));
        a(d10);
        return d10;
    }

    public final void a(M2 m22) {
        if (m22.E0()) {
            m22 = m22.a(this);
        }
        if (m22.I0()) {
            this.f38001a.add(m22);
        }
    }

    public M2 a(ClassReference classReference) {
        return d(classReference.getDescriptor());
    }

    public M2 a(int i10, M2 m22) {
        if (!f37814K6 && i10 <= 0) {
            throw new AssertionError();
        }
        return d(C11699z2.a("[", i10) + m22.V0());
    }

    public C4554l1 a(M2 m22, M2 m23, L2 l22) {
        return (C4554l1) a(this.f38033e, new C4554l1(m22, m23, l22, this.f37846D6));
    }

    public C4554l1 a(M2 m22, M2 m23, String str) {
        return a(m22, m23, b(str));
    }

    public C4554l1 a(FieldReference fieldReference) {
        return a(d(fieldReference.getHolderClass().getDescriptor()), d(fieldReference.getFieldType().getDescriptor()), fieldReference.getFieldName());
    }

    public I2 a(M2 m22, O2 o22) {
        return (I2) a(this.f38041f, new I2(m22, o22));
    }

    public I2 a(M2 m22, M2... m2Arr) {
        return a(m22, m2Arr.length == 0 ? O2.k0() : new O2(m2Arr));
    }

    public I2 a(M2 m22, List<M2> list) {
        return a(m22, (M2[]) list.toArray(M2.f36589h));
    }

    public final I2 a(I2 i22, Function function, ConcurrentHashMap concurrentHashMap) {
        I2 a10;
        M2[] m2Arr;
        if (!f37814K6 && concurrentHashMap == null) {
            throw new AssertionError();
        }
        I2 i23 = (I2) concurrentHashMap.get(i22);
        if (i23 != null) {
            return i23;
        }
        M2 m22 = (M2) function.apply(i22.f36440e);
        M2[] m2Arr2 = i22.f36441f.f36675b;
        GG gg2 = new GG();
        for (int i10 = 0; i10 < m2Arr2.length; i10++) {
            M2 m23 = (M2) function.apply(m2Arr2[i10]);
            if (m23 != m2Arr2[i10]) {
                gg2.put(Integer.valueOf(i10), m23);
            }
        }
        if (!gg2.isEmpty()) {
            m2Arr2 = (M2[]) com.android.tools.r8.internal.X3.a(M2[].class, m2Arr2, gg2);
        }
        M2 m24 = i22.f36440e;
        if (m22 == m24 && m2Arr2 == i22.f36441f.f36675b) {
            a10 = i22;
        } else {
            boolean z10 = f37814K6;
            if (!z10 && m22 != m24 && m22.equals(m24)) {
                throw new AssertionError();
            }
            if (!z10 && m2Arr2 != (m2Arr = i22.f36441f.f36675b) && Arrays.equals(m2Arr2, m2Arr)) {
                throw new AssertionError();
            }
            a10 = a(m22, m2Arr2);
        }
        concurrentHashMap.put(i22, a10);
        return a10;
    }

    public A2 a(M2 m22, I2 i22, L2 l22) {
        return (A2) a(this.f38049g, new A2(m22, i22, l22, this.f37846D6));
    }

    public A2 a(M2 m22, I2 i22, String str) {
        return a(m22, i22, b(str));
    }

    public A2 a(MethodReference methodReference) {
        L2 b10;
        final L2[] l2Arr = new L2[methodReference.getFormalTypes().size()];
        AT.a(methodReference.getFormalTypes(), new InterfaceC10593zT() {
            @Override
            public final void accept(Object obj, int i10) {
                C4724u1.this.a(l2Arr, (TypeReference) obj, i10);
            }
        });
        L2 b11 = b(methodReference.getHolderClass().getDescriptor());
        L2 b12 = b(methodReference.getMethodName());
        if (methodReference.getReturnType() == null) {
            b10 = this.f37847E;
        } else {
            b10 = b(methodReference.getReturnType().getDescriptor());
        }
        return a(b11, b12, b10, l2Arr);
    }

    public final void a(L2[] l2Arr, TypeReference typeReference, int i10) {
        l2Arr[i10] = b(typeReference.getDescriptor());
    }

    public final C2 a(B2 b22, AbstractC4744v2 abstractC4744v2, boolean z10, A2 a22) {
        return (C2) a(this.f38057h, new C2(b22, abstractC4744v2, z10, a22));
    }

    public A2 a(L2 l22, L2 l23, L2 l24, L2[] l2Arr) {
        M2 c10 = c(l22);
        M2 c11 = c(l24);
        M2[] m2Arr = new M2[l2Arr.length];
        for (int i10 = 0; i10 < l2Arr.length; i10++) {
            m2Arr[i10] = c(l2Arr[i10]);
        }
        return a(c10, a(c11, m2Arr), l23);
    }

    public final N0 a(int i10) {
        N0 n02;
        synchronized (this.f38065i) {
            n02 = (N0) this.f38065i.computeIfAbsent(Integer.valueOf(i10), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new N0(((Integer) obj).intValue());
                }
            });
        }
        return n02;
    }

    public final O0.c a(L2 l22) {
        O0.c cVar;
        synchronized (this.f38121p) {
            cVar = (O0.c) this.f38121p.computeIfAbsent(l22, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new O0.c((L2) obj);
                }
            });
        }
        return cVar;
    }

    public final S0 a(B60 b60) {
        S0 s02;
        synchronized (this.f38129q) {
            s02 = (S0) this.f38129q.computeIfAbsent(new S0(b60), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C4724u1.a((S0) obj);
                }
            });
        }
        return s02;
    }

    public final boolean a(A2 a22) {
        return a22.f38298g == this.f38067i1;
    }

    public final AbstractC6450ae0 a(final M2 m22, final C8854p10 c8854p10, final C4798y c4798y) {
        AbstractC8999pu0 abstractC8999pu0;
        if (m22.E0()) {
            AbstractC6450ae0 abstractC6450ae0 = (AbstractC6450ae0) this.f38153t.get(m22);
            if (abstractC6450ae0 != null) {
                return abstractC6450ae0.a(c8854p10);
            }
            M2 a10 = m22.a(1, this);
            C8854p10 h10 = C8854p10.h();
            if (a10 == f37808E6) {
                if (!AbstractC8999pu0.f51660a && h10.d()) {
                    throw new AssertionError();
                }
                abstractC8999pu0 = AbstractC8999pu0.m();
            } else {
                boolean z10 = AbstractC8999pu0.f51660a;
                if (a10.P0()) {
                    if (!D70.f39450b && !a10.P0()) {
                        throw new AssertionError();
                    }
                    abstractC8999pu0 = D70.a((char) a10.f36592f.f36562f[0], true);
                } else {
                    abstractC8999pu0 = c4798y.b().a(a10, h10, c4798y);
                }
            }
        } else {
            abstractC8999pu0 = null;
        }
        final AbstractC8999pu0 abstractC8999pu02 = abstractC8999pu0;
        return ((AbstractC6450ae0) this.f38153t.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4724u1.this.a(m22, c4798y, c8854p10, abstractC8999pu02, (M2) obj);
            }
        })).a(c8854p10);
    }

    public final AbstractC6450ae0 a(M2 m22, C4798y c4798y, C8854p10 c8854p10, AbstractC8999pu0 abstractC8999pu0, M2 m23) {
        AbstractC9530t40 abstractC9530t40;
        if (m22.I0()) {
            if (!c4798y.m()) {
                return C6949de.a(m22, c8854p10);
            }
            if (!f37814K6 && !c4798y.f().h()) {
                throw new AssertionError();
            }
            if (!C4798y.f38385W && !m22.I0()) {
                throw new AssertionError();
            }
            if (c4798y.m()) {
                E0 g10 = c4798y.g(m22);
                if (g10 == null) {
                    abstractC9530t40 = AbstractC9530t40.f52519c;
                } else {
                    abstractC9530t40 = AbstractC9530t40.a(g10.isInterface());
                }
            } else {
                abstractC9530t40 = AbstractC9530t40.f52519c;
            }
            if (abstractC9530t40.d()) {
                return C6949de.a(this.f38068i2, c8854p10, (C4798y<? extends C4514j>) c4798y.L(), C10070wI.c(m22));
            }
            return C6949de.b(m22, c8854p10, (C4798y<? extends C4514j>) c4798y.L());
        }
        if (f37814K6 || m22.E0()) {
            return com.android.tools.r8.internal.W3.a(abstractC8999pu0, c8854p10);
        }
        throw new AssertionError();
    }

    public final C10070wI a(final C4798y c4798y, M2 m22) {
        return (C10070wI) this.f38161u.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4724u1.b(C4798y.this, (M2) obj);
            }
        });
    }
}
