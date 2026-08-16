.class public final Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elementSize:I

.field public keyTable:[I

.field threshold:I

.field public valueTable:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->elementSize:I

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    new-array p1, v0, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    .line 6
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->valueTable:[Ljava/lang/Object;

    return-void
.end method

.method private rehash()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->valueTable:[Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->valueTable:[Ljava/lang/Object;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    array-length v0, v0

    rem-int v1, p1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    aget v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    array-length v0, v0

    rem-int v1, p1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    aget v2, v2, v1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->valueTable:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    array-length v0, v0

    rem-int v1, p1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    aget v3, v2, v1

    if-nez v3, :cond_2

    aput p1, v2, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->threshold:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->rehash()V

    :cond_1
    return-object p2

    :cond_2
    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v1

    return-object p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->valueTable:[Ljava/lang/Object;

    array-length v0, v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->keyTable:[I

    aget v1, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
