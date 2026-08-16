.class public abstract Lcom/android/tools/r8/internal/ZY;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZY;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    instance-of v1, p0, Lcom/android/tools/r8/internal/kw;

    if-nez v1, :cond_1

    .line 5
    instance-of v1, p0, Lcom/android/tools/r8/internal/wd;

    if-eqz v1, :cond_0

    .line 6
    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/wd;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 8
    iget-object v2, v1, Lcom/android/tools/r8/internal/wd;->c:Lcom/android/tools/r8/internal/vd;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-interface {p2, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 11
    invoke-interface {p2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget v1, v1, Lcom/android/tools/r8/internal/wd;->b:I

    .line 12
    invoke-virtual {v2, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/vd;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u1;I)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZY;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZY;->a()Lcom/android/tools/r8/internal/qc0;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/tools/r8/internal/ZY;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    .line 17
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 18
    :cond_2
    invoke-interface {p2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of v1, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    .line 25
    :cond_4
    sget-boolean p2, Lcom/android/tools/r8/naming/r0;->a:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/L2;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/ZY;
.end method

.method public a()Lcom/android/tools/r8/internal/qc0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZY;->b()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 28
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 29
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ZY;->b(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public abstract b()I
.end method

.method public abstract b(Lcom/android/tools/r8/internal/rA;)V
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method
