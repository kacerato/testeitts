.class public final Lcom/android/tools/r8/internal/Lv0;
.super Lcom/android/tools/r8/internal/Nv0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    sget-object v0, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    const-string v1, "const-method-handle"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/Nv0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/lang/String;Lcom/android/tools/r8/internal/C2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/MethodPosition;)Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/errors/UnsupportedConstMethodHandleDiagnostic;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/errors/UnsupportedConstMethodHandleDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 2
    instance-of p1, p1, Lcom/android/tools/r8/internal/v9;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/gM0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/gM0;-><init>(Lcom/android/tools/r8/internal/Lv0;)V

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 6
    invoke-virtual {p0, p6}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 7
    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/eC;

    .line 9
    invoke-direct {p1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 10
    invoke-virtual {p0, p7, p5, p1}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/eC;)V

    .line 11
    new-instance p2, Lcom/android/tools/r8/internal/x9;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/x9;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method
