.class public final Lcom/android/tools/r8/internal/Ov0;
.super Lcom/android/tools/r8/internal/Nv0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    sget-object v0, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    const-string v1, "invoke-dynamic"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/Nv0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/lang/String;Lcom/android/tools/r8/internal/C2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/MethodPosition;)Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/errors/UnsupportedInvokeCustomDiagnostic;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/errors/UnsupportedInvokeCustomDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/nQ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/nQ0;-><init>(Lcom/android/tools/r8/internal/Ov0;Lcom/android/tools/r8/internal/ha;)V

    .line 4
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 6
    invoke-virtual {p0, p7}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 7
    sget p2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 8
    new-instance p2, Lcom/android/tools/r8/internal/eC;

    .line 9
    invoke-direct {p2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object p1

    .line 11
    iget-object p3, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 12
    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/eC;)V

    const/4 p3, 0x1

    .line 13
    invoke-interface {p4, p3}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 14
    invoke-virtual {p0, p8, p6, p2}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/eC;)V

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/Nv0;->b(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/eC;

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method
