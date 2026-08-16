.class public final Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final NO_VALUE:I = -0x80000000


# instance fields
.field public elementSize:I

.field public keyTable:[[C

.field threshold:I

.field public valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    new-array p1, v0, [[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    .line 6
    new-array p1, v0, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    return-void
.end method

.method private rehash()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->put([CI)I

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->threshold:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->threshold:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    array-length v1, v1

    new-array v2, v1, [[C

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    array-length v1, v1

    new-array v2, v1, [I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public containsKey([C)Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    aget-object v3, v3, v1

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    array-length v5, v3

    if-ne v5, v2, :cond_2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method public get([C)I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    const/high16 p1, -0x80000000

    return p1

    :cond_1
    array-length v4, v3

    if-ne v4, v2, :cond_2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    aget p1, p1, v1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put([CI)I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    aget-object v4, v3, v1

    if-nez v4, :cond_2

    aput-object p1, v3, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    aput p2, p1, v1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->threshold:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->rehash()V

    :cond_1
    return p2

    :cond_2
    array-length v3, v4

    if-ne v3, v2, :cond_3

    invoke-static {v4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    aput p2, p1, v1

    return p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeKey([C)I
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    aget-object v3, v3, v1

    const/high16 v4, -0x80000000

    if-nez v3, :cond_1

    return v4

    :cond_1
    array-length v5, v3

    if-ne v5, v2, :cond_2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    aget v0, p1, v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    aput v4, p1, v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->rehash()V

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    array-length v0, v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    aget v1, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
