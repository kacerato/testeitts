.class public final Lcom/android/tools/r8/internal/pi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/BZ;
.implements Lcom/android/tools/r8/internal/jx;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/mi;

.field public final c:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/pi;->c:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/pi;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/mi;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/mi;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/pi;->b:Lcom/android/tools/r8/internal/mi;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ri;Lcom/android/tools/r8/graph/r0;)Z
    .locals 1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/ri;->a:Lcom/android/tools/r8/graph/M2;

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/tools/r8/internal/ri;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/H1;
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/pi;->a:Lcom/android/tools/r8/graph/y;

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 32
    sget-object v1, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/pi;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, v0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 40
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r1;->e()Z

    move-result v2

    if-nez v2, :cond_3

    .line 41
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    iget-object v2, v0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 43
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r1;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 44
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 46
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/Zp1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Zp1;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    sget-object v2, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 50
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    .line 52
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pi;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/pi;->c:Ljava/util/IdentityHashMap;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    new-instance v0, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 23
    invoke-virtual {p0, p1, p4}, Lcom/android/tools/r8/internal/pi;->a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 24
    iget-object v0, p2, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 25
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 26
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p2, v0, p3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    .line 27
    iget-object p1, p2, Lcom/android/tools/r8/shaking/N;->m0:Lcom/android/tools/r8/internal/M70;

    .line 28
    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/L0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/pi;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object p2

    .line 17
    iget-object p4, p0, Lcom/android/tools/r8/internal/pi;->b:Lcom/android/tools/r8/internal/mi;

    iget-object v0, p0, Lcom/android/tools/r8/internal/pi;->c:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/Xp1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/tools/r8/internal/Xp1;-><init>(Lcom/android/tools/r8/internal/pi;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p4, v0, v1, p3}, Lcom/android/tools/r8/internal/mi;->a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/oi;Ljava/util/concurrent/ExecutorService;)V

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/pi;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/tools/r8/internal/Yp1;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/internal/Yp1;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/Pn;->b(Ljava/util/function/Consumer;)V

    .line 22
    iget-object p1, p0, Lcom/android/tools/r8/internal/pi;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/pi;->b:Lcom/android/tools/r8/internal/mi;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/graph/G0;->c:Lcom/android/tools/r8/graph/h1;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/Wp1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Wp1;-><init>(Lcom/android/tools/r8/internal/ri;)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
