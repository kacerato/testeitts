.class public final Lcom/android/tools/r8/graph/c6;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/P;
.implements Lcom/android/tools/r8/graph/f3;


# static fields
.field public static final e:Lcom/android/tools/r8/graph/c6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/c6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/c6;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/c6;->e:Lcom/android/tools/r8/graph/c6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    return-void
.end method

.method public static d(Lcom/android/tools/r8/graph/H5;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final B0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final C0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final P()Lcom/android/tools/r8/graph/i0;
    .locals 0

    return-object p0
.end method

.method public final T()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Y()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)I
    .locals 1

    .line 18
    invoke-static {p1}, Lcom/android/tools/r8/graph/c6;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    const/4 v0, 0x1

    .line 19
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/e3;
    .locals 2

    .line 28
    new-instance p2, Lcom/android/tools/r8/graph/d3;

    .line 29
    invoke-static {p1}, Lcom/android/tools/r8/graph/c6;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result v0

    .line 30
    invoke-static {p1}, Lcom/android/tools/r8/graph/c6;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    const/4 v1, 0x1

    .line 31
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 32
    invoke-direct {p2, p0, p0, v0, p1}, Lcom/android/tools/r8/graph/d3;-><init>(Lcom/android/tools/r8/graph/f3;Ljava/lang/Object;II)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/y;Z)Lcom/android/tools/r8/graph/f3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;
    .locals 7

    .line 13
    new-instance v4, Lcom/android/tools/r8/graph/b6;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 15
    invoke-virtual {v0, p6}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p6

    invoke-direct {v4, p2, p6}, Lcom/android/tools/r8/graph/b6;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;)V

    .line 16
    new-instance p6, Lcom/android/tools/r8/internal/aB;

    move-object v0, p6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p7

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/aB;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/on0;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/z10;)V

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 2

    .line 10
    new-instance v0, Lcom/android/tools/r8/graph/b6;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->W0()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/graph/b6;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;)V

    .line 12
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/on0;)Lcom/android/tools/r8/internal/aB;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    .line 27
    const-string p1, "ThrowNullCode"

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/r;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    const/4 p2, 0x1

    .line 20
    invoke-virtual {p6, p2}, Lcom/android/tools/r8/internal/EX;->a(I)V

    const/16 p3, 0xbf

    .line 21
    invoke-virtual {p6, p3}, Lcom/android/tools/r8/internal/EX;->a(I)V

    .line 22
    invoke-static {p1}, Lcom/android/tools/r8/graph/c6;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    invoke-virtual {p6, p2, p1}, Lcom/android/tools/r8/internal/EX;->c(II)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 0

    .line 5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 15

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/eo;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v7}, Lcom/android/tools/r8/internal/eo;-><init>(II)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/eo;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V

    .line 25
    new-instance v8, Lcom/android/tools/r8/internal/Ds;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/internal/Ds;-><init>(I)V

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 26
    invoke-virtual/range {v8 .. v14}, Lcom/android/tools/r8/internal/Ds;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    const/4 v0, 0x3

    .line 7
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 9
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)I
    .locals 0

    invoke-static {p1}, Lcom/android/tools/r8/graph/c6;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k(I)I
    .locals 1

    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final k0()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final l0()Lcom/android/tools/r8/graph/P;
    .locals 0

    return-object p0
.end method

.method public final m0()Lcom/android/tools/r8/graph/f3;
    .locals 0

    return-object p0
.end method

.method public final o()[Lcom/android/tools/r8/graph/J0$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/J0$a;->f:[Lcom/android/tools/r8/graph/J0$a;

    return-object v0
.end method

.method public final q0()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final r()[Lcom/android/tools/r8/graph/J0$b;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/J0$b;->d:[Lcom/android/tools/r8/graph/J0$b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ThrowNullCode"

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/graph/Z0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final u0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
