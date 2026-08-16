.class public Lorg/eclipse/jdt/internal/core/nd/LongArray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIN_CAPACITY:I = 0x8


# instance fields
.field private contents:[J

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->contents:[J

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->contents:[J

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->contents:[J

    array-length v1, v0

    if-lt v1, p1, :cond_1

    return-void

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [J

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->contents:[J

    return-void
.end method


# virtual methods
.method public addLast(J)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/LongArray;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->contents:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public get(I)J
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->contents:[J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeLast()J
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->contents:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->size:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/LongArray;->size:I

    return v0
.end method
