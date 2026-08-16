.class public final Lcom/android/tools/r8/internal/hj;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final N()Lcom/android/tools/r8/internal/hj;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 0

    .line 11
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 18
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/hj;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v0, v0, Lcom/android/tools/r8/internal/B60$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Cn;

    new-instance v1, Lcom/android/tools/r8/internal/kr;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kr;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Cn;-><init>(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 20
    sget-boolean v1, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v1, :cond_1

    .line 21
    iget-object v1, p1, Lcom/android/tools/r8/internal/PS;->k:Lcom/android/tools/r8/internal/B60;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 24
    iget-object p1, p1, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v0, 0xd1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/hj;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    instance-of v0, v0, Lcom/android/tools/r8/internal/B60$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/za;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/za;-><init>()V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/tools/r8/internal/hj;

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final q2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method
