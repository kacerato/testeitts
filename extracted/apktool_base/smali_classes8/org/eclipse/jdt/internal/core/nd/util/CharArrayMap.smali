.class public final Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    return-void
.end method

.method private static checkBoundaries([CII)V
    .locals 3

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Start index: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createOrderedMap()Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey([C)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;-><init>([C)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey([CII)Z
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->checkBoundaries([CII)V

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;-><init>([CII)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get([C)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)TV;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;-><init>([C)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get([CII)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->checkBoundaries([CII)V

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;-><init>([CII)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "[C>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->buffer:[C

    iget v4, v2, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    iget v2, v2, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->length:I

    invoke-static {v3, v4, v2}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->extract([CII)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public put([CIILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIITV;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->checkBoundaries([CII)V

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;-><init>([CII)V

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put([CLjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CTV;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;-><init>([C)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove([C)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)TV;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;-><init>([C)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove([CII)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->checkBoundaries([CII)V

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;-><init>([CII)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
