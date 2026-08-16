.class public final Lcom/android/tools/r8/shaking/H4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;

.field public final b:Ljava/util/List;

.field public final c:Lcom/android/tools/r8/shaking/v3;

.field public final d:Ljava/lang/Object;

.field public final e:Lcom/android/tools/r8/shaking/H3;

.field public final f:Ljava/util/HashSet;

.field public final g:Ljava/util/Set;

.field public final synthetic h:Lcom/android/tools/r8/shaking/I4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/graph/H2;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;Lcom/android/tools/r8/shaking/H3;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/H4;->f:Ljava/util/HashSet;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/H4;->g:Ljava/util/Set;

    sget-boolean p1, Lcom/android/tools/r8/shaking/H4;->i:Z

    if-nez p1, :cond_1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p4, Lcom/android/tools/r8/shaking/K3;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {p4}, Lcom/android/tools/r8/shaking/v3;->q()Lcom/android/tools/r8/shaking/K3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/L3;->C()Lcom/android/tools/r8/shaking/M3;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/M3;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/android/tools/r8/shaking/H4;->a:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/H4;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/H4;->c:Lcom/android/tools/r8/shaking/v3;

    iput-object p5, p0, Lcom/android/tools/r8/shaking/H4;->d:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/tools/r8/shaking/H4;->e:Lcom/android/tools/r8/shaking/H3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 37
    new-instance p2, Lcom/android/tools/r8/graph/H5;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/H4;->a:Lcom/android/tools/r8/graph/H2;

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H4;->a:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 41
    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;)V
    .locals 5

    .line 11
    sget-object v0, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H4;->f:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/R3;

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/shaking/k6;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/k6;-><init>(Lcom/android/tools/r8/shaking/H4;)V

    iget-object v4, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/I4;->t:Lcom/android/tools/r8/shaking/D;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/tools/r8/shaking/R3;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/D;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/shaking/H4;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/shaking/R3;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/shaking/R3;)V
    .locals 4

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H4;->a:Lcom/android/tools/r8/graph/H2;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H4;->a:Lcom/android/tools/r8/graph/H2;

    if-eq v0, v1, :cond_7

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 25
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H4;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 27
    iget-object v0, v0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 29
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p1

    goto :goto_1

    .line 30
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H4;->a:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/I4;->p:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/h6;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/shaking/h6;-><init>(Lcom/android/tools/r8/shaking/H4;Lcom/android/tools/r8/graph/H5;)V

    .line 34
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 35
    sget-boolean v2, Lcom/android/tools/r8/shaking/H4;->i:Z

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/I4;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Lcom/android/tools/r8/shaking/z;

    new-instance v3, Lcom/android/tools/r8/shaking/i6;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/tools/r8/shaking/i6;-><init>(Lcom/android/tools/r8/shaking/H4;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/R3;)V

    invoke-direct {v2, v1, p1, v3}, Lcom/android/tools/r8/shaking/z;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/shaking/I4;)V
    .locals 8

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H4;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/h1;Ljava/util/Map;)Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    .line 43
    iget-object v4, p0, Lcom/android/tools/r8/shaking/H4;->c:Lcom/android/tools/r8/shaking/v3;

    iget-object v7, p0, Lcom/android/tools/r8/shaking/H4;->e:Lcom/android/tools/r8/shaking/H3;

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H4;->h:Lcom/android/tools/r8/shaking/I4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H4;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/H4;->a(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/H4;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/H4;->a:Lcom/android/tools/r8/graph/H2;

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Oz0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Oz0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/shaking/j6;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/j6;-><init>(Lcom/android/tools/r8/shaking/H4;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/f;)V
    .locals 0

    .line 1
    return-void
.end method
