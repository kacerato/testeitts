.class public Lcom/android/tools/r8/internal/Zd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zd;->a:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zd;->b:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/Zd;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Zd;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Zd;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/Zd;
    .locals 11

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/Zd;->a()Lcom/android/tools/r8/internal/Zd;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 4
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_7

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/FeatureSplit;

    .line 7
    invoke-virtual {v4}, Lcom/android/tools/r8/FeatureSplit;->getProgramResourceProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 8
    :try_start_0
    invoke-interface {v7}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/ProgramResource;

    .line 9
    invoke-interface {v8}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 11
    invoke-virtual {v0, v10, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 12
    invoke-virtual {v9, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v10, :cond_4

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v6, v9

    goto :goto_1

    .line 13
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_6
    if-eqz v6, :cond_1

    .line 14
    invoke-virtual {v1, v4, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_7
    new-instance p0, Lcom/android/tools/r8/internal/Zd;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Zd;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->i:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/FeatureSplit;)Ljava/util/Set;
    .locals 0

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/FeatureSplit;)V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 17
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 18
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/FeatureSplit;)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/FeatureSplit;

    .line 41
    sget-boolean p1, Lcom/android/tools/r8/internal/Zd;->c:Z

    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    if-ne p0, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 47
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-nez p2, :cond_0

    .line 26
    iget-object p2, p0, Lcom/android/tools/r8/internal/Zd;->a:Ljava/util/IdentityHashMap;

    sget-object v0, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/FeatureSplit;

    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/p41;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p41;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object p1, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    return-object p1

    .line 30
    :cond_1
    sget-object v0, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/FeatureSplit;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object p2

    .line 31
    sget-boolean v0, Lcom/android/tools/r8/internal/Zd;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Zd;->a:Ljava/util/IdentityHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/Zd;->a:Ljava/util/IdentityHashMap;

    sget-object v0, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/android/tools/r8/FeatureSplit;

    .line 33
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 34
    sget-object p1, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    return-object p1

    :cond_5
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/Zd;
    .locals 3

    .line 42
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/internal/Zd;->a:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/l41;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/l41;-><init>(Lcom/android/tools/r8/graph/O5;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 44
    new-instance p1, Lcom/android/tools/r8/internal/Zd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zd;->b:Ljava/util/IdentityHashMap;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/Zd;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Zd;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Zd;->b(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Zd;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Zd;
    .locals 1

    .line 37
    new-instance v0, Lcom/android/tools/r8/internal/n41;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/n41;-><init>(Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/internal/Hz;)V

    const-string p1, "Rewrite ClassToFeatureSplitMap"

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zd;

    return-object p1
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Ljava/util/IdentityHashMap;
    .locals 4

    .line 19
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 21
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result v3

    if-nez v3, :cond_0

    .line 23
    new-instance v3, Lcom/android/tools/r8/internal/m41;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/m41;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Zd;
    .locals 3

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zd;->a:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/o41;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/o41;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p1, Lcom/android/tools/r8/internal/Zd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zd;->b:Ljava/util/IdentityHashMap;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/Zd;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    return-object p1
.end method
