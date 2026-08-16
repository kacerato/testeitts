.class public Lcom/android/tools/r8/internal/kl0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/TreeMap;

.field public final b:Z

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kl0;->a:Ljava/util/TreeMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/kl0;->c:I

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/kl0;->b:Z

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/kl0;->c:I

    return v0
.end method

.method public a(IILjava/lang/Object;)Lcom/android/tools/r8/internal/kl0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)",
            "Lcom/android/tools/r8/internal/kl0<",
            "TV;>;"
        }
    .end annotation

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kl0;->a(Ljava/lang/Integer;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/C7;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/kl0;->a:Ljava/util/TreeMap;

    .line 8
    invoke-virtual {v2}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/qh1;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/tools/r8/internal/qh1;-><init>(Lcom/android/tools/r8/internal/kl0;IILcom/android/tools/r8/internal/C7;)V

    .line 9
    invoke-interface {v2, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v0, :cond_2

    .line 10
    sget-boolean v3, Lcom/android/tools/r8/internal/kl0;->d:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/kl0;->b:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/kl0;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/kl0;->a:Ljava/util/TreeMap;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/internal/kl0;->a:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez v0, :cond_3

    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    :goto_1
    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    iget p1, p0, Lcom/android/tools/r8/internal/kl0;->c:I

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/kl0;->c:I

    return-object p0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kl0;->a(Ljava/lang/Integer;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/kl0;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/kl0;->a:Ljava/util/TreeMap;

    .line 22
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ph1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ph1;-><init>(Ljava/util/function/Consumer;)V

    .line 23
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(IILcom/android/tools/r8/internal/C7;Ljava/lang/Integer;)Z
    .locals 1

    .line 16
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p1, p2, :cond_3

    .line 17
    sget-boolean p1, Lcom/android/tools/r8/internal/kl0;->d:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/kl0;->b:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/kl0;->a:Ljava/util/TreeMap;

    invoke-virtual {p1, p4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    :cond_2
    return p2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
