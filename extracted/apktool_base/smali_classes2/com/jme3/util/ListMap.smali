.class public final Lcom/jme3/util/ListMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/ListMap$ListMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final backingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private entries:[Lcom/jme3/util/ListMap$ListMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/jme3/util/ListMap$ListMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Lcom/jme3/util/ListMap$ListMapEntry;

    iput-object v1, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 5
    new-array v0, p1, [Lcom/jme3/util/ListMap$ListMapEntry;

    iput-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/util/ListMap$ListMapEntry;

    iput-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    .line 10
    invoke-virtual {p0, p1}, Lcom/jme3/util/ListMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clone()Lcom/jme3/util/ListMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/ListMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jme3/util/ListMap;

    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/jme3/util/ListMap;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/jme3/util/ListMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->clone()Lcom/jme3/util/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntry(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/jme3/util/ListMap$ListMapEntry;->access$100(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/jme3/util/ListMap$ListMapEntry;->access$000(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/jme3/util/ListMap$ListMapEntry;->access$100(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/jme3/util/ListMap;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, p2}, Lcom/jme3/util/ListMap$ListMapEntry;->access$002(Lcom/jme3/util/ListMap$ListMapEntry;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v0

    iget-object v2, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    array-length v3, v2

    if-ne v0, v3, :cond_2

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [Lcom/jme3/util/ListMap$ListMapEntry;

    iput-object v3, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v1, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    new-instance v2, Lcom/jme3/util/ListMap$ListMapEntry;

    invoke-direct {v2, p1, p2}, Lcom/jme3/util/ListMap$ListMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/jme3/util/ListMap$ListMapEntry;->access$100(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/jme3/util/ListMap;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object p1, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    add-int/lit8 v2, v3, 0x1

    aget-object v4, p1, v2

    aput-object v4, p1, v3

    move v3, v2

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
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

    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
