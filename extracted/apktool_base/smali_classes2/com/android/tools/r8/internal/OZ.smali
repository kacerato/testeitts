.class public final Lcom/android/tools/r8/internal/OZ;
.super Lcom/android/tools/r8/internal/hx0;
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

    invoke-direct {p0}, Lcom/android/tools/r8/internal/hx0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/OZ;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/LinkedList;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/OZ;->b(Ljava/util/LinkedList;)Ljava/util/IdentityHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/lx0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/OZ;->a(Lcom/android/tools/r8/internal/lx0;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/lx0;Ljava/util/Map;)Z
    .locals 5

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 8
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 9
    sget-boolean p2, Lcom/android/tools/r8/internal/OZ;->c:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return v2

    .line 10
    :cond_3
    sget-boolean p2, Lcom/android/tools/r8/internal/OZ;->c:Z

    if-nez p2, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/OZ;->b:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/internal/dQ0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/dQ0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v4

    .line 13
    invoke-virtual {p1, p2, p1, v1, v4}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/tools/r8/internal/OZ;->b:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    return v3

    :cond_7
    return v2
.end method

.method public final b(Ljava/util/LinkedList;)Ljava/util/IdentityHashMap;
    .locals 4

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/lx0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    new-instance v3, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v3}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v1, v1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoClassInitializationChangesPolicy"

    return-object v0
.end method
