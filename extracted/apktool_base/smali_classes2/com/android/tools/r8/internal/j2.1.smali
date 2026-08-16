.class public final Lcom/android/tools/r8/internal/j2;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 0

    .line 4
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 9
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

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
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
    .locals 1

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Unexpected use of materializing NOP prior to CF/DEX finalization."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 1

    .line 7
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

    instance-of p1, p1, Lcom/android/tools/r8/internal/j2;

    return p1
.end method

.method public final d1()Z
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

    const/4 v0, 0x2

    return v0
.end method
