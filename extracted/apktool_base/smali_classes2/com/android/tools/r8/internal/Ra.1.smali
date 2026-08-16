.class public final Lcom/android/tools/r8/internal/Ra;
.super Lcom/android/tools/r8/internal/Ta;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/Ki;

.field public final d:Lcom/android/tools/r8/internal/j80;

.field public final e:Lcom/android/tools/r8/internal/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/ba;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ta;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ra;->d:Lcom/android/tools/r8/internal/j80;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ra;->c:Lcom/android/tools/r8/internal/Ki;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ra;->e:Lcom/android/tools/r8/internal/ba;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/Ra;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ra;->c:Lcom/android/tools/r8/internal/Ki;

    .line 12
    sget-boolean v1, Lcom/android/tools/r8/internal/Ki;->h:Z

    if-nez v1, :cond_1

    .line 13
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ki;->e:Lcom/android/tools/r8/internal/lr0;

    .line 14
    iget-object v2, v2, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ki;->f:Lcom/android/tools/r8/internal/lr0;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ra;->c:Lcom/android/tools/r8/internal/Ki;

    .line 21
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    .line 22
    iget-object v1, v1, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/Ki;->g:Lcom/android/tools/r8/internal/Ef;

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ra;->c:Lcom/android/tools/r8/internal/Ki;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ra;->d:Lcom/android/tools/r8/internal/j80;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ki;->a(Ljava/lang/Iterable;)V

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ra;->c:Lcom/android/tools/r8/internal/Ki;

    .line 25
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ki;->f:Lcom/android/tools/r8/internal/lr0;

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    .line 27
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ki;->e:Lcom/android/tools/r8/internal/lr0;

    .line 28
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ra;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/yI;)V
    .locals 0

    .line 7
    invoke-virtual {p3, p1, p1, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/Ra;->f:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ra;->e:Lcom/android/tools/r8/internal/ba;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/ba;->get()Lcom/android/tools/r8/internal/Y9;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ra;->d:Lcom/android/tools/r8/internal/j80;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ra;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ra;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ra;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/cu;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ra;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .line 3
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    return-void
.end method

.method public final u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ra;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final v(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ra;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ra;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
