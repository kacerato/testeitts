.class public Lorg/openjdk/tools/javac/util/Bits;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/Bits$BitsState;
    }
.end annotation


# static fields
.field private static final unassignedBits:[I

.field private static final wordlen:I = 0x20

.field private static final wordmask:I = 0x1f

.field private static final wordshift:I = 0x5


# instance fields
.field public bits:[I

.field protected currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/tools/javac/util/Bits;->unassignedBits:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Bits;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Bits;->dup()Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/openjdk/tools/javac/util/Bits$BitsState;->getState([IZ)Lorg/openjdk/tools/javac/util/Bits$BitsState;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/util/Bits;-><init>([ILorg/openjdk/tools/javac/util/Bits$BitsState;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    sget-object v0, Lorg/openjdk/tools/javac/util/Bits;->unassignedBits:[I

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/Bits$BitsState;->getState([IZ)Lorg/openjdk/tools/javac/util/Bits$BitsState;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/util/Bits;-><init>([ILorg/openjdk/tools/javac/util/Bits$BitsState;)V

    return-void
.end method

.method public constructor <init>([ILorg/openjdk/tools/javac/util/Bits$BitsState;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    .line 6
    iput-object p2, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    .line 7
    sget-object v0, Lorg/openjdk/tools/javac/util/Bits$1;->$SwitchMap$com$sun$tools$javac$util$Bits$BitsState:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    sget-object p2, Lorg/openjdk/tools/javac/util/Bits;->unassignedBits:[I

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    :goto_1
    return-void
.end method

.method public static synthetic access$000()[I
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Bits;->unassignedBits:[I

    return-object v0
.end method

.method private static trailingZeroBits(I)I
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    if-nez p0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const v1, 0xffff

    and-int/2addr v1, p0

    if-nez v1, :cond_1

    ushr-int/lit8 p0, p0, 0x10

    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    and-int/lit16 v2, p0, 0xff

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x8

    ushr-int/lit8 p0, p0, 0x8

    :cond_2
    and-int/lit8 v2, p0, 0xf

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x4

    ushr-int/lit8 p0, p0, 0x4

    :cond_3
    and-int/lit8 v2, p0, 0x3

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x2

    ushr-int/lit8 p0, p0, 0x2

    :cond_4
    and-int/2addr p0, v0

    sub-int/2addr v1, p0

    return v1
.end method


# virtual methods
.method public andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Bits;->internalAndSet(Lorg/openjdk/tools/javac/util/Bits;)V

    sget-object p1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object p0
.end method

.method public assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Bits;->dup()Lorg/openjdk/tools/javac/util/Bits;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    sget-object p1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object p0
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    move v0, v2

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v3, v1

    if-ge v0, v3, :cond_1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-void
.end method

.method public diffSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v1, v0

    if-ge v2, v1, :cond_2

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    aget v1, v1, v2

    not-int v1, v1

    and-int/2addr v1, v3

    aput v1, v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object p0
.end method

.method public dup()Lorg/openjdk/tools/javac/util/Bits;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Bits;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Bits;->dupBits()[I

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object v0
.end method

.method public dupBits()[I
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v1, v0

    new-array v1, v1, [I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public excl(I)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    if-ltz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    ushr-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/util/Bits;->sizeTo(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    aget v2, v1, v0

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v3, p1

    not-int p1, p1

    and-int/2addr p1, v2

    aput p1, v1, v0

    sget-object p1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-void
.end method

.method public excludeFrom(I)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Bits;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->sizeTo(I)V

    invoke-virtual {v0, v2, p1}, Lorg/openjdk/tools/javac/util/Bits;->inclRange(II)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Bits;->internalAndSet(Lorg/openjdk/tools/javac/util/Bits;)V

    sget-object p1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-void
.end method

.method public incl(I)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    if-ltz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    ushr-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/util/Bits;->sizeTo(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    aget v2, v1, v0

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    aput p1, v1, v0

    sget-object p1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-void
.end method

.method public inclRange(II)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    ushr-int/lit8 v0, p2, 0x5

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Bits;->sizeTo(I)V

    :goto_1
    if-ge p1, p2, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v3, v0, v1

    and-int/lit8 v4, p1, 0x1f

    shl-int v4, v2, v4

    or-int/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-void
.end method

.method public internalAndSet(Lorg/openjdk/tools/javac/util/Bits;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Bits;->sizeTo(I)V

    :goto_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v1, v0

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    aget v3, v1, v2

    aget v0, v0, v2

    and-int/2addr v0, v3

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public internalReset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    sget-object v0, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-void
.end method

.method public isMember(I)Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x5

    if-ge p1, v1, :cond_1

    ushr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v3, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method public isReset()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBit(I)I
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    ushr-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v3, v1

    const/4 v4, -0x1

    if-lt v0, v3, :cond_1

    return v4

    :cond_1
    aget v1, v1, v0

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    not-int p1, p1

    and-int/2addr p1, v1

    :goto_1
    if-eqz p1, :cond_2

    shl-int/lit8 v0, v0, 0x5

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Bits;->trailingZeroBits(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v1, p1

    if-lt v0, v1, :cond_3

    return v4

    :cond_3
    aget p1, p1, v0

    goto :goto_1
.end method

.method public orSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Bits;->sizeTo(I)V

    :goto_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v1, v0

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    aget v3, v1, v2

    aget v0, v0, v2

    or-int/2addr v0, v3

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object p0
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Bits;->internalReset()V

    return-void
.end method

.method public sizeTo(I)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x20

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    goto :goto_1

    :cond_0
    const/16 v2, 0x30

    :goto_1
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_2
    const-string v0, "[]"

    return-object v0
.end method

.method public xorSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    sget-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Bits;->sizeTo(I)V

    :goto_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    array-length v1, v0

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Bits;->bits:[I

    aget v3, v1, v2

    aget v0, v0, v2

    xor-int/2addr v0, v3

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Bits;->currentState:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object p0
.end method
