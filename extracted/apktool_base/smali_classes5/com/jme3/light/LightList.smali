.class public final Lcom/jme3/light/LightList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/jme3/light/Light;",
        ">;",
        "Lcom/jme3/export/Savable;",
        "Ljava/lang/Cloneable;",
        "Lcom/jme3/util/clone/JmeCloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x1

.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/jme3/light/Light;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private distToOwner:[F

.field private list:[Lcom/jme3/light/Light;

.field private listSize:I

.field private owner:Lcom/jme3/scene/Spatial;

.field private tlist:[Lcom/jme3/light/Light;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jme3/light/LightList$1;

    invoke-direct {v0}, Lcom/jme3/light/LightList$1;-><init>()V

    sput-object v0, Lcom/jme3/light/LightList;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jme3/light/LightList;->listSize:I

    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Lcom/jme3/light/Light;

    iput-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    .line 5
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 7
    iput-object p1, p0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/light/LightList;)[Lcom/jme3/light/Light;
    .locals 0

    iget-object p0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    return-object p0
.end method

.method private doubleSize()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/jme3/light/Light;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    iget-object v3, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v3, v3

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iput-object v2, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    return-void
.end method


# virtual methods
.method public add(Lcom/jme3/light/Light;)V
    .locals 2

    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/jme3/light/LightList;->doubleSize()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/jme3/light/LightList;->listSize:I

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    aput v0, p1, v1

    return-void
.end method

.method public clear()V
    .locals 4

    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/jme3/light/LightList;->listSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    if-eqz v1, :cond_2

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iput v0, p0, Lcom/jme3/light/LightList;->listSize:I

    return-void
.end method

.method public clone()Lcom/jme3/light/LightList;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/LightList;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    .line 4
    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    invoke-virtual {v2}, [Lcom/jme3/light/Light;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/jme3/light/Light;

    iput-object v2, v0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    .line 5
    iget-object v2, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v0, Lcom/jme3/light/LightList;->distToOwner:[F

    .line 6
    iput-object v1, v0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/light/LightList;->clone()Lcom/jme3/light/LightList;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Spatial;

    iput-object p2, p0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    iget-object p2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/light/Light;

    iput-object p2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget-object p2, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    return-void
.end method

.method public get(I)Lcom/jme3/light/Light;
    .locals 1

    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/jme3/light/Light;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/jme3/light/LightList$2;

    invoke-direct {v0, p0}, Lcom/jme3/light/LightList$2;-><init>(Lcom/jme3/light/LightList;)V

    return-object v0
.end method

.method public jmeClone()Lcom/jme3/light/LightList;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/LightList;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/light/LightList;->jmeClone()Lcom/jme3/light/LightList;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "lights"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/jme3/light/LightList;->listSize:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [Lcom/jme3/light/Light;

    iput-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/light/Light;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public remove(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/jme3/light/LightList;->listSize:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aput-object v1, p1, v0

    return-void

    .line 4
    :cond_0
    :goto_0
    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    add-int/lit8 v2, p1, 0x1

    aget-object v3, v0, v2

    aput-object v3, v0, p1

    move p1, v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aput-object v1, p1, v0

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public remove(Lcom/jme3/light/Light;)V
    .locals 2

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lcom/jme3/light/LightList;->remove(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOwner(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    return v0
.end method

.method public sort(Z)V
    .locals 6

    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v3, v0

    iget-object v4, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v5, v4

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    array-length v3, v4

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    invoke-virtual {v0}, [Lcom/jme3/light/Light;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/light/Light;

    iput-object v0, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    :goto_1
    if-eqz p1, :cond_2

    move p1, v2

    :goto_2
    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, v3}, Lcom/jme3/light/Light;->computeLastDistance(Lcom/jme3/scene/Spatial;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget v3, p0, Lcom/jme3/light/LightList;->listSize:I

    sub-int/2addr v3, v1

    sget-object v1, Lcom/jme3/light/LightList;->c:Ljava/util/Comparator;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/jme3/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LightList["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/light/LightList;->listSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/jme3/light/LightList;Lcom/jme3/light/LightList;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/light/LightList;->update(Lcom/jme3/light/LightList;Lcom/jme3/light/LightList;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public update(Lcom/jme3/light/LightList;Lcom/jme3/light/LightList;Ljava/util/function/Predicate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/light/LightList;",
            "Lcom/jme3/light/LightList;",
            "Ljava/util/function/Predicate<",
            "Lcom/jme3/light/Light;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/light/LightList;->clear()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v0, v0

    iget v1, p1, Lcom/jme3/light/LightList;->listSize:I

    if-gt v0, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/jme3/light/LightList;->doubleSize()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 5
    :goto_1
    iget v3, p1, Lcom/jme3/light/LightList;->listSize:I

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    if-ge v1, v3, :cond_2

    .line 6
    iget-object v3, p1, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object v3, v3, v1

    if-eqz p3, :cond_1

    .line 7
    invoke-interface {p3, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    iget-object v5, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aput-object v3, v5, v2

    .line 9
    iget-object v3, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_5

    .line 10
    iget p1, p2, Lcom/jme3/light/LightList;->listSize:I

    add-int/2addr p1, v2

    .line 11
    :goto_3
    iget-object p3, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length p3, p3

    if-gt p3, p1, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/jme3/light/LightList;->doubleSize()V

    goto :goto_3

    .line 13
    :cond_3
    :goto_4
    iget p1, p2, Lcom/jme3/light/LightList;->listSize:I

    if-ge v0, p1, :cond_4

    add-int p1, v0, v2

    .line 14
    iget-object p3, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget-object v1, p2, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object v1, v1, v0

    aput-object v1, p3, p1

    .line 15
    iget-object p3, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    aput v4, p3, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/2addr v2, p1

    .line 16
    iput v2, p0, Lcom/jme3/light/LightList;->listSize:I

    goto :goto_5

    .line 17
    :cond_5
    iput v2, p0, Lcom/jme3/light/LightList;->listSize:I

    :goto_5
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "lights"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
