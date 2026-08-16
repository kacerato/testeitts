.class public Lcom/jme3/renderer/queue/GeometryList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/jme3/scene/Geometry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x20


# instance fields
.field private comparator:Lcom/jme3/renderer/queue/GeometryComparator;

.field private geometries:[Lcom/jme3/scene/Geometry;

.field private final listSort:Lcom/jme3/util/ListSort;

.field private size:I


# direct methods
.method public constructor <init>(Lcom/jme3/renderer/queue/GeometryComparator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/renderer/queue/GeometryList;->comparator:Lcom/jme3/renderer/queue/GeometryComparator;

    new-instance p1, Lcom/jme3/util/ListSort;

    invoke-direct {p1}, Lcom/jme3/util/ListSort;-><init>()V

    iput-object p1, p0, Lcom/jme3/renderer/queue/GeometryList;->listSort:Lcom/jme3/util/ListSort;

    return-void
.end method


# virtual methods
.method public add(Lcom/jme3/scene/Geometry;)V
    .locals 4

    iget v0, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    iget-object v1, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lcom/jme3/scene/Geometry;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    iget v1, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    return-void
.end method

.method public get(I)Lcom/jme3/scene/Geometry;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getComparator()Lcom/jme3/renderer/queue/GeometryComparator;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->comparator:Lcom/jme3/renderer/queue/GeometryComparator;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/jme3/renderer/queue/GeometryList$1;

    invoke-direct {v0, p0}, Lcom/jme3/renderer/queue/GeometryList$1;-><init>(Lcom/jme3/renderer/queue/GeometryList;)V

    return-object v0
.end method

.method public set(ILcom/jme3/scene/Geometry;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    aput-object p2, v0, p1

    return-void
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->comparator:Lcom/jme3/renderer/queue/GeometryComparator;

    invoke-interface {v0, p1}, Lcom/jme3/renderer/queue/GeometryComparator;->setCamera(Lcom/jme3/renderer/Camera;)V

    return-void
.end method

.method public setComparator(Lcom/jme3/renderer/queue/GeometryComparator;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/queue/GeometryList;->comparator:Lcom/jme3/renderer/queue/GeometryComparator;

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    return v0
.end method

.method public sort()V
    .locals 3

    iget v0, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->listSort:Lcom/jme3/util/ListSort;

    invoke-virtual {v0}, Lcom/jme3/util/ListSort;->getLength()I

    move-result v0

    iget v1, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->listSort:Lcom/jme3/util/ListSort;

    invoke-virtual {v0, v1}, Lcom/jme3/util/ListSort;->allocateStack(I)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->listSort:Lcom/jme3/util/ListSort;

    iget-object v1, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    iget-object v2, p0, Lcom/jme3/renderer/queue/GeometryList;->comparator:Lcom/jme3/renderer/queue/GeometryComparator;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/util/ListSort;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method
