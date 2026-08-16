.class public abstract Lcom/android/tools/r8/internal/gA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/gA;->b:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/android/tools/r8/internal/gA;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/tools/r8/internal/gA;

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/fA;

    iget-object v2, v0, Lcom/android/tools/r8/internal/fA;->c:[B

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x8

    check-cast p1, Lcom/android/tools/r8/internal/fA;

    iget-object v4, p1, Lcom/android/tools/r8/internal/fA;->c:[B

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x8

    if-ne v3, v5, :cond_3

    array-length v2, v2

    array-length v3, v4

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v3, v1

    goto :goto_2

    :cond_0
    move v2, v1

    move v3, v4

    :goto_0
    iget-object v5, v0, Lcom/android/tools/r8/internal/fA;->c:[B

    array-length v6, v5

    if-ge v2, v6, :cond_2

    aget-byte v5, v5, v2

    iget-object v6, p1, Lcom/android/tools/r8/internal/fA;->c:[B

    aget-byte v6, v6, v2

    if-ne v5, v6, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    and-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 5

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/fA;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fA;->c:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_2

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    array-length v2, v0

    if-eqz v1, :cond_1

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    :goto_1
    array-length v2, v0

    if-ge v4, v2, :cond_3

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v4, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/fA;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fA;->c:[B

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    sget-object v5, Lcom/android/tools/r8/internal/gA;->b:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
