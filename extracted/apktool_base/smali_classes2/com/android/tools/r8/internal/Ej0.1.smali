.class public final Lcom/android/tools/r8/internal/Ej0;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ej0;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Lcom/android/tools/r8/internal/AA;
    .locals 0

    .line 49
    new-instance p0, Lcom/android/tools/r8/internal/AA;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/AA;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/AA;Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/MD0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/MD0;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/AA;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/AA;

    if-eqz p0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/Dj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ej0;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Dj0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 24
    iget-object p1, v0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 27
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 5

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    new-instance v1, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 34
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 35
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Ej0;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/ND0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ND0;-><init>()V

    .line 39
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/AA;

    .line 40
    iget-object v3, v3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 41
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    iget-object v3, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ej0;->a(Lcom/android/tools/r8/internal/AA;Ljava/util/LinkedHashMap;)V

    .line 44
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/s60;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    iget-object v2, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 47
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->q0()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/OD0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/OD0;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ej0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/h1;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 14
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ej0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ej0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_8
    return v1

    .line 19
    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/PD0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/PD0;-><init>(Lcom/android/tools/r8/internal/Ej0;)V

    new-instance v1, Lu/P0;

    invoke-direct {v1}, Lu/P0;-><init>()V

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H2;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    return v1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "RespectPackageBoundaries"

    return-object v0
.end method
