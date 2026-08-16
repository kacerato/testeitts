.class public abstract Lcom/android/tools/r8/internal/DM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/e3;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/EM;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/EM;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/c3;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/c3;-><init>()V

    .line 4
    new-instance v2, Lcom/android/tools/r8/internal/xC0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/xC0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/c3;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v0

    .line 6
    invoke-static {p1, v2, v0, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 7
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/c3;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/e3;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/BM;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/CC0;

    invoke-direct {v1, p2, p0, p1}, Lcom/android/tools/r8/internal/CC0;-><init>(Lcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/internal/EM;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Lcom/android/tools/r8/internal/zT;)V

    return-object p2
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/BN;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j;

    invoke-static {p3, p0, p1, p2}, Lcom/android/tools/r8/internal/DM;->a(Lcom/android/tools/r8/internal/BN;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/c3;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/DN;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/AC0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/AC0;-><init>(Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/EM;)V

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/internal/AM;->e:Ljava/util/function/Consumer;

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/CM;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/CM;-><init>(Lcom/android/tools/r8/internal/BN;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    .line 15
    new-instance p2, Lcom/android/tools/r8/internal/zM;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/zM;-><init>(Lcom/android/tools/r8/internal/CM;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/AM;->a(I)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    .line 18
    iput-object p1, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/TM;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/vC0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/vC0;-><init>(Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/TM;)V

    .line 26
    iput-object v0, p0, Lcom/android/tools/r8/internal/AM;->e:Ljava/util/function/Consumer;

    .line 27
    new-instance p1, Lcom/android/tools/r8/internal/CM;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/CM;-><init>(Lcom/android/tools/r8/internal/BN;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    .line 28
    new-instance p2, Lcom/android/tools/r8/internal/zM;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/zM;-><init>(Lcom/android/tools/r8/internal/CM;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/AM;->a(I)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    .line 31
    iput-object p1, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/BN;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/c3;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/AM;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/AM;-><init>(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/EM;)V

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/yC0;

    invoke-direct {p1, v0, p3, p2}, Lcom/android/tools/r8/internal/yC0;-><init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/EM;)V

    new-instance p2, Lcom/android/tools/r8/internal/zC0;

    invoke-direct {p2, v0, p3}, Lcom/android/tools/r8/internal/zC0;-><init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/c3;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {p1}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object p1

    invoke-static {p2}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/BN;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/TM;Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/shaking/s2;)V
    .locals 1

    .line 34
    iget p0, p0, Lcom/android/tools/r8/internal/TM;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object p0, p1, Lcom/android/tools/r8/internal/BM;->c:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/tools/r8/internal/BC0;

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/BC0;-><init>(ZLcom/android/tools/r8/shaking/s2;)V

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Lcom/android/tools/r8/internal/zT;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/BM;)V
    .locals 4

    .line 19
    iget-object v0, p2, Lcom/android/tools/r8/internal/BM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/EC0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/EC0;-><init>(Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/internal/EM;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/c3;->a(Ljava/util/function/Consumer;)V

    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Y50;

    iget-object v1, p2, Lcom/android/tools/r8/internal/BM;->b:Ljava/util/List;

    .line 22
    new-instance v2, Lcom/android/tools/r8/shaking/s2;

    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/shaking/s2;-><init>(Ljava/util/Map;)V

    .line 23
    invoke-static {p2, p1, v2}, Lcom/android/tools/r8/internal/DM;->a(Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/Y50;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/c3;->a(Lcom/android/tools/r8/internal/Y50;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/TM;Lcom/android/tools/r8/internal/BM;)V
    .locals 1

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/internal/DM;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/tools/r8/internal/BM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 33
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/wC0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/wC0;-><init>(Lcom/android/tools/r8/internal/TM;Lcom/android/tools/r8/internal/BM;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/c3;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/graph/D5;I)V
    .locals 1

    .line 46
    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    .line 47
    iget-object v0, p1, Lcom/android/tools/r8/internal/BM;->d:Ljava/util/AbstractCollection;

    .line 48
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/zN;

    iget-object p1, p1, Lcom/android/tools/r8/internal/BM;->a:Lcom/android/tools/r8/internal/BN;

    .line 49
    new-instance v0, Lcom/android/tools/r8/internal/yM;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/tools/r8/internal/yM;-><init>(Lcom/android/tools/r8/shaking/s1;Lcom/android/tools/r8/internal/BN;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/EM;)V

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/zN;->a(Lcom/android/tools/r8/internal/yM;)V

    return-void
.end method

.method public static a(ZLcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/graph/D5;I)V
    .locals 0

    .line 39
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p3

    .line 40
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/s1;->n()Lcom/android/tools/r8/shaking/s1;

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    .line 42
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 43
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    new-instance p3, Lcom/android/tools/r8/internal/DC0;

    invoke-direct {p3, p0, p1}, Lcom/android/tools/r8/internal/DC0;-><init>(ZLcom/android/tools/r8/shaking/s2;)V

    .line 44
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public static a(ZLcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/graph/G5;)V
    .locals 0

    .line 36
    check-cast p2, Lcom/android/tools/r8/graph/G0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->n()Lcom/android/tools/r8/shaking/s1;

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/shaking/s2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/DM;->a(Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/TM;Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/shaking/s2;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/DM;->a(Lcom/android/tools/r8/internal/TM;Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/shaking/s2;)V

    return-void
.end method
