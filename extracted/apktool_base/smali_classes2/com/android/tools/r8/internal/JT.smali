.class public final Lcom/android/tools/r8/internal/JT;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 10
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 1

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 15
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
    .locals 1

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "This classfile-specific IR should not be inserted in the Dex backend."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 1

    .line 13
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "This classfile-specific IR should not be used in LIR."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/pa;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 6
    iget-object v3, p1, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v0

    .line 8
    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p1, v1, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

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

    instance-of p1, p1, Lcom/android/tools/r8/internal/JT;

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m0()Lcom/android/tools/r8/internal/JT;
    .locals 0

    return-object p0
.end method

.method public final p2()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public final q2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method
