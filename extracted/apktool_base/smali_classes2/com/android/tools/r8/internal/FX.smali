.class public final Lcom/android/tools/r8/internal/FX;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/LY;)Lcom/android/tools/r8/internal/AA;
    .locals 0

    .line 32
    new-instance p0, Lcom/android/tools/r8/internal/AA;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/AA;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Ljava/util/Map;)V
    .locals 4

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/kA;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kA;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 27
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const/4 v3, 0x1

    .line 28
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/F0;->a(Ljava/lang/Object;I)I

    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/wE0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/wE0;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AA;

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 31
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/AA;)Z
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object p0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/xE0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/xE0;-><init>(Lcom/android/tools/r8/internal/FX;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/AA;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/yE0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/yE0;-><init>(Lcom/android/tools/r8/internal/AA;)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 6
    iget-object v1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/AA;

    if-eqz v2, :cond_3

    .line 13
    iget-object v4, v3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 14
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget-object v5, v2, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    :cond_3
    move-object v2, v3

    goto :goto_0

    .line 15
    :cond_4
    sget-boolean v1, Lcom/android/tools/r8/internal/FX;->b:Z

    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_6
    :goto_1
    iget-object v1, v2, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 17
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 20
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/FX;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Map;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "MinimizeFieldCasts"

    return-object v0
.end method
