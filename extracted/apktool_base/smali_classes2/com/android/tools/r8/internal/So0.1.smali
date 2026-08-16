.class public final Lcom/android/tools/r8/internal/So0;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final N0()Lcom/android/tools/r8/internal/So0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/android/tools/r8/ir/optimize/D;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/ir/optimize/D;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 16
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
    .locals 0

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xe6

    .line 12
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 0

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->U4:Lcom/android/tools/r8/graph/R1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/R1;->a:Lcom/android/tools/r8/graph/A2;

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/tools/r8/internal/So0;

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Z
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

    const/16 v0, 0x49

    return v0
.end method
