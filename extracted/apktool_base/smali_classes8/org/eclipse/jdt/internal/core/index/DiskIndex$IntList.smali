.class Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/index/DiskIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntList"
.end annotation


# instance fields
.field elements:[I

.field size:I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->elements:[I

    array-length p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->size:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->size:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->elements:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->elements:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->elements:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public asArray()[I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->size:I

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->elements:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
