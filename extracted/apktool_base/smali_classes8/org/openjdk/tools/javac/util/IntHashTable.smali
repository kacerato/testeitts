.class public Lorg/openjdk/tools/javac/util/IntHashTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INITIAL_SIZE:I = 0x40

.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field protected ints:[I

.field protected mask:I

.field protected num_bindings:I

.field protected objs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/util/IntHashTable;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->ints:[I

    const/16 v0, 0x3f

    .line 4
    iput v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->mask:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-le p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    .line 7
    new-array p1, v2, [I

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->ints:[I

    sub-int/2addr v2, v1

    .line 8
    iput v2, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->mask:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->num_bindings:I

    return-void
.end method

.method public getFromIndex(I)I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/util/IntHashTable;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->ints:[I

    aget p1, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lookup(Ljava/lang/Object;)I
    .locals 1

    .line 5
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/IntHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/util/IntHashTable;->lookup(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public lookup(Ljava/lang/Object;I)I
    .locals 4

    ushr-int/lit8 v0, p2, 0xf

    xor-int/2addr v0, p2

    shl-int/lit8 v1, p2, 0x6

    xor-int/2addr p2, v1

    or-int/lit8 p2, p2, 0x1

    .line 1
    iget v1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->mask:I

    and-int/2addr v0, v1

    const/4 v1, -0x1

    .line 2
    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    if-nez v2, :cond_2

    if-ltz v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 3
    :cond_2
    sget-object v3, Lorg/openjdk/tools/javac/util/IntHashTable;->DELETED:Ljava/lang/Object;

    if-ne v2, v3, :cond_3

    if-gez v1, :cond_3

    move v1, v0

    :cond_3
    add-int/2addr v0, p2

    .line 4
    iget v2, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->mask:I

    and-int/2addr v0, v2

    goto :goto_0
.end method

.method public putAtIndex(Ljava/lang/Object;II)I
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    aget-object v1, v0, p3

    if-eqz v1, :cond_1

    sget-object v2, Lorg/openjdk/tools/javac/util/IntHashTable;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->ints:[I

    aget v0, p1, p3

    aput p2, p1, p3

    return v0

    :cond_1
    :goto_0
    aput-object p1, v0, p3

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->ints:[I

    aput p2, p1, p3

    sget-object p1, Lorg/openjdk/tools/javac/util/IntHashTable;->DELETED:Ljava/lang/Object;

    if-eq v1, p1, :cond_2

    iget p1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->num_bindings:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->num_bindings:I

    :cond_2
    iget p1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->num_bindings:I

    mul-int/lit8 p1, p1, 0x3

    array-length p2, v0

    mul-int/lit8 p2, p2, 0x2

    if-lt p1, p2, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/IntHashTable;->rehash()V

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public rehash()V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->ints:[I

    array-length v2, v0

    shl-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-array v4, v2, [I

    add-int/lit8 v2, v2, -0x1

    iput-object v3, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    iput-object v4, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->ints:[I

    iput v2, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->mask:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->num_bindings:I

    array-length v2, v1

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    sget-object v4, Lorg/openjdk/tools/javac/util/IntHashTable;->DELETED:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    aget v4, v1, v2

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/util/IntHashTable;->hash(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lorg/openjdk/tools/javac/util/IntHashTable;->lookup(Ljava/lang/Object;I)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/openjdk/tools/javac/util/IntHashTable;->putAtIndex(Ljava/lang/Object;II)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/IntHashTable;->lookup(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->objs:[Ljava/lang/Object;

    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    sget-object v2, Lorg/openjdk/tools/javac/util/IntHashTable;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/IntHashTable;->ints:[I

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method
