.class public final Lcom/android/tools/r8/internal/UC;
.super Lcom/android/tools/r8/internal/VC;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# static fields
.field public static final i:Lcom/android/tools/r8/internal/UC;


# instance fields
.field public final transient f:Lcom/android/tools/r8/internal/ff0;

.field public final transient g:Lcom/android/tools/r8/internal/hC;

.field public final transient h:Lcom/android/tools/r8/internal/UC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    new-instance v1, Lcom/android/tools/r8/internal/UC;

    invoke-static {v0}, Lcom/android/tools/r8/internal/WC;->a(Ljava/util/Comparator;)Lcom/android/tools/r8/internal/ff0;

    move-result-object v0

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v2, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/UC;-><init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V

    sput-object v1, Lcom/android/tools/r8/internal/UC;->i:Lcom/android/tools/r8/internal/UC;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/VC;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/UC;->h:Lcom/android/tools/r8/internal/UC;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/UC;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/VC;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    .line 8
    iput-object p3, p0, Lcom/android/tools/r8/internal/UC;->h:Lcom/android/tools/r8/internal/UC;

    return-void
.end method

.method public static synthetic a(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/UC;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    .line 2
    instance-of v1, p0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/SortedMap;

    .line 4
    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/nC;->e:[Ljava/util/Map$Entry;

    .line 8
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {v2, p0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-object p0, v2

    .line 12
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 13
    check-cast p0, [Ljava/util/Map$Entry;

    .line 14
    array-length v1, p0

    invoke-static {v0, p0, v1}, Lcom/android/tools/r8/internal/UC;->a(Z[Ljava/util/Map$Entry;I)Lcom/android/tools/r8/internal/UC;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z[Ljava/util/Map$Entry;I)Lcom/android/tools/r8/internal/UC;
    .locals 10

    sget-object v0, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_4

    .line 15
    new-array v3, p2, [Ljava/lang/Object;

    .line 16
    new-array v4, p2, [Ljava/lang/Object;

    if-eqz p0, :cond_0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 17
    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 19
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 20
    invoke-static {v1, p0}, Lcom/android/tools/r8/internal/Le;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    aput-object v1, v3, v2

    .line 22
    aput-object p0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/mY0;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/mY0;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1, v2, p2, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 24
    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 26
    aput-object v5, v3, v2

    .line 27
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v4, v2

    .line 28
    aget-object v6, v3, v2

    invoke-static {v6, p0}, Lcom/android/tools/r8/internal/Le;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move p0, v1

    :goto_1
    if-ge p0, p2, :cond_3

    add-int/lit8 v6, p0, -0x1

    .line 29
    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Ljava/util/Map$Entry;

    .line 30
    aget-object v7, p1, p0

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v7, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 32
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 33
    invoke-static {v8, v9}, Lcom/android/tools/r8/internal/Le;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    aput-object v8, v3, p0

    .line 35
    aput-object v9, v4, p0

    .line 36
    invoke-virtual {v0, v5, v8}, Lcom/android/tools/r8/internal/dZ;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_2

    add-int/lit8 p0, p0, 0x1

    move-object v5, v8

    goto :goto_1

    .line 37
    :cond_2
    const-string p0, "key"

    invoke-static {p0, v6, v7}, Lcom/android/tools/r8/internal/nC;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 38
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/UC;

    new-instance p1, Lcom/android/tools/r8/internal/ff0;

    new-instance p2, Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {p2, v3}, Lcom/android/tools/r8/internal/Xe0;-><init>([Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/ff0;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V

    new-instance p2, Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {p2, v4}, Lcom/android/tools/r8/internal/Xe0;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/UC;-><init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V

    return-object p0

    .line 39
    :cond_4
    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 41
    new-instance p2, Lcom/android/tools/r8/internal/UC;

    new-instance v1, Lcom/android/tools/r8/internal/ff0;

    .line 42
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 43
    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/ff0;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V

    .line 44
    new-instance p1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 45
    invoke-direct {p2, v1, p1}, Lcom/android/tools/r8/internal/UC;-><init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V

    return-object p2

    .line 46
    :cond_5
    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 47
    sget-object p0, Lcom/android/tools/r8/internal/UC;->i:Lcom/android/tools/r8/internal/UC;

    return-object p0

    .line 48
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/UC;

    .line 49
    invoke-static {v0}, Lcom/android/tools/r8/internal/WC;->a(Ljava/util/Comparator;)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    .line 50
    sget-object p2, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/UC;-><init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ff0;->a(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/UC;->b(II)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    return-object p1
.end method

.method public final b(II)Lcom/android/tools/r8/internal/UC;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_2

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    .line 4
    sget-object p2, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/UC;->i:Lcom/android/tools/r8/internal/UC;

    return-object p1

    .line 6
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/UC;

    .line 7
    invoke-static {p1}, Lcom/android/tools/r8/internal/WC;->a(Ljava/util/Comparator;)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 9
    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/UC;-><init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V

    return-object p2

    .line 10
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/UC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    .line 11
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/ff0;->e(II)Lcom/android/tools/r8/internal/ff0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/internal/hC;->e(II)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/UC;-><init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ff0;->b(Ljava/lang/Object;Z)I

    move-result p1

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/UC;->b(II)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    return-object p1
.end method

.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->b(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UC;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->b(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UC;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method public final descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WC;->k()Lcom/android/tools/r8/internal/WC;

    move-result-object v0

    return-object v0
.end method

.method public final descendingMap()Ljava/util/NavigableMap;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->h:Lcom/android/tools/r8/internal/UC;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    instance-of v1, v0, Lcom/android/tools/r8/internal/D40;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/tools/r8/internal/D40;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/mf;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/mf;-><init>(Ljava/util/Comparator;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D40;->a()Lcom/android/tools/r8/internal/D40;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/UC;->i:Lcom/android/tools/r8/internal/UC;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/UC;

    invoke-static {v0}, Lcom/android/tools/r8/internal/WC;->a(Ljava/util/Comparator;)Lcom/android/tools/r8/internal/ff0;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/UC;-><init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V

    return-object v1

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/UC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WC;->k()Lcom/android/tools/r8/internal/WC;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ff0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hC;->i()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/r8/internal/UC;-><init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/UC;)V

    :cond_3
    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/QC;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/TC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/TC;-><init>(Lcom/android/tools/r8/internal/UC;)V

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ff0;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UC;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UC;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/UC;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    return-object p1
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    return-object p1
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->b(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UC;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->b(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UC;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lcom/android/tools/r8/internal/QC;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ff0;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UC;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/UC;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n()Lcom/android/tools/r8/internal/QC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    return-object v0
.end method

.method public final navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final q()Lcom/android/tools/r8/internal/XB;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    .line 5
    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v0, p3, p4}, Lcom/android/tools/r8/internal/ff0;->a(Ljava/lang/Object;Z)I

    move-result p3

    invoke-virtual {p0, v1, p3}, Lcom/android/tools/r8/internal/UC;->b(II)Lcom/android/tools/r8/internal/UC;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/UC;->b(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "expected fromKey <= toKey but %s > %s"

    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v0, p2, v2}, Lcom/android/tools/r8/internal/ff0;->a(Ljava/lang/Object;Z)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/UC;->b(II)Lcom/android/tools/r8/internal/UC;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/UC;->b(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "expected fromKey <= toKey but %s > %s"

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/UC;->b(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    return-object p1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/UC;->b(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/UC;

    move-result-object p1

    return-object p1
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method
