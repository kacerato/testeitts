.class public Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0xa


# instance fields
.field protected buffer:[[C

.field protected end:I

.field protected ranges:[[I

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>([CI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>([CI)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    const/16 v0, 0xa

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>([CI)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    .line 4
    :goto_0
    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->size:I

    .line 5
    new-array v0, p2, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->buffer:[[C

    .line 6
    new-array p2, p2, [[I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->ranges:[[I

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->end:I

    if-eqz p1, :cond_1

    .line 8
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_1
    return-void
.end method


# virtual methods
.method public append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;
    .locals 3

    const/4 v0, 0x1

    .line 14
    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;
    .locals 2

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_0
    return-object p0
.end method

.method public append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_0
    return-object p0
.end method

.method public append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;
    .locals 5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_4

    if-eqz p1, :cond_3

    .line 2
    array-length v0, p1

    if-gt p2, v0, :cond_2

    add-int v1, p3, p2

    if-gt v1, v0, :cond_1

    if-lez p3, :cond_3

    .line 3
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->end:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->size:I

    if-ne v0, v1, :cond_0

    mul-int/lit8 v0, v1, 0x2

    .line 4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->buffer:[[C

    new-array v3, v0, [[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->buffer:[[C

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->ranges:[[I

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->ranges:[[I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->size:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->size:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->size:I

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->buffer:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->end:I

    aput-object p1, v0, v1

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->ranges:[[I

    filled-new-array {p2, p3}, [I

    move-result-object p2

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->end:I

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object p0

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getContents()[C
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->end:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->end:I

    const/4 v5, 0x1

    if-lt v2, v4, :cond_3

    if-lez v3, :cond_2

    new-array v2, v3, [C

    move v1, v0

    move v3, v1

    :goto_1
    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->end:I

    if-lt v1, v4, :cond_1

    return-object v2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->ranges:[[I

    aget-object v4, v4, v1

    aget v6, v4, v5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->buffer:[[C

    aget-object v7, v7, v1

    aget v4, v4, v0

    invoke-static {v7, v4, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->ranges:[[I

    aget-object v4, v4, v2

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    return-object v1
.end method
