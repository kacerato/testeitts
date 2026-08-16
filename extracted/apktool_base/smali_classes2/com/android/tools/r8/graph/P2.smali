.class public abstract Lcom/android/tools/r8/graph/P2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 20
    sget-boolean p0, Lcom/android/tools/r8/graph/P2;->a:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "We should not have found an upper bound if the hierarchy is missing"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 21
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->H()I

    move-result p1

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/L2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    sget-boolean p0, Lcom/android/tools/r8/graph/P2;->a:Z

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/ea;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/ea;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/sK;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/sK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)V

    .line 3
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    .line 4
    invoke-static {p1, p0}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 26
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 29
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 32
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    :goto_0
    const/4 p1, 0x0

    if-nez v0, :cond_4

    return p1

    .line 33
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    return p0

    .line 35
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-static {v0, p2, p0, p1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p0

    return p0

    :cond_6
    return p1

    :cond_7
    :goto_1
    return v1
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    return-object p0
.end method
