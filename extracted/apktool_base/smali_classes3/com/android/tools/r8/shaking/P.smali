.class public final Lcom/android/tools/r8/shaking/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/P;->b:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/b2;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/P;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/ja;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/ja;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/shaking/P;->b:Ljava/util/IdentityHashMap;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Lcom/android/tools/r8/internal/vz1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/vz1;-><init>()V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
