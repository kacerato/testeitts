.class public final Lcom/android/tools/r8/internal/Pv0;
.super Lcom/android/tools/r8/internal/Nv0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    sget-object v0, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    const-string v1, "invoke-polymorphic"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/Nv0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/lang/String;Lcom/android/tools/r8/internal/C2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/MethodPosition;)Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/errors/UnsupportedInvokePolymorphicMethodHandleDiagnostic;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/errors/UnsupportedInvokePolymorphicMethodHandleDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nv0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/k2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/PR0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/PR0;-><init>(Lcom/android/tools/r8/internal/Pv0;Lcom/android/tools/r8/internal/ga;)V

    .line 5
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 7
    invoke-virtual {p0, p7}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 8
    sget p2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 9
    new-instance p2, Lcom/android/tools/r8/internal/eC;

    .line 10
    invoke-direct {p2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/eC;)V

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result p3

    if-nez p3, :cond_3

    .line 13
    iget-object p3, p10, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 14
    sget-boolean p5, Lcom/android/tools/r8/internal/Nv0;->e:Z

    if-nez p5, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    :goto_0
    new-instance p5, Lcom/android/tools/r8/internal/kb;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/android/tools/r8/internal/kb$a;->d:Lcom/android/tools/r8/internal/kb$a;

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    :goto_1
    invoke-direct {p5, p3}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {p2, p5}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_3
    const/4 p3, 0x1

    .line 16
    invoke-interface {p4, p3}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 17
    invoke-virtual {p0, p8, p6, p2}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/eC;)V

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/Nv0;->b(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/eC;

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method
