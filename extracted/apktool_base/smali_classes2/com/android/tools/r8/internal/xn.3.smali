.class public abstract Lcom/android/tools/r8/internal/xn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)Lcom/android/tools/r8/internal/Np;
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal Opcode: 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Lcom/android/tools/r8/internal/jo;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/jo;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/android/tools/r8/internal/io;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/io;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/android/tools/r8/internal/Xp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Xp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/android/tools/r8/internal/Wp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Wp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/android/tools/r8/internal/gq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/gq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/android/tools/r8/internal/fq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/fq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/android/tools/r8/internal/Hs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Hs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/android/tools/r8/internal/hs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/hs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_8
    new-instance p1, Lcom/android/tools/r8/internal/cs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/cs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/android/tools/r8/internal/Qs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Qs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a
    new-instance p1, Lcom/android/tools/r8/internal/qr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/qr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_b
    new-instance p1, Lcom/android/tools/r8/internal/in;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/in;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_c
    new-instance p1, Lcom/android/tools/r8/internal/Ir;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Ir;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_d
    new-instance p1, Lcom/android/tools/r8/internal/Bo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Bo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_e
    new-instance p1, Lcom/android/tools/r8/internal/ar;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/ar;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_f
    new-instance p1, Lcom/android/tools/r8/internal/Qr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Qr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_10
    new-instance p1, Lcom/android/tools/r8/internal/Vm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Vm;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_11
    new-instance p1, Lcom/android/tools/r8/internal/Ps;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Ps;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_12
    new-instance p1, Lcom/android/tools/r8/internal/pr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/pr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_13
    new-instance p1, Lcom/android/tools/r8/internal/hn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/hn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_14
    new-instance p1, Lcom/android/tools/r8/internal/Hr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Hr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_15
    new-instance p1, Lcom/android/tools/r8/internal/Ao;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Ao;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_16
    new-instance p1, Lcom/android/tools/r8/internal/Zq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Zq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_17
    new-instance p1, Lcom/android/tools/r8/internal/Pr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Pr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_18
    new-instance p1, Lcom/android/tools/r8/internal/Um;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Um;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_19
    new-instance p1, Lcom/android/tools/r8/internal/Br;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Br;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_1a
    new-instance p1, Lcom/android/tools/r8/internal/uo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/uo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_1b
    new-instance p1, Lcom/android/tools/r8/internal/Tq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Tq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_1c
    new-instance p1, Lcom/android/tools/r8/internal/us;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/us;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_1d
    new-instance p1, Lcom/android/tools/r8/internal/Om;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Om;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_1e
    new-instance p1, Lcom/android/tools/r8/internal/Dr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Dr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_1f
    new-instance p1, Lcom/android/tools/r8/internal/wo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/wo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_20
    new-instance p1, Lcom/android/tools/r8/internal/Vq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Vq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_21
    new-instance p1, Lcom/android/tools/r8/internal/ws;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/ws;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_22
    new-instance p1, Lcom/android/tools/r8/internal/Qm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Qm;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_23
    new-instance p1, Lcom/android/tools/r8/internal/Is;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Is;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_24
    new-instance p1, Lcom/android/tools/r8/internal/is;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/is;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_25
    new-instance p1, Lcom/android/tools/r8/internal/ds;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/ds;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_26
    new-instance p1, Lcom/android/tools/r8/internal/Rs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Rs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_27
    new-instance p1, Lcom/android/tools/r8/internal/rr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/rr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_28
    new-instance p1, Lcom/android/tools/r8/internal/jn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/jn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_29
    new-instance p1, Lcom/android/tools/r8/internal/Jr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Jr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_2a
    new-instance p1, Lcom/android/tools/r8/internal/Co;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Co;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_2b
    new-instance p1, Lcom/android/tools/r8/internal/br;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/br;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_2c
    new-instance p1, Lcom/android/tools/r8/internal/As;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/As;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_2d
    new-instance p1, Lcom/android/tools/r8/internal/Wm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Wm;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_2e
    new-instance p1, Lcom/android/tools/r8/internal/Fs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_2f
    new-instance p1, Lcom/android/tools/r8/internal/fs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/fs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_30
    new-instance p1, Lcom/android/tools/r8/internal/as;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/as;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_31
    new-instance p1, Lcom/android/tools/r8/internal/Ns;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Ns;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_32
    new-instance p1, Lcom/android/tools/r8/internal/nr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/nr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_33
    new-instance p1, Lcom/android/tools/r8/internal/fn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/fn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_34
    new-instance p1, Lcom/android/tools/r8/internal/Fr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_35
    new-instance p1, Lcom/android/tools/r8/internal/yo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/yo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_36
    new-instance p1, Lcom/android/tools/r8/internal/Xq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Xq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_37
    new-instance p1, Lcom/android/tools/r8/internal/ys;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/ys;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_38
    new-instance p1, Lcom/android/tools/r8/internal/Sm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Sm;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_39
    new-instance p1, Lcom/android/tools/r8/internal/Cr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Cr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_3a
    new-instance p1, Lcom/android/tools/r8/internal/vo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/vo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_3b
    new-instance p1, Lcom/android/tools/r8/internal/Uq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Uq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_3c
    new-instance p1, Lcom/android/tools/r8/internal/vs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/vs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_3d
    new-instance p1, Lcom/android/tools/r8/internal/Pm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Pm;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_3e
    new-instance p1, Lcom/android/tools/r8/internal/Er;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Er;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_3f
    new-instance p1, Lcom/android/tools/r8/internal/xo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/xo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_40
    new-instance p1, Lcom/android/tools/r8/internal/Wq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Wq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_41
    new-instance p1, Lcom/android/tools/r8/internal/xs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/xs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_42
    new-instance p1, Lcom/android/tools/r8/internal/Rm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Rm;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_43
    new-instance p1, Lcom/android/tools/r8/internal/Js;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Js;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_44
    new-instance p1, Lcom/android/tools/r8/internal/js;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/js;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_45
    new-instance p1, Lcom/android/tools/r8/internal/es;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/es;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_46
    new-instance p1, Lcom/android/tools/r8/internal/Ss;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Ss;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_47
    new-instance p1, Lcom/android/tools/r8/internal/sr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/sr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_48
    new-instance p1, Lcom/android/tools/r8/internal/kn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/kn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_49
    new-instance p1, Lcom/android/tools/r8/internal/Kr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Kr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_4a
    new-instance p1, Lcom/android/tools/r8/internal/Do;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Do;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_4b
    new-instance p1, Lcom/android/tools/r8/internal/cr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/cr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_4c
    new-instance p1, Lcom/android/tools/r8/internal/Bs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Bs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_4d
    new-instance p1, Lcom/android/tools/r8/internal/Xm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Xm;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_4e
    new-instance p1, Lcom/android/tools/r8/internal/Gs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Gs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_4f
    new-instance p1, Lcom/android/tools/r8/internal/gs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/gs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_50
    new-instance p1, Lcom/android/tools/r8/internal/bs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/bs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_51
    new-instance p1, Lcom/android/tools/r8/internal/Os;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Os;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_52
    new-instance p1, Lcom/android/tools/r8/internal/or;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/or;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_53
    new-instance p1, Lcom/android/tools/r8/internal/gn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/gn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_54
    new-instance p1, Lcom/android/tools/r8/internal/Gr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Gr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_55
    new-instance p1, Lcom/android/tools/r8/internal/zo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/zo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_56
    new-instance p1, Lcom/android/tools/r8/internal/Yq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Yq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_57
    new-instance p1, Lcom/android/tools/r8/internal/zs;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/zs;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_58
    new-instance p1, Lcom/android/tools/r8/internal/Tm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Tm;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_59
    new-instance p1, Lcom/android/tools/r8/internal/Vp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Vp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_5a
    new-instance p1, Lcom/android/tools/r8/internal/Rp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Rp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_5b
    new-instance p1, Lcom/android/tools/r8/internal/Qp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Qp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_5c
    new-instance p1, Lcom/android/tools/r8/internal/Eo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Eo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_5d
    new-instance p1, Lcom/android/tools/r8/internal/Go;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Go;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_5e
    new-instance p1, Lcom/android/tools/r8/internal/Fo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_5f
    new-instance p1, Lcom/android/tools/r8/internal/No;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/No;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_60
    new-instance p1, Lcom/android/tools/r8/internal/Po;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Po;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_61
    new-instance p1, Lcom/android/tools/r8/internal/Oo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Oo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_62
    new-instance p1, Lcom/android/tools/r8/internal/xq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/xq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_63
    new-instance p1, Lcom/android/tools/r8/internal/yq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/yq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_64
    new-instance p1, Lcom/android/tools/r8/internal/zq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/zq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_65
    new-instance p1, Lcom/android/tools/r8/internal/Sp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Sp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_66
    new-instance p1, Lcom/android/tools/r8/internal/Tp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Tp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_67
    new-instance p1, Lcom/android/tools/r8/internal/Up;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Up;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_68
    new-instance p1, Lcom/android/tools/r8/internal/dr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/dr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_69
    new-instance p1, Lcom/android/tools/r8/internal/er;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/er;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_6a
    new-instance p1, Lcom/android/tools/r8/internal/mr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/mr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_6b
    new-instance p1, Lcom/android/tools/r8/internal/gr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/gr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_6c
    new-instance p1, Lcom/android/tools/r8/internal/lr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/lr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_6d
    new-instance p1, Lcom/android/tools/r8/internal/fr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/fr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_6e
    new-instance p1, Lcom/android/tools/r8/internal/bq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/bq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_6f
    new-instance p1, Lcom/android/tools/r8/internal/iq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/iq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_70
    new-instance p1, Lcom/android/tools/r8/internal/Zp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Zp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_71
    new-instance p1, Lcom/android/tools/r8/internal/kq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/kq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_72
    new-instance p1, Lcom/android/tools/r8/internal/mq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/mq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_73
    new-instance p1, Lcom/android/tools/r8/internal/aq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/aq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_74
    new-instance p1, Lcom/android/tools/r8/internal/hq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/hq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_75
    new-instance p1, Lcom/android/tools/r8/internal/Yp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Yp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_76
    new-instance p1, Lcom/android/tools/r8/internal/jq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/jq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_77
    new-instance p1, Lcom/android/tools/r8/internal/lq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/lq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_78
    new-instance p1, Lcom/android/tools/r8/internal/ss;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/ss;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_79
    new-instance p1, Lcom/android/tools/r8/internal/qs;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/qs;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_7a
    new-instance p1, Lcom/android/tools/r8/internal/ps;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/ps;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_7b
    new-instance p1, Lcom/android/tools/r8/internal/os;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/os;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_7c
    new-instance p1, Lcom/android/tools/r8/internal/rs;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/rs;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_7d
    new-instance p1, Lcom/android/tools/r8/internal/ts;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/ts;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_7e
    new-instance p1, Lcom/android/tools/r8/internal/ns;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/ns;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_7f
    new-instance p1, Lcom/android/tools/r8/internal/Yr;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Yr;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_80
    new-instance p1, Lcom/android/tools/r8/internal/Vr;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Vr;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_81
    new-instance p1, Lcom/android/tools/r8/internal/Ur;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Ur;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_82
    new-instance p1, Lcom/android/tools/r8/internal/Tr;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Tr;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_83
    new-instance p1, Lcom/android/tools/r8/internal/Wr;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Wr;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_84
    new-instance p1, Lcom/android/tools/r8/internal/Zr;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Zr;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_85
    new-instance p1, Lcom/android/tools/r8/internal/Sr;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Sr;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_86
    new-instance p1, Lcom/android/tools/r8/internal/sq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/sq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_87
    new-instance p1, Lcom/android/tools/r8/internal/qq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/qq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_88
    new-instance p1, Lcom/android/tools/r8/internal/pq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/pq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_89
    new-instance p1, Lcom/android/tools/r8/internal/oq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/oq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_8a
    new-instance p1, Lcom/android/tools/r8/internal/rq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/rq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_8b
    new-instance p1, Lcom/android/tools/r8/internal/tq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/tq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_8c
    new-instance p1, Lcom/android/tools/r8/internal/nq;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/nq;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_8d
    new-instance p1, Lcom/android/tools/r8/internal/Kp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Kp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_8e
    new-instance p1, Lcom/android/tools/r8/internal/Gp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Gp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_8f
    new-instance p1, Lcom/android/tools/r8/internal/Fp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Fp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_90
    new-instance p1, Lcom/android/tools/r8/internal/Ep;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Ep;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_91
    new-instance p1, Lcom/android/tools/r8/internal/Hp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Hp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_92
    new-instance p1, Lcom/android/tools/r8/internal/Lp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Lp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_93
    new-instance p1, Lcom/android/tools/r8/internal/Dp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Dp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_94
    new-instance p1, Lcom/android/tools/r8/internal/qn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/qn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_95
    new-instance p1, Lcom/android/tools/r8/internal/on;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/on;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_96
    new-instance p1, Lcom/android/tools/r8/internal/nn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/nn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_97
    new-instance p1, Lcom/android/tools/r8/internal/mn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/mn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_98
    new-instance p1, Lcom/android/tools/r8/internal/pn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/pn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_99
    new-instance p1, Lcom/android/tools/r8/internal/rn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/rn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_9a
    new-instance p1, Lcom/android/tools/r8/internal/ln;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/ln;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_9b
    new-instance p1, Lcom/android/tools/r8/internal/dn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/dn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_9c
    new-instance p1, Lcom/android/tools/r8/internal/bn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/bn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_9d
    new-instance p1, Lcom/android/tools/r8/internal/an;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/an;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_9e
    new-instance p1, Lcom/android/tools/r8/internal/Zm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Zm;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_9f
    new-instance p1, Lcom/android/tools/r8/internal/cn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/cn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a0
    new-instance p1, Lcom/android/tools/r8/internal/en;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/en;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a1
    new-instance p1, Lcom/android/tools/r8/internal/Ym;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Ym;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a2
    new-instance p1, Lcom/android/tools/r8/internal/yp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/yp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a3
    new-instance p1, Lcom/android/tools/r8/internal/wp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/wp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a4
    new-instance p1, Lcom/android/tools/r8/internal/up;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/up;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a5
    new-instance p1, Lcom/android/tools/r8/internal/Ap;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Ap;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a6
    new-instance p1, Lcom/android/tools/r8/internal/Cp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Cp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a7
    new-instance p1, Lcom/android/tools/r8/internal/sp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/sp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a8
    new-instance p1, Lcom/android/tools/r8/internal/xp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/xp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_a9
    new-instance p1, Lcom/android/tools/r8/internal/vp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/vp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_aa
    new-instance p1, Lcom/android/tools/r8/internal/tp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/tp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_ab
    new-instance p1, Lcom/android/tools/r8/internal/zp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/zp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_ac
    new-instance p1, Lcom/android/tools/r8/internal/Bp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Bp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_ad
    new-instance p1, Lcom/android/tools/r8/internal/rp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/rp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_ae
    new-instance p1, Lcom/android/tools/r8/internal/Wn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Wn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_af
    new-instance p1, Lcom/android/tools/r8/internal/Xn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Xn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_b0
    new-instance p1, Lcom/android/tools/r8/internal/Zn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Zn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_b1
    new-instance p1, Lcom/android/tools/r8/internal/Yn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Yn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_b2
    new-instance p1, Lcom/android/tools/r8/internal/ao;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/ao;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_b3
    new-instance p1, Lcom/android/tools/r8/internal/ls;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/ls;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_b4
    new-instance p1, Lcom/android/tools/r8/internal/tr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/tr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_b5
    new-instance p0, Lcom/android/tools/r8/internal/pp;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/pp;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    :pswitch_b6
    new-instance p0, Lcom/android/tools/r8/internal/op;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/op;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    :pswitch_b7
    new-instance p1, Lcom/android/tools/r8/internal/qp;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/qp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_b8
    new-instance p1, Lcom/android/tools/r8/internal/Ds;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Ds;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_b9
    new-instance p1, Lcom/android/tools/r8/internal/Jo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Jo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_ba
    new-instance p1, Lcom/android/tools/r8/internal/Mo;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Mo;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_bb
    new-instance p1, Lcom/android/tools/r8/internal/Lo;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Lo;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_bc
    new-instance p1, Lcom/android/tools/r8/internal/hr;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/hr;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_bd
    new-instance p1, Lcom/android/tools/r8/internal/ir;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/ir;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_be
    new-instance p1, Lcom/android/tools/r8/internal/sn;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/sn;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_bf
    new-instance p1, Lcom/android/tools/r8/internal/Mp;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Mp;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_c0
    new-instance p1, Lcom/android/tools/r8/internal/Ln;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Ln;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_c1
    new-instance p1, Lcom/android/tools/r8/internal/Fq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_c2
    new-instance p1, Lcom/android/tools/r8/internal/Eq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Eq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_c3
    new-instance p1, Lcom/android/tools/r8/internal/go;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/go;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_c4
    new-instance p1, Lcom/android/tools/r8/internal/lo;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/lo;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_c5
    new-instance p1, Lcom/android/tools/r8/internal/ko;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/ko;-><init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V

    return-object p1

    :pswitch_c6
    new-instance p1, Lcom/android/tools/r8/internal/po;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/po;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_c7
    new-instance p1, Lcom/android/tools/r8/internal/oo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/oo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_c8
    new-instance p1, Lcom/android/tools/r8/internal/no;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/no;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_c9
    new-instance p1, Lcom/android/tools/r8/internal/mo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/mo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_ca
    new-instance p1, Lcom/android/tools/r8/internal/ho;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/ho;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_cb
    new-instance p1, Lcom/android/tools/r8/internal/fo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/fo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_cc
    new-instance p1, Lcom/android/tools/r8/internal/co;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/co;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_cd
    new-instance p1, Lcom/android/tools/r8/internal/eo;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/eo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_ce
    new-instance p1, Lcom/android/tools/r8/internal/Mr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Mr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_cf
    new-instance p1, Lcom/android/tools/r8/internal/Or;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Or;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_d0
    new-instance p1, Lcom/android/tools/r8/internal/Lr;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Lr;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_d1
    new-instance p0, Lcom/android/tools/r8/internal/Nr;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Nr;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    :pswitch_d2
    new-instance p1, Lcom/android/tools/r8/internal/Iq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Iq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_d3
    new-instance p1, Lcom/android/tools/r8/internal/Oq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Oq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_d4
    new-instance p1, Lcom/android/tools/r8/internal/Pq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Pq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_d5
    new-instance p1, Lcom/android/tools/r8/internal/Nq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Nq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_d6
    new-instance p0, Lcom/android/tools/r8/internal/Kq;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Kq;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    :pswitch_d7
    new-instance p1, Lcom/android/tools/r8/internal/Mq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Mq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_d8
    new-instance p1, Lcom/android/tools/r8/internal/Lq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Lq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_d9
    new-instance p0, Lcom/android/tools/r8/internal/Qq;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Qq;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    :pswitch_da
    new-instance p1, Lcom/android/tools/r8/internal/Sq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Sq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_db
    new-instance p1, Lcom/android/tools/r8/internal/Rq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Rq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_dc
    new-instance p0, Lcom/android/tools/r8/internal/Gq;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Gq;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    :pswitch_dd
    new-instance p1, Lcom/android/tools/r8/internal/Jq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Jq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_de
    new-instance p1, Lcom/android/tools/r8/internal/Hq;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Hq;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-object p1

    :pswitch_df
    sget p1, Lcom/android/tools/r8/internal/kr;->f:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    new-instance p0, Lcom/android/tools/r8/internal/kr;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/kr;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/Ko;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Ko;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/ms;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/ms;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/ur;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/ur;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x74
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xfa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
