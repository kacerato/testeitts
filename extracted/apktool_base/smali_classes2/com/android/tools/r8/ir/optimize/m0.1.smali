.class public final Lcom/android/tools/r8/ir/optimize/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public a:Ljava/util/LinkedHashMap;

.field public b:Ljava/util/LinkedHashMap;

.field public c:Ljava/util/LinkedHashMap;

.field public d:Ljava/util/LinkedHashSet;

.field public e:Ljava/util/LinkedHashMap;

.field public f:Ljava/util/LinkedHashMap;

.field public g:Lcom/android/tools/r8/internal/sD;

.field public h:Ljava/util/LinkedHashMap;

.field public i:Ljava/util/LinkedHashMap;

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->j:I

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/ir/optimize/m0;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->j:I

    if-eqz p2, :cond_7

    .line 5
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    .line 7
    iget-object v0, p2, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 8
    :cond_0
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    .line 10
    iget-object v0, p2, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 11
    :cond_1
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    .line 13
    iget-object v0, p2, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 14
    :cond_2
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    .line 16
    iget-object v0, p2, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_3
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    .line 20
    iget-object v0, p2, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 21
    :cond_4
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 22
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    .line 23
    iget-object v0, p2, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 24
    :cond_5
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    .line 25
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    .line 28
    iget-object v0, p2, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 29
    :cond_6
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_7

    .line 30
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 31
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    .line 32
    iget-object p2, p2, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public static a(ILjava/util/LinkedHashMap;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    goto :goto_2

    .line 28
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 29
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p0, :cond_2

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return p0
.end method

.method public static a(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lv/S0;

    invoke-direct {v0, p1}, Lv/S0;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static a(Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;)V
    .locals 1

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lv/T0;

    invoke-direct {v0, p1}, Lv/T0;-><init>(Ljava/util/Set;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/X60;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/optimize/o0;)Z
    .locals 0

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/o0;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/YV;ILcom/android/tools/r8/ir/optimize/j0;)Z
    .locals 1

    .line 2
    iget-object v0, p2, Lcom/android/tools/r8/ir/optimize/j0;->b:Lcom/android/tools/r8/internal/YV;

    if-ne v0, p0, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/ir/optimize/j0;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/ir/optimize/j0;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/j0;->b:Lcom/android/tools/r8/internal/YV;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/optimize/o0;)Z
    .locals 0

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/o0;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/m0;->k:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/m0;->c()I

    move-result v1

    if-ge p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1, v1}, Lcom/android/tools/r8/ir/optimize/m0;->a(ILjava/util/LinkedHashMap;)I

    move-result p1

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_5

    if-nez p1, :cond_4

    goto :goto_3

    .line 16
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 17
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    if-lez p1, :cond_5

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 20
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1, v1}, Lcom/android/tools/r8/ir/optimize/m0;->a(ILjava/util/LinkedHashMap;)I

    move-result p1

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    invoke-static {p1, v1}, Lcom/android/tools/r8/ir/optimize/m0;->a(ILjava/util/LinkedHashMap;)I

    move-result p1

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    invoke-static {p1, v1}, Lcom/android/tools/r8/ir/optimize/m0;->a(ILjava/util/LinkedHashMap;)I

    move-result p1

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1, v1}, Lcom/android/tools/r8/ir/optimize/m0;->a(ILjava/util/LinkedHashMap;)I

    move-result p1

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    invoke-static {p1, v1}, Lcom/android/tools/r8/ir/optimize/m0;->a(ILjava/util/LinkedHashMap;)I

    move-result p1

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    invoke-static {p1, v1}, Lcom/android/tools/r8/ir/optimize/m0;->a(ILjava/util/LinkedHashMap;)I

    move-result p1

    if-nez v0, :cond_7

    if-nez p1, :cond_6

    goto :goto_4

    .line 26
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lv/R0;

    invoke-direct {v1, p1}, Lv/R0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lv/W0;

    invoke-direct {v1, p1}, Lv/W0;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;I)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lv/U0;

    invoke-direct {v1, p1, p2}, Lv/U0;-><init>(Lcom/android/tools/r8/internal/YV;I)V

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/o0;Lcom/android/tools/r8/ir/optimize/p0;)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 38
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/m0;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/m0;->c()I

    move-result v0

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/m0;->k:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->j:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/ir/optimize/m0;->j:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/ir/optimize/m0;->a(I)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lv/V0;

    invoke-direct {v1, p1}, Lv/V0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method
