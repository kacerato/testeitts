.class public Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;
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


# instance fields
.field private bindingsWithoutAnId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;"
        }
    .end annotation
.end field

.field private identityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "TV;>;"
        }
    .end annotation
.end field

.field private mapIdToValue:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->identityMap:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->mapIdToValue:[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->bindingsWithoutAnId:Ljava/util/Set;

    return-void
.end method

.method private insertIntoIdMap(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->mapIdToValue:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v2, v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->mapIdToValue:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->mapIdToValue:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->identityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->bindingsWithoutAnId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->mapIdToValue:[Ljava/lang/Object;

    return-void
.end method

.method public get(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->identityMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->mapIdToValue:[Ljava/lang/Object;

    array-length v3, v2

    if-ge p1, v3, :cond_1

    aget-object v0, v2, p1

    :cond_1
    move-object v2, v0

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->bindingsWithoutAnId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->mapIdToValue:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_4

    aget-object v0, v0, p1

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v4, v1, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->identityMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->insertIntoIdMap(ILjava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_6
    :goto_1
    return-object v0
.end method

.method public put(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->identityMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->insertIntoIdMap(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->bindingsWithoutAnId:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
