.class public final Lcom/android/tools/r8/graph/H5;
.super Lcom/android/tools/r8/graph/H0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/G5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/H0;",
        "Lcom/android/tools/r8/graph/G5;"
    }
.end annotation


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/graph/H0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/H0;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method


# virtual methods
.method public final H()Lcom/android/tools/r8/graph/H5;
    .locals 0

    return-object p0
.end method

.method public final O()Lcom/android/tools/r8/graph/G5;
    .locals 0

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    .line 22
    iget-boolean p3, p3, Lcom/android/tools/r8/graph/j1;->t:Z

    if-nez p3, :cond_2

    .line 23
    sget-boolean p2, Lcom/android/tools/r8/graph/H5;->f:Z

    if-nez p2, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p3}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-nez p2, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p0

    .line 26
    :cond_2
    invoke-interface {p1, p2}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 27
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/fB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/internal/fB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/EW$a;",
            ")",
            "Lcom/android/tools/r8/internal/fB;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/i0;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)V"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 10
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->s:Lcom/android/tools/r8/internal/SG;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 13
    iget-object v2, v2, Lcom/android/tools/r8/graph/j1;->s:Lcom/android/tools/r8/internal/SG;

    .line 14
    sget-object v3, Lcom/android/tools/r8/graph/j1;->w:Lcom/android/tools/r8/internal/GG;

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->s0:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/SG;

    move-result-object v1

    .line 19
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/internal/SG;)V

    return-void
.end method

.method public final a0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/android/tools/r8/graph/H0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/graph/H5;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Z
    .locals 3

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    .line 12
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->f()Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/H5;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->a()Lcom/android/tools/r8/graph/g;

    iget v2, v1, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit16 v2, v2, -0x821

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Lcom/android/tools/r8/graph/g;->c:I

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v2, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    iput-object v2, v1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/internal/KV;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->d(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/o40;->f(Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->e(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->f(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->g(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->c(Lcom/android/tools/r8/graph/H5;)V

    invoke-interface {v1, p0}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->h(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->i(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->k(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->l(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->m(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->n(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->o(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->r(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->q(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->p(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->s(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/o40;->t(Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/H5;->d(Lcom/android/tools/r8/graph/y;)V

    :cond_1
    return-void
.end method

.method public final c0()Lcom/android/tools/r8/kotlin/Q;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    iget v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    iget-object v1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1;->f(Lcom/android/tools/r8/androidapi/f;)V

    sget-object v0, Lcom/android/tools/r8/graph/c6;->e:Lcom/android/tools/r8/graph/c6;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    sget-object v2, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/ir/optimize/O;)Z

    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/KV;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->d(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/o40;->f(Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->e(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->f(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->g(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->c(Lcom/android/tools/r8/graph/H5;)V

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->h(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->i(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->k(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->l(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->m(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->n(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->o(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->r(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->q(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->p(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->s(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->t(Lcom/android/tools/r8/graph/H5;)V

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/o40;->b(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result p1

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/WY;->a(Ljava/util/BitSet;)V

    return-void

    :cond_3
    :goto_1
    sget-boolean p1, Lcom/android/tools/r8/internal/RW;->a:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/tools/r8/internal/Fj;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final getContext()Lcom/android/tools/r8/graph/o0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic getHolder()Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public getHolder()Lcom/android/tools/r8/graph/H2;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/graph/H5;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method
