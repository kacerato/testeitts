.class public final Lcom/android/tools/r8/internal/bl0;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bl0;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/AA;Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/S51;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/S51;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/AA;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/synthesis/S$b;)Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    instance-of v0, p0, Lcom/android/tools/r8/synthesis/V;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->a()Lcom/android/tools/r8/synthesis/V;

    move-result-object p0

    .line 31
    iget-boolean p0, p0, Lcom/android/tools/r8/synthesis/V;->d:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/AA;

    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 6

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/bl0;->b:Lcom/android/tools/r8/graph/y;

    .line 8
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 11
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 13
    sget-boolean v4, Lcom/android/tools/r8/internal/bl0;->c:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/synthesis/J;->e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Vx;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/T51;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/T51;-><init>()V

    .line 15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 16
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 17
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/tV0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/tV0;-><init>()V

    invoke-static {v5}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v5

    .line 18
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/AA;

    .line 19
    iget-object v4, v4, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 20
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_2
    iget-object v4, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_3
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/bl0;->a(Lcom/android/tools/r8/internal/AA;Ljava/util/LinkedHashMap;)V

    .line 23
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/s60;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    iget-object v2, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_4
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SamePackageForApiOutline"

    return-object v0
.end method
