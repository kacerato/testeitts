.class public final Lcom/android/tools/r8/graph/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/m3;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 16
    iget-object p0, p2, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/o3;
    .locals 3

    .line 17
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string p3, "Rewrite FieldAccessInfoImpl"

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 19
    iget-object p3, p4, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    .line 20
    invoke-virtual {p3, p0, p1}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/d;

    move-result-object p3

    .line 21
    iget-object v0, p4, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/d;

    move-result-object p0

    .line 23
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object p1, p4, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    if-ne p3, p1, :cond_0

    iget-object p1, p4, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lcom/android/tools/r8/graph/o3;

    iget-object v0, p4, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    iget p4, p4, Lcom/android/tools/r8/graph/o3;->b:I

    invoke-direct {p1, v0, p4, p3, p0}, Lcom/android/tools/r8/graph/o3;-><init>(Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/graph/d;Lcom/android/tools/r8/graph/d;)V

    move-object p4, p1

    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Lcom/android/tools/r8/graph/o3;

    iget-object v1, p4, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    const/4 v2, 0x0

    .line 27
    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 28
    iget p4, p4, Lcom/android/tools/r8/graph/o3;->b:I

    invoke-direct {v0, p1, p4, p3, p0}, Lcom/android/tools/r8/graph/o3;-><init>(Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/graph/d;Lcom/android/tools/r8/graph/d;)V

    move-object p4, v0

    .line 29
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p4
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Z
    .locals 0

    .line 9
    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/function/BiPredicate;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o3;

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/o3;
    .locals 0

    .line 1
    return-object p2
.end method

.method public static c(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/o3;
    .locals 3

    new-instance p0, Lcom/android/tools/r8/graph/o3;

    iget-object v0, p1, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    sget-object v1, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/android/tools/r8/graph/o3;-><init>(Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/graph/d;Lcom/android/tools/r8/graph/d;)V

    iget v0, p1, Lcom/android/tools/r8/graph/o3;->b:I

    iget v1, p2, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/graph/o3;->b:I

    iget-object v0, p1, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    iget-object v1, p2, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/d;)Lcom/android/tools/r8/graph/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    iget-object p1, p1, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    iget-object p2, p2, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/d;)Lcom/android/tools/r8/graph/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/v0;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/n3;
    .locals 7

    .line 11
    const-string v0, "Rewrite FieldAccessInfoCollectionImpl"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    new-instance v2, Lu/y0;

    invoke-direct {v2}, Lu/y0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/graph/Se;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/tools/r8/graph/Se;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)V

    new-instance v4, Lcom/android/tools/r8/graph/Te;

    invoke-direct {v4}, Lcom/android/tools/r8/graph/Te;-><init>()V

    new-instance v5, Lcom/android/tools/r8/graph/Ue;

    invoke-direct {v5}, Lcom/android/tools/r8/graph/Ue;-><init>()V

    new-instance v6, Lcom/android/tools/r8/graph/Ve;

    invoke-direct {v6}, Lcom/android/tools/r8/graph/Ve;-><init>()V

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/internal/SR;->a(Ljava/util/Map;Ljava/util/function/IntFunction;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/gt0;)Ljava/util/Map;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    if-eq p1, p2, :cond_0

    new-instance p2, Lcom/android/tools/r8/graph/n3;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/n3;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 15
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/o3;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/graph/n3;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Xe;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Xe;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/graph/Ye;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/Ye;-><init>(Lcom/android/tools/r8/graph/d1;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/n3;->a(Ljava/util/function/BiPredicate;)V

    return-void
.end method

.method public final a(Ljava/util/function/BiPredicate;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/We;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/We;-><init>(Ljava/util/function/BiPredicate;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/n3;->b:Z

    if-nez v0, :cond_1

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Ze;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Ze;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
