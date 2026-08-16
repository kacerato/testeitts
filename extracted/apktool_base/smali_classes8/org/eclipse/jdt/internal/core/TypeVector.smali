.class public final Lorg/eclipse/jdt/internal/core/TypeVector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static INITIAL_SIZE:I = 0xa

.field static MIN_ELEMENTS_FOR_HASHSET:I = 0x8

.field public static final NoElements:[Lorg/eclipse/jdt/core/IType;


# instance fields
.field private elementSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/IType;",
            "Lorg/eclipse/jdt/core/IType;",
            ">;"
        }
    .end annotation
.end field

.field elements:[Lorg/eclipse/jdt/core/IType;

.field maxSize:I

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    sput-object v0, Lorg/eclipse/jdt/internal/core/TypeVector;->NoElements:[Lorg/eclipse/jdt/core/IType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    .line 3
    sget v0, Lorg/eclipse/jdt/internal/core/TypeVector;->INITIAL_SIZE:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    .line 5
    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IType;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    .line 14
    sget v0, Lorg/eclipse/jdt/internal/core/TypeVector;->INITIAL_SIZE:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    .line 16
    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    const/4 v1, 0x0

    .line 17
    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/IType;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    .line 8
    array-length v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    add-int/lit8 v1, v0, 0x1

    .line 9
    iput v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    .line 10
    new-array v1, v1, [Lorg/eclipse/jdt/core/IType;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    const/4 v2, 0x0

    .line 11
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private constructElementSetIfNecessary()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    sget v1, Lorg/eclipse/jdt/internal/core/TypeVector;->MIN_ELEMENTS_FOR_HASHSET:I

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/core/IType;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    new-array v1, v1, [Lorg/eclipse/jdt/core/IType;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public addAll([Lorg/eclipse/jdt/core/IType;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    array-length v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    new-array v1, v1, [Lorg/eclipse/jdt/core/IType;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    array-length v0, p1

    :goto_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p1, v3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public contains(Lorg/eclipse/jdt/core/IType;)Z
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/TypeVector;->constructElementSetIfNecessary()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1
.end method

.method public copy()Lorg/eclipse/jdt/internal/core/TypeVector;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    array-length v2, v1

    new-array v3, v2, [Lorg/eclipse/jdt/core/IType;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    iput v1, v0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    iput v1, v0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    return-object v0
.end method

.method public elementAt(I)Lorg/eclipse/jdt/core/IType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public elements()[Lorg/eclipse/jdt/core/IType;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/TypeVector;->NoElements:[Lorg/eclipse/jdt/core/IType;

    return-object v0

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    if-ge v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->maxSize:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    new-array v2, v0, [Lorg/eclipse/jdt/core/IType;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    return-object v0
.end method

.method public remove(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/IType;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-gez v2, :cond_2

    return-object v1

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    aget-object v4, v3, v2

    if-ne p1, v4, :cond_3

    iget v4, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    sub-int/2addr v4, v2

    invoke-static {v3, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    aput-object v1, v0, v2

    return-object p1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public removeAll()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elementSet:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    if-lt v1, v2, :cond_0

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/TypeVector;->elements:[Lorg/eclipse/jdt/core/IType;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
