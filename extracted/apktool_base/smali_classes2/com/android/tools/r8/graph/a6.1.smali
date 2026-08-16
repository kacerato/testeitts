.class public final Lcom/android/tools/r8/graph/a6;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/f3;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
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

.method public final Q()Lcom/android/tools/r8/graph/a6;
    .locals 0

    return-object p0
.end method

.method public final T()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final Y()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/e3;
    .locals 2

    .line 37
    new-instance p1, Lcom/android/tools/r8/graph/d3;

    iget-object p2, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/tools/r8/graph/d3;-><init>(Lcom/android/tools/r8/graph/f3;Ljava/lang/Object;II)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/y;Z)Lcom/android/tools/r8/graph/f3;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;
    .locals 0

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 0

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    .line 39
    const-string p1, "ThrowExceptionCode"

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/r;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 3

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/M2;)V

    .line 20
    iget-object p1, p2, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/tools/r8/graph/M2;

    .line 22
    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 23
    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 0

    .line 25
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 12

    move-object v0, p0

    .line 26
    new-instance v1, Lcom/android/tools/r8/internal/ir;

    iget-object v2, v0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    const/4 v11, 0x0

    invoke-direct {v1, v11, v2}, Lcom/android/tools/r8/internal/ir;-><init>(ILcom/android/tools/r8/graph/M2;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/ir;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V

    move-object/from16 v1, p5

    .line 28
    iget-object v2, v1, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    .line 29
    invoke-interface {v2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 30
    iget-object v3, v0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/tools/r8/graph/M2;

    .line 31
    iget-object v5, v2, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 32
    invoke-virtual {v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    iget-object v5, v2, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 33
    new-instance v2, Lcom/android/tools/r8/internal/Yp;

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v3, v2

    move v6, v11

    move v7, v10

    move v8, v10

    move v9, v10

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/r8/internal/Yp;-><init>(ILcom/android/tools/r8/graph/A2;IIIII)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 34
    invoke-virtual/range {v3 .. v9}, Lcom/android/tools/r8/internal/cq;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V

    .line 35
    new-instance v3, Lcom/android/tools/r8/internal/Ds;

    invoke-direct {v3, v11}, Lcom/android/tools/r8/internal/Ds;-><init>(I)V

    .line 36
    invoke-virtual/range {v3 .. v9}, Lcom/android/tools/r8/internal/Ds;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 2

    .line 11
    sget-boolean p4, Lcom/android/tools/r8/graph/a6;->f:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p5, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    .line 13
    invoke-interface {p2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    .line 14
    iget-object p4, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    const/4 p5, 0x0

    new-array p5, p5, [Lcom/android/tools/r8/graph/M2;

    .line 15
    iget-object v0, p2, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 16
    invoke-virtual {p2, v0, p5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p5

    iget-object v0, p2, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p2, p4, p5, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 17
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 18
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 7
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/a6;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/android/tools/r8/graph/a6;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final k(I)I
    .locals 1

    const/4 v0, 0x6

    if-gt v0, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final k0()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/a6;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/tools/r8/c;->a(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final m0()Lcom/android/tools/r8/graph/f3;
    .locals 0

    return-object p0
.end method

.method public final o()[Lcom/android/tools/r8/graph/J0$a;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/J0$a;

    return-object v0
.end method

.method public final q0()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final r()[Lcom/android/tools/r8/graph/J0$b;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/J0$b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ThrowExceptionCode"

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/graph/Z0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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
