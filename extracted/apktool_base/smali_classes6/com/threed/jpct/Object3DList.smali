.class final Lcom/threed/jpct/Object3DList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private SIZE:I

.field private count:I

.field private objList:[Lcom/threed/jpct/Object3D;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    .line 4
    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    iput-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    .line 8
    iput p1, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    .line 9
    new-array p1, p1, [Lcom/threed/jpct/Object3D;

    iput-object p1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    return-void
.end method

.method public static synthetic access$0(Lcom/threed/jpct/Object3DList;)I
    .locals 0

    iget p0, p0, Lcom/threed/jpct/Object3DList;->count:I

    return p0
.end method

.method public static synthetic access$1(Lcom/threed/jpct/Object3DList;)[Lcom/threed/jpct/Object3D;
    .locals 0

    iget-object p0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    return-object p0
.end method


# virtual methods
.method public addElement(Lcom/threed/jpct/Object3D;)V
    .locals 4

    iget v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    iget-object v1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    iget v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/threed/jpct/Object3DList;->count:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    array-length v1, v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    new-array v1, v1, [Lcom/threed/jpct/Object3D;

    iput-object v1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    :cond_0
    iput v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public contains(Lcom/threed/jpct/Object3D;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public elementAt(I)Lcom/threed/jpct/Object3D;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lcom/threed/jpct/Object3D;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/threed/jpct/Object3DList$1;

    invoke-direct {v0, p0}, Lcom/threed/jpct/Object3DList$1;-><init>(Lcom/threed/jpct/Object3DList;)V

    return-object v0
.end method

.method public getInternalArray()[Lcom/threed/jpct/Object3D;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    return-object v0
.end method

.method public removeElement(Lcom/threed/jpct/Object3D;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/threed/jpct/Object3DList;->removeElementAt(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeElementAt(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v0, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/threed/jpct/Object3DList;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/threed/jpct/Object3DList;->count:I

    iget-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    return v0
.end method

.method public toArray()[Lcom/threed/jpct/Object3D;
    .locals 4

    iget v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    new-array v1, v0, [Lcom/threed/jpct/Object3D;

    iget-object v2, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
