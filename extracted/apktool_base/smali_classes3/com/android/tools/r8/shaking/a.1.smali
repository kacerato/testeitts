.class public final Lcom/android/tools/r8/shaking/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/c4;

.field public c:Lcom/android/tools/r8/shaking/M4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/shaking/M4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/M4;-><init>(Lcom/android/tools/r8/shaking/M4;)V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/a;->c:Lcom/android/tools/r8/shaking/M4;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/a;->b:Lcom/android/tools/r8/graph/c4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 2
    sget-boolean v2, Lcom/android/tools/r8/shaking/a;->d:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/shaking/a;->c:Lcom/android/tools/r8/shaking/M4;

    .line 3
    iget-object v2, v2, Lcom/android/tools/r8/shaking/M4;->a:Lcom/android/tools/r8/shaking/M4;

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/shaking/a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v4, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v4, :cond_5

    move-object v2, v1

    goto :goto_2

    :cond_5
    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 9
    :goto_2
    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-nez v2, :cond_0

    .line 10
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/a;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/shaking/a;->c:Lcom/android/tools/r8/shaking/M4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v1, Lcom/android/tools/r8/shaking/M4;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/M4;-><init>(Lcom/android/tools/r8/shaking/M4;)V

    .line 14
    iput-object v1, p0, Lcom/android/tools/r8/shaking/a;->c:Lcom/android/tools/r8/shaking/M4;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->M1()Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v0

    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/shaking/a;->c:Lcom/android/tools/r8/shaking/M4;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/M4;->a(Lcom/android/tools/r8/graph/j1;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/shaking/a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/G0;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 23
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    :cond_3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 27
    :cond_5
    iget-object v2, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/Set;)V

    .line 28
    sget-object v1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v1, v0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 29
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/a;->b:Lcom/android/tools/r8/graph/c4;

    .line 30
    iget-object v0, v0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    .line 31
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 32
    new-instance v0, Lcom/android/tools/r8/shaking/Kb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Kb;-><init>(Lcom/android/tools/r8/shaking/a;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    iget-object p1, p0, Lcom/android/tools/r8/shaking/a;->c:Lcom/android/tools/r8/shaking/M4;

    .line 34
    iget-object p1, p1, Lcom/android/tools/r8/shaking/M4;->a:Lcom/android/tools/r8/shaking/M4;

    .line 35
    iput-object p1, p0, Lcom/android/tools/r8/shaking/a;->c:Lcom/android/tools/r8/shaking/M4;

    return-void
.end method
