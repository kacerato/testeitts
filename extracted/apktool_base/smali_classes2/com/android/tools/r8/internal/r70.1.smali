.class public final Lcom/android/tools/r8/internal/r70;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/c4;

.field public final d:Lcom/android/tools/r8/internal/m70;

.field public final e:Lcom/android/tools/r8/internal/o70;

.field public final f:Lcom/android/tools/r8/internal/p70;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/m70;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/m70;-><init>(Lcom/android/tools/r8/internal/r70;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r70;->d:Lcom/android/tools/r8/internal/m70;

    new-instance v0, Lcom/android/tools/r8/internal/o70;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/o70;-><init>(Lcom/android/tools/r8/internal/r70;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r70;->e:Lcom/android/tools/r8/internal/o70;

    new-instance v0, Lcom/android/tools/r8/internal/p70;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/p70;-><init>(Lcom/android/tools/r8/internal/r70;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r70;->f:Lcom/android/tools/r8/internal/p70;

    iput-object p1, p0, Lcom/android/tools/r8/internal/r70;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/r70;->c:Lcom/android/tools/r8/graph/c4;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/l70;)Lcom/android/tools/r8/internal/AA;
    .locals 0

    .line 34
    new-instance p0, Lcom/android/tools/r8/internal/AA;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/AA;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Dq;->a(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 11
    iget-object v3, p0, Lcom/android/tools/r8/internal/r70;->f:Lcom/android/tools/r8/internal/p70;

    .line 12
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/q70;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object v3

    .line 13
    new-instance v4, Lcom/android/tools/r8/internal/Dq;

    new-instance v5, Ljava/util/HashSet;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 14
    iget-object v3, p0, Lcom/android/tools/r8/internal/r70;->e:Lcom/android/tools/r8/internal/o70;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/q70;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object v3

    .line 15
    invoke-interface {v5, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 16
    new-instance v3, Lcom/android/tools/r8/internal/l70;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/l70;-><init>()V

    .line 17
    iget-object v5, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 18
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/F2;

    .line 19
    sget-object v7, Lcom/android/tools/r8/internal/n70;->b:Lcom/android/tools/r8/internal/n70;

    .line 20
    iget-object v8, v4, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 21
    iget-object v8, p0, Lcom/android/tools/r8/internal/r70;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 23
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 24
    iget-object v9, p0, Lcom/android/tools/r8/internal/r70;->b:Lcom/android/tools/r8/graph/y;

    .line 25
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v9, v2, v8}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 26
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 27
    :cond_3
    sget-object v7, Lcom/android/tools/r8/internal/n70;->c:Lcom/android/tools/r8/internal/n70;

    .line 28
    :cond_4
    invoke-virtual {v3, v6, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/n70;

    .line 29
    sget-boolean v7, Lcom/android/tools/r8/internal/l70;->b:Z

    if-nez v7, :cond_2

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_6
    new-instance v4, Lcom/android/tools/r8/internal/qr1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/qr1;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/AA;

    .line 31
    iget-object v3, v3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 32
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 33
    :cond_7
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/s60;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "PreventClassMethodAndDefaultMethodCollisions"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/r70;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/r70;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
