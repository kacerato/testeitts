.class public Lorg/bouncycastle/crypto/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/util/c;->a:[S

    return-void

    :array_0
    .array-data 2
        0x5ds
        0xbes
        0x9bs
        0x8bs
        0x11s
        0x99s
        0x6es
        0x4ds
        0x59s
        0xf3s
        0x85s
        0xa6s
        0x3fs
        0xb7s
        0x83s
        0xc5s
        0xe4s
        0x73s
        0x6bs
        0x3as
        0x68s
        0x5as
        0xc0s
        0x47s
        0xa0s
        0x64s
        0x34s
        0xcs
        0xf1s
        0xd0s
        0x52s
        0xa5s
        0xb9s
        0x1es
        0x96s
        0x43s
        0x41s
        0xd8s
        0xd4s
        0x2cs
        0xdbs
        0xf8s
        0x7s
        0x77s
        0x2as
        0xcas
        0xebs
        0xefs
        0x10s
        0x1cs
        0x16s
        0xds
        0x38s
        0x72s
        0x2fs
        0x89s
        0xc1s
        0xf9s
        0x80s
        0xc4s
        0x6ds
        0xaes
        0x30s
        0x3ds
        0xces
        0x20s
        0x63s
        0xfes
        0xe6s
        0x1as
        0xc7s
        0xb8s
        0x50s
        0xe8s
        0x24s
        0x17s
        0xfcs
        0x25s
        0x6fs
        0xbbs
        0x6as
        0xa3s
        0x44s
        0x53s
        0xd9s
        0xa2s
        0x1s
        0xabs
        0xbcs
        0xb6s
        0x1fs
        0x98s
        0xees
        0x9as
        0xa7s
        0x2ds
        0x4fs
        0x9es
        0x8es
        0xacs
        0xe0s
        0xc6s
        0x49s
        0x46s
        0x29s
        0xf4s
        0x94s
        0x8as
        0xafs
        0xe1s
        0x5bs
        0xc3s
        0xb3s
        0x7bs
        0x57s
        0xd1s
        0x7cs
        0x9cs
        0xeds
        0x87s
        0x40s
        0x8cs
        0xe2s
        0xcbs
        0x93s
        0x14s
        0xc9s
        0x61s
        0x2es
        0xe5s
        0xccs
        0xf6s
        0x5es
        0xa8s
        0x5cs
        0xd6s
        0x75s
        0x8ds
        0x62s
        0x95s
        0x58s
        0x69s
        0x76s
        0xa1s
        0x4as
        0xb5s
        0x55s
        0x9s
        0x78s
        0x33s
        0x82s
        0xd7s
        0xdds
        0x79s
        0xf5s
        0x1bs
        0xbs
        0xdes
        0x26s
        0x21s
        0x28s
        0x74s
        0x4s
        0x97s
        0x56s
        0xdfs
        0x3cs
        0xf0s
        0x37s
        0x39s
        0xdcs
        0xffs
        0x6s
        0xa4s
        0xeas
        0x42s
        0x8s
        0xdas
        0xb4s
        0x71s
        0xb0s
        0xcfs
        0x12s
        0x7as
        0x4es
        0xfas
        0x6cs
        0x1ds
        0x84s
        0x0s
        0xc8s
        0x7fs
        0x91s
        0x45s
        0xaas
        0x2bs
        0xc2s
        0xb1s
        0x8fs
        0xd5s
        0xbas
        0xf2s
        0xads
        0x19s
        0xb2s
        0x67s
        0x36s
        0xf7s
        0xfs
        0xas
        0x92s
        0x7ds
        0xe3s
        0x9ds
        0xe9s
        0x90s
        0x3es
        0x23s
        0x27s
        0x66s
        0x13s
        0xecs
        0x81s
        0x15s
        0xbds
        0x22s
        0xbfs
        0x9fs
        0x7es
        0xa9s
        0x51s
        0x4bs
        0x4cs
        0xfbs
        0x2s
        0xd3s
        0x70s
        0x86s
        0x31s
        0xe7s
        0x3bs
        0x5s
        0x3s
        0x54s
        0x60s
        0x48s
        0x65s
        0x18s
        0xd2s
        0xcds
        0x5fs
        0x32s
        0x88s
        0xes
        0x35s
        0xfds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/x;)LTi/a;
    .locals 3

    sget-object v0, LSh/d;->C:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, LSh/d;->L:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, LSh/d;->U:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, LSh/d;->D:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LSh/d;->M:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LSh/d;->V:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot recognise cipher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object p0

    invoke-static {p0}, LTi/e;->p(LBi/f;)LTi/f;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object p0

    invoke-static {p0}, LTi/r;->u(LBi/f;)LTi/s;

    move-result-object p0

    return-object p0
.end method

.method public static b(Loh/x;)LBi/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, LSh/d;->y:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, LSh/d;->H:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, LSh/d;->Q:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, LXh/t;->n1:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, LLi/v;

    invoke-direct {p0}, LLi/v;-><init>()V

    :goto_0
    invoke-static {p0}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object p0

    goto :goto_2

    :cond_1
    sget-object v0, LBj/b;->e:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, LLi/u;

    invoke-direct {p0}, LLi/u;-><init>()V

    goto :goto_0

    :cond_2
    sget-object v0, LXh/t;->o1:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, LLi/V;

    invoke-direct {p0}, LLi/V;-><init>()V

    goto :goto_0

    :cond_3
    sget-object v0, Lyj/c;->u:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, LLi/k;

    invoke-direct {p0}, LLi/k;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot recognise cipher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object p0

    goto :goto_0

    :goto_2
    new-instance v0, LWi/e;

    new-instance v1, LWi/d;

    invoke-direct {v1}, LWi/d;-><init>()V

    invoke-direct {v0, p0, v1}, LWi/e;-><init>(LBi/f;LWi/a;)V

    return-object v0
.end method

.method public static c(ZLBi/k;Lhi/b;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->p1:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, LLi/X;

    invoke-direct {p2}, LLi/X;-><init>()V

    invoke-interface {p2, p0, p1}, LBi/Y;->a(ZLBi/k;)V

    return-object p2

    :cond_0
    sget-object v1, LSh/d;->C:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_c

    sget-object v1, LSh/d;->L:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, LSh/d;->U:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    sget-object v1, LSh/d;->D:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, LSh/d;->M:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, LSh/d;->V:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/c;->b(Loh/x;)LBi/h;

    move-result-object v1

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-interface {p2}, Loh/g;->r()Loh/B;

    move-result-object p2

    if-eqz p2, :cond_7

    instance-of v3, p2, Loh/t;

    if-nez v3, :cond_7

    sget-object v2, LXh/t;->n1:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lorg/bouncycastle/crypto/util/a;->a:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, LSh/d;->y:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, LSh/d;->H:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, LSh/d;->Q:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, LAj/a;->a:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, LAj/a;->b:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, LAj/a;->c:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lwj/a;->a:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, LBj/b;->e:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lorg/bouncycastle/crypto/util/a;->b:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Lyj/a;->v(Ljava/lang/Object;)Lyj/a;

    move-result-object p2

    new-instance v0, LXi/w0;

    invoke-virtual {p2}, Lyj/a;->u()[B

    move-result-object p2

    invoke-direct {v0, p1, p2}, LXi/w0;-><init>(LBi/k;[B)V

    :goto_0
    invoke-virtual {v1, p0, v0}, LBi/h;->f(ZLBi/k;)V

    goto :goto_3

    :cond_4
    sget-object v2, LXh/t;->o1:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, LXh/w;->v(Ljava/lang/Object;)LXh/w;

    move-result-object p2

    new-instance v0, LXi/w0;

    new-instance v2, LXi/B0;

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    sget-object v3, Lorg/bouncycastle/crypto/util/c;->a:[S

    invoke-virtual {p2}, LXh/w;->x()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aget-short v3, v3, v4

    invoke-direct {v2, p1, v3}, LXi/B0;-><init>([BI)V

    invoke-virtual {p2}, LXh/w;->u()[B

    move-result-object p1

    invoke-direct {v0, v2, p1}, LXi/w0;-><init>(LBi/k;[B)V

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    new-instance v0, LXi/w0;

    invoke-static {p2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p2

    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object p2

    invoke-direct {v0, p1, p2}, LXi/w0;-><init>(LBi/k;[B)V

    goto :goto_0

    :cond_7
    sget-object p2, LXh/t;->n1:Loh/x;

    invoke-virtual {v0, p2}, Loh/B;->A(Loh/B;)Z

    move-result p2

    if-nez p2, :cond_9

    sget-object p2, Lorg/bouncycastle/crypto/util/a;->a:Loh/x;

    invoke-virtual {v0, p2}, Loh/B;->A(Loh/B;)Z

    move-result p2

    if-nez p2, :cond_9

    sget-object p2, Lorg/bouncycastle/crypto/util/a;->b:Loh/x;

    invoke-virtual {v0, p2}, Loh/B;->A(Loh/B;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v1, p0, p1}, LBi/h;->f(ZLBi/k;)V

    goto :goto_3

    :cond_9
    :goto_2
    new-instance p2, LXi/w0;

    new-array v0, v2, [B

    invoke-direct {p2, p1, v0}, LXi/w0;-><init>(LBi/k;[B)V

    invoke-virtual {v1, p0, p2}, LBi/h;->f(ZLBi/k;)V

    :goto_3
    return-object v1

    :cond_a
    :goto_4
    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/c;->a(Loh/x;)LTi/a;

    move-result-object v0

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, Lnj/a;->v(Ljava/lang/Object;)Lnj/a;

    move-result-object p2

    instance-of v1, p1, LXi/o0;

    if-eqz v1, :cond_b

    new-instance v1, LXi/a;

    check-cast p1, LXi/o0;

    invoke-virtual {p2}, Lnj/a;->u()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {p2}, Lnj/a;->x()[B

    move-result-object p2

    invoke-direct {v1, p1, v3, p2}, LXi/a;-><init>(LXi/o0;I[B)V

    :goto_5
    invoke-interface {v0, p0, v1}, LTi/b;->a(ZLBi/k;)V

    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key data must be accessible for CCM operation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_6
    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/c;->a(Loh/x;)LTi/a;

    move-result-object v0

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, Lnj/c;->v(Ljava/lang/Object;)Lnj/c;

    move-result-object p2

    instance-of v1, p1, LXi/o0;

    if-eqz v1, :cond_d

    new-instance v1, LXi/a;

    check-cast p1, LXi/o0;

    invoke-virtual {p2}, Lnj/c;->u()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {p2}, Lnj/c;->x()[B

    move-result-object p2

    invoke-direct {v1, p1, v3, p2}, LXi/a;-><init>(LXi/o0;I[B)V

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key data must be accessible for GCM operation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/io/OutputStream;Ljava/lang/Object;)LQi/b;
    .locals 2

    instance-of v0, p1, LBi/h;

    if-eqz v0, :cond_0

    new-instance v0, LQi/b;

    check-cast p1, LBi/h;

    invoke-direct {v0, p0, p1}, LQi/b;-><init>(Ljava/io/OutputStream;LBi/h;)V

    return-object v0

    :cond_0
    instance-of v0, p1, LBi/Y;

    if-eqz v0, :cond_1

    new-instance v0, LQi/b;

    check-cast p1, LBi/Y;

    invoke-direct {v0, p0, p1}, LQi/b;-><init>(Ljava/io/OutputStream;LBi/Y;)V

    return-object v0

    :cond_1
    instance-of v0, p1, LTi/a;

    if-eqz v0, :cond_2

    new-instance v0, LQi/b;

    check-cast p1, LTi/a;

    invoke-direct {v0, p0, p1}, LQi/b;-><init>(Ljava/io/OutputStream;LTi/a;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown cipher object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
