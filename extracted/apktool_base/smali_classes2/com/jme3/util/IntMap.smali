.class public final Lcom/jme3/util/IntMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/IntMap$Entry;,
        Lcom/jme3/util/IntMap$IntMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/jme3/util/IntMap$Entry<",
        "TT;>;>;",
        "Ljava/lang/Cloneable;",
        "Lcom/jme3/util/clone/JmeCloneable;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private final loadFactor:F

.field private mask:I

.field private size:I

.field private table:[Lcom/jme3/util/IntMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/jme3/util/IntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/jme3/util/IntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_3

    if-lez p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/jme3/util/IntMap;->capacity:I

    .line 5
    :goto_0
    iget v1, p0, Lcom/jme3/util/IntMap;->capacity:I

    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lcom/jme3/util/IntMap;->capacity:I

    goto :goto_0

    .line 7
    :cond_0
    iput p2, p0, Lcom/jme3/util/IntMap;->loadFactor:F

    int-to-float p1, v1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 8
    iput p1, p0, Lcom/jme3/util/IntMap;->threshold:I

    .line 9
    new-array p1, v1, [Lcom/jme3/util/IntMap$Entry;

    iput-object p1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    sub-int/2addr v1, v0

    .line 10
    iput v1, p0, Lcom/jme3/util/IntMap;->mask:I

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "loadFactor must be greater than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initialCapacity must be greater than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initialCapacity is too large."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/jme3/util/IntMap;)[Lcom/jme3/util/IntMap$Entry;
    .locals 0

    iget-object p0, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/jme3/util/IntMap;)I
    .locals 0

    iget p0, p0, Lcom/jme3/util/IntMap;->size:I

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    array-length v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/util/IntMap;->size:I

    return-void
.end method

.method public clone()Lcom/jme3/util/IntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/IntMap;

    .line 3
    iget-object v1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    array-length v2, v1

    new-array v2, v2, [Lcom/jme3/util/IntMap$Entry;

    .line 4
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/jme3/util/IntMap$Entry;->clone()Lcom/jme3/util/IntMap$Entry;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v2, v0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcom/jme3/util/IntMap;->clone()Lcom/jme3/util/IntMap;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/util/IntMap$Entry;

    iput-object p1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    return-void
.end method

.method public containsKey(I)Z
    .locals 2

    iget v0, p0, Lcom/jme3/util/IntMap;->mask:I

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/jme3/util/IntMap$Entry;->key:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, v0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    array-length v1, v0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    aget-object v1, v0, v2

    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v1, v1, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/jme3/util/IntMap;->mask:I

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/jme3/util/IntMap$Entry;->key:I

    if-ne v1, p1, :cond_0

    iget-object p1, v0, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, v0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/jme3/util/IntMap$Entry<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/jme3/util/IntMap$IntMapIterator;

    invoke-direct {v0, p0}, Lcom/jme3/util/IntMap$IntMapIterator;-><init>(Lcom/jme3/util/IntMap;)V

    invoke-virtual {v0}, Lcom/jme3/util/IntMap$IntMapIterator;->beginUse()V

    return-object v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/jme3/util/IntMap;->mask:I

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v1, v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/jme3/util/IntMap$Entry;->key:I

    if-eq v2, p1, :cond_0

    iget-object v1, v1, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    iput-object p2, v1, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    new-instance v2, Lcom/jme3/util/IntMap$Entry;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, p2, v3}, Lcom/jme3/util/IntMap$Entry;-><init>(ILjava/lang/Object;Lcom/jme3/util/IntMap$Entry;)V

    aput-object v2, v1, v0

    iget p1, p0, Lcom/jme3/util/IntMap;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/jme3/util/IntMap;->size:I

    iget p2, p0, Lcom/jme3/util/IntMap;->threshold:I

    const/4 v0, 0x0

    if-lt p1, p2, :cond_5

    iget p1, p0, Lcom/jme3/util/IntMap;->capacity:I

    mul-int/lit8 p1, p1, 0x2

    new-array p2, p1, [Lcom/jme3/util/IntMap$Entry;

    iget-object v1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_4

    aget-object v4, v1, v3

    if-eqz v4, :cond_3

    aput-object v0, v1, v3

    :goto_2
    iget-object v5, v4, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    iget v6, v4, Lcom/jme3/util/IntMap$Entry;->key:I

    and-int/2addr v6, v2

    aget-object v7, p2, v6

    iput-object v7, v4, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    aput-object v4, p2, v6

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    move-object v4, v5

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iput-object p2, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    iput p1, p0, Lcom/jme3/util/IntMap;->capacity:I

    int-to-float p2, p1

    iget v1, p0, Lcom/jme3/util/IntMap;->loadFactor:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/jme3/util/IntMap;->threshold:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/jme3/util/IntMap;->mask:I

    :cond_5
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/jme3/util/IntMap;->mask:I

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v1, v1, v0

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    iget v4, v1, Lcom/jme3/util/IntMap$Entry;->key:I

    if-ne v4, p1, :cond_1

    iget p1, p0, Lcom/jme3/util/IntMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/jme3/util/IntMap;->size:I

    if-ne v2, v1, :cond_0

    iget-object p1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aput-object v3, p1, v0

    goto :goto_1

    :cond_0
    iput-object v3, v2, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    :goto_1
    iget-object p1, v1, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    :cond_1
    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/jme3/util/IntMap;->size:I

    return v0
.end method
