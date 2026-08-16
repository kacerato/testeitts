.class public abstract Lcom/android/tools/r8/internal/Fm0;
.super Lcom/android/tools/r8/internal/Pm0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Pm0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D3;)Z
    .locals 1

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/D3;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 24
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final N()Lcom/android/tools/r8/internal/Fm0;
    .locals 0

    return-object p0
.end method

.method public abstract U()Lcom/android/tools/r8/internal/Q30;
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Fm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 3

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 26
    sget-boolean p1, Lcom/android/tools/r8/internal/Fm0;->d:Z

    if-eqz p1, :cond_0

    return v1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 28
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_4

    .line 29
    sget-boolean p1, Lcom/android/tools/r8/internal/Fm0;->d:Z

    if-eqz p1, :cond_3

    return v1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 31
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 34
    :cond_6
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 35
    invoke-static {p0, v0, p1}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/PE0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/PE0;-><init>(Lcom/android/tools/r8/graph/D3;)V

    new-instance v0, Lcom/android/tools/r8/internal/QE0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/QE0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)V

    .line 22
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Xx;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/Fm0;->d:Z

    if-nez v0, :cond_1

    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/android/tools/r8/internal/Mo0;->m:Z

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/Lo0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Lo0;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 11
    iput-object v0, p1, Lcom/android/tools/r8/internal/Lo0;->d:Lcom/android/tools/r8/graph/l1;

    .line 12
    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    .line 13
    invoke-interface {p3, p2, v0}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 14
    iput-object p2, p1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 15
    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    .line 16
    iput-object p2, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 17
    new-instance p2, Lcom/android/tools/r8/internal/Mo0;

    iget-object p3, p1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object p4, p1, Lcom/android/tools/r8/internal/Lo0;->d:Lcom/android/tools/r8/graph/l1;

    invoke-direct {p2, p4, p3}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_2
    const/4 p1, 0x1

    .line 20
    new-array p1, p1, [Lcom/android/tools/r8/internal/zE;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Fm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;
    .locals 2

    iget-object p2, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/l1;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/l1;)I

    move-result p1

    int-to-long p3, p1

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3, p4, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Q30;

    move-result-object p1

    iget-object p3, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    if-ne v0, p3, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object p3

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p1, Lcom/android/tools/r8/internal/Nm0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Nm0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p1

    :cond_3
    new-instance p2, Lcom/android/tools/r8/internal/Mm0;

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/internal/Mm0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Q30;)V

    return-object p2
.end method

.method public final f0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
