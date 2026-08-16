.class public final Lcom/android/tools/r8/internal/Ec0;
.super Lcom/android/tools/r8/internal/RV;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/c4;

.field public final f:Lcom/android/tools/r8/internal/Bc0;

.field public final g:Lcom/android/tools/r8/internal/zc0;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/RV;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v0, Lcom/android/tools/r8/internal/zc0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zc0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ec0;->g:Lcom/android/tools/r8/internal/zc0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ec0;->h:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ec0;->e:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->C()Lcom/android/tools/r8/internal/Bc0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ec0;->f:Lcom/android/tools/r8/internal/Bc0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 60
    iget-object p0, p0, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 61
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/m80;)V
    .locals 1

    .line 7
    iget-object p0, p0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    iget-object p0, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/m80;)Z
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 11
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Ec0;
    .locals 1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ec0;->h:Z

    return-object p0
.end method

.method public final a(Ljava/util/Set;)Lcom/android/tools/r8/internal/m80;
    .locals 1

    .line 56
    new-instance v0, Lcom/android/tools/r8/internal/Dc0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Dc0;-><init>(Lcom/android/tools/r8/internal/Ec0;)V

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/Collection;)V

    .line 58
    iget-object p1, v0, Lcom/android/tools/r8/internal/Dc0;->f:Lcom/android/tools/r8/internal/m80;

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/m80;
    .locals 4

    .line 49
    new-instance v0, Lcom/android/tools/r8/internal/b80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ec0;->e:Lcom/android/tools/r8/graph/c4;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 50
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/android/tools/r8/internal/ID0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ID0;-><init>(Lcom/android/tools/r8/internal/Ec0;)V

    new-instance v2, Lcom/android/tools/r8/internal/JD0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/JD0;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    .line 53
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p1

    .line 54
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/android/tools/r8/internal/KD0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/KD0;-><init>(Lcom/android/tools/r8/internal/m80;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/LD0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/LD0;-><init>(Lcom/android/tools/r8/graph/M5;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/Ec0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/TV;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/TV;)V
    .locals 5

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/Ec0;->i:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_1
    :goto_0
    const-string v0, "Redundant bridge removal"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ec0;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 29
    iget-object v1, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 30
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 31
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/Ec0;->a(Lcom/android/tools/r8/internal/m80;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ec0;->g:Lcom/android/tools/r8/internal/zc0;

    .line 33
    iget-object v1, v1, Lcom/android/tools/r8/internal/zc0;->b:Ljava/util/IdentityHashMap;

    .line 34
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ec0;->g:Lcom/android/tools/r8/internal/zc0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance v3, Lcom/android/tools/r8/internal/Ac0;

    iget-object v4, v2, Lcom/android/tools/r8/internal/zc0;->a:Ljava/util/Set;

    iget-object v2, v2, Lcom/android/tools/r8/internal/zc0;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v3, v1, v4, v2}, Lcom/android/tools/r8/internal/Ac0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Ljava/util/IdentityHashMap;)V

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 39
    iget-object p1, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 40
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/j;->d(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 46
    iget-object v2, p3, Lcom/android/tools/r8/internal/TV;->g:Ljava/util/AbstractMap;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ZJ;Lcom/android/tools/r8/graph/A2;)Z
    .locals 3

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    .line 13
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/ZJ;->b:Lcom/android/tools/r8/internal/ZJ;

    if-ne p2, v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return v1

    .line 16
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/Ec0;->i:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    if-nez v0, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_6
    :goto_1
    sget-object v2, Lcom/android/tools/r8/internal/ZJ;->e:Lcom/android/tools/r8/internal/ZJ;

    if-ne p2, v2, :cond_7

    const/4 p1, 0x1

    return p1

    .line 19
    :cond_7
    sget-object v2, Lcom/android/tools/r8/internal/ZJ;->d:Lcom/android/tools/r8/internal/ZJ;

    if-ne p2, v2, :cond_8

    .line 20
    iget-object p2, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p3, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1

    .line 21
    :cond_8
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->c:Lcom/android/tools/r8/internal/ZJ;

    if-ne p2, p1, :cond_9

    return v1

    :cond_9
    if-eqz v0, :cond_a

    return v1

    .line 22
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected invoke-kind for visibility bridge: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
