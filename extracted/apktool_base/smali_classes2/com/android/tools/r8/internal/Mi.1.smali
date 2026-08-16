.class public final Lcom/android/tools/r8/internal/Mi;
.super Lcom/android/tools/r8/graph/m0;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/kZ;

.field public final synthetic f:Lcom/android/tools/r8/internal/Ni;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ni;Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/kZ;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    iget-object p1, p1, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/m0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H0;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Mi;->e:Lcom/android/tools/r8/internal/kZ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mi;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kZ;)V
    .locals 4

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/internal/Mi;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/iZ;->d(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    monitor-enter v1

    .line 35
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-nez v2, :cond_2

    .line 36
    iget-object v2, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    iget-object v2, v2, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    .line 37
    invoke-static {v0, p1, v2}, Lcom/android/tools/r8/internal/O1;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/j1;)V

    .line 39
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 40
    check-cast v2, Lcom/android/tools/r8/graph/H0;

    invoke-interface {p2, p1, v0, v2}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Mi;->a(Lcom/android/tools/r8/graph/l1;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_8

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 6
    check-cast v0, Lcom/android/tools/r8/graph/H0;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H0;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mi;->e:Lcom/android/tools/r8/internal/kZ;

    .line 8
    instance-of v2, p1, Lcom/android/tools/r8/graph/F5;

    if-eqz v2, :cond_3

    .line 9
    check-cast p1, Lcom/android/tools/r8/graph/F5;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/iZ;->b(Lcom/android/tools/r8/graph/F0;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v2

    monitor-enter v2

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    if-nez v3, :cond_2

    .line 13
    invoke-static {v1, p1, p2}, Lcom/android/tools/r8/internal/O1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/F5;Z)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/j1;)V

    if-eqz p2, :cond_1

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 16
    check-cast p2, Lcom/android/tools/r8/graph/H0;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/tools/r8/internal/kZ;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 18
    check-cast p2, Lcom/android/tools/r8/graph/H0;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    .line 19
    :cond_2
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_3
    instance-of p2, p1, Lcom/android/tools/r8/graph/d0;

    if-eqz p2, :cond_4

    goto :goto_4

    .line 21
    :cond_4
    sget-boolean p2, Lcom/android/tools/r8/internal/Mi;->g:Z

    if-nez p2, :cond_6

    .line 22
    instance-of p2, p1, Lcom/android/tools/r8/graph/z4;

    if-eqz p2, :cond_5

    goto :goto_3

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->j()Lcom/android/tools/r8/graph/z4;

    move-result-object p1

    .line 25
    iget-object v0, p2, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/z4;->v()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    .line 26
    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/gZ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/gZ;

    move-result-object p1

    .line 27
    sget-boolean v0, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should be a compilation error if missing nest host on library class."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 28
    :cond_7
    iget-object p2, p2, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 29
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/gZ;)Lcom/android/tools/r8/errors/IncompleteNestNestDesugarDiagnosic;

    move-result-object p1

    .line 30
    invoke-virtual {p2, v1, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 31
    iget-object p1, p2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mi;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Mi;->a(Lcom/android/tools/r8/graph/l1;Z)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mi;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Mi;->a(Lcom/android/tools/r8/graph/l1;Z)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mi;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mi;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Mi;->a(Lcom/android/tools/r8/graph/l1;Z)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/A2;)V
    .locals 11

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v0, Lcom/android/tools/r8/graph/H0;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H0;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mi;->e:Lcom/android/tools/r8/internal/kZ;

    instance-of v2, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    sget-boolean v1, Lcom/android/tools/r8/internal/Mi;->g:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    sget-boolean v3, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iget-object v3, v2, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [Lcom/android/tools/r8/graph/M2;

    iget-object v8, v4, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v9, v8, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v8

    const/4 v10, 0x0

    invoke-static {v9, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v5, v7, v6

    iget-object v4, v4, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v4, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    iget-object v4, v4, Lcom/android/tools/r8/internal/iZ;->c:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, p1, v4}, Lcom/android/tools/r8/internal/O1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/j1;)V

    iget-object v4, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v4, Lcom/android/tools/r8/graph/H0;

    invoke-interface {v0, p1, v2, v1, v4}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_6
    :goto_3
    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Mi;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kZ;)V

    return-void

    :cond_8
    instance-of v0, p1, Lcom/android/tools/r8/graph/e0;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/E0;

    return-void

    :cond_9
    sget-boolean v0, Lcom/android/tools/r8/internal/Mi;->g:Z

    if-nez v0, :cond_b

    instance-of v0, p1, Lcom/android/tools/r8/graph/A4;

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mi;->f:Lcom/android/tools/r8/internal/Ni;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->Z()Lcom/android/tools/r8/graph/A4;

    move-result-object p1

    iget-object v2, v0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A4;->K()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/android/tools/r8/internal/gZ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/gZ;

    move-result-object p1

    sget-boolean v2, Lcom/android/tools/r8/internal/iZ;->e:Z

    if-nez v2, :cond_c

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Should be a compilation error if missing nest host on library class."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_c
    iget-object v0, v0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/gZ;)Lcom/android/tools/r8/errors/IncompleteNestNestDesugarDiagnosic;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    :cond_d
    :goto_6
    return-void
.end method
