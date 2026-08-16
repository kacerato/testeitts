.class public final Lcom/android/tools/r8/internal/dK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/dK;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ga;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/w81;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/w81;-><init>(Lcom/android/tools/r8/internal/ga;)V

    .line 20
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p0

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 22
    new-instance p1, Lcom/android/tools/r8/internal/ga;

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p0

    const/16 p3, 0xb6

    invoke-direct {p1, p3, p2, p0}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 24
    sget p0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 25
    new-instance p0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/A2;
    .locals 4

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/dK;->b:Lcom/android/tools/r8/graph/u1;

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$invoke$special$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/dK;->b:Lcom/android/tools/r8/graph/u1;

    .line 54
    iget-object v2, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 55
    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/x81;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/x81;-><init>(Lcom/android/tools/r8/internal/dK;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ga;)V

    .line 27
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 28
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 3

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->N()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/dK;->b:Lcom/android/tools/r8/graph/u1;

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-static {p2}, Lcom/android/tools/r8/internal/dK;->a(Lcom/android/tools/r8/internal/ga;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/dK;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 18
    :cond_6
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 29
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dK;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/A2;

    move-result-object p4

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p5

    .line 32
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p6

    monitor-enter p6

    .line 33
    :try_start_0
    invoke-virtual {p5, p4}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p8

    if-nez p8, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p8

    check-cast p8, Lcom/android/tools/r8/graph/j1;

    iget-object p9, p0, Lcom/android/tools/r8/internal/dK;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p8, p5, p4, p9}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p8

    .line 35
    iget-object p9, p0, Lcom/android/tools/r8/internal/dK;->b:Lcom/android/tools/r8/graph/u1;

    .line 36
    new-instance p10, Lcom/android/tools/r8/internal/cy;

    invoke-direct {p10, p9}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 37
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p9

    .line 38
    iput-object p4, p10, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    .line 39
    sget-object p11, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    iput-object p11, p10, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    .line 40
    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p9

    iput-object p9, p10, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p9

    check-cast p9, Lcom/android/tools/r8/graph/A2;

    .line 42
    iput-object p9, p10, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p9, 0x0

    .line 43
    iput-boolean p9, p10, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 44
    invoke-virtual {p10}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p9

    .line 45
    invoke-virtual {p8}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p10

    check-cast p10, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p5, p10}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/j1;)V

    .line 46
    new-instance p5, Lcom/android/tools/r8/internal/bK;

    invoke-direct {p5, p8, p1, p9}, Lcom/android/tools/r8/internal/bK;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/G;)V

    invoke-interface {p7, p5}, Lcom/android/tools/r8/internal/eK;->a(Lcom/android/tools/r8/internal/bK;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p1

    const/16 p2, 0xb7

    invoke-direct {p3, p2, p4, p1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 49
    new-instance p1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 50
    :goto_1
    :try_start_1
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/16 v0, 0xb7

    .line 1
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
