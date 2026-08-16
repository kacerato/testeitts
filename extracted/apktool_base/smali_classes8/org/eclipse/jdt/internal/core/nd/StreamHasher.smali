.class public final Lorg/eclipse/jdt/internal/core/nd/StreamHasher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_STRING_HASH:J

.field private static final SEED:J = 0x2b992ddfa23249d6L


# instance fields
.field a:I

.field b:I

.field c:I

.field hashedOffset:J

.field previousCharacter:C

.field state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;-><init>()V

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->computeHashInternal()J

    move-result-wide v0

    sput-wide v0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->EMPTY_STRING_HASH:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->hashedOffset:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->state:I

    const v0, -0x5dcdb62a

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    int-to-long v0, v0

    const-wide/32 v2, 0x2b992ddf

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    return-void
.end method

.method private computeHashInternal()J
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->previousCharacter:C

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->previousCharacter:C

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->previousCharacter:C

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->state:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->finalMix()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private finalMix()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    const/16 v2, 0xe

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    const/16 v3, 0xb

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    const/16 v3, 0x19

    invoke-static {v1, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    const/4 v3, 0x4

    invoke-static {v1, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    const/16 v2, 0x18

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    return-void
.end method

.method public static hash(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->addChunk([C)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->computeHash()J

    move-result-wide v0

    return-wide v0
.end method

.method private mix()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    const/16 v1, 0x13

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    return-void
.end method


# virtual methods
.method public addChunk([C)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-char v2, p1, v1

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->state:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->state:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    iget-char v4, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->previousCharacter:C

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->c:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->mix()V

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->state:I

    goto :goto_1

    :pswitch_1
    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    iget-char v4, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->previousCharacter:C

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->b:I

    goto :goto_1

    :pswitch_2
    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    iget-char v4, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->previousCharacter:C

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->a:I

    goto :goto_1

    :pswitch_3
    iput-char v2, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->previousCharacter:C

    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->hashedOffset:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->hashedOffset:J

    goto :goto_0

    :pswitch_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "addChunk is called after computeHash."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public computeHash()J
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->state:I

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->computeHashInternal()J

    move-result-wide v0

    sget-wide v2, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->EMPTY_STRING_HASH:J

    xor-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "computeHash method is called more than once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
