.class public final Lcom/android/tools/r8/internal/L5;
.super Lcom/android/tools/r8/internal/M5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/M5;-><init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V

    iget-object p1, p1, Lcom/android/tools/r8/internal/J5;->b:[C

    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/J5;)Lcom/android/tools/r8/internal/N5;
    .locals 2

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/L5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/L5;-><init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;[BI)V
    .locals 5

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lcom/android/tools/r8/internal/U60;->a(III)V

    move v0, p3

    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 2
    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v1, 0x2

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v3, p2, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 3
    iget-object v3, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    ushr-int/lit8 v4, v2, 0x12

    .line 4
    iget-object v3, v3, Lcom/android/tools/r8/internal/J5;->b:[C

    .line 5
    aget-char v3, v3, v4

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 7
    iget-object v3, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    ushr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    .line 8
    iget-object v3, v3, Lcom/android/tools/r8/internal/J5;->b:[C

    .line 9
    aget-char v3, v3, v4

    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 11
    iget-object v3, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    .line 12
    iget-object v3, v3, Lcom/android/tools/r8/internal/J5;->b:[C

    .line 13
    aget-char v3, v3, v4

    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 15
    iget-object v3, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    and-int/lit8 v2, v2, 0x3f

    .line 16
    iget-object v3, v3, Lcom/android/tools/r8/internal/J5;->b:[C

    .line 17
    aget-char v2, v3, v2

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    :cond_0
    if-ge v1, p3, :cond_1

    sub-int/2addr p3, v1

    .line 19
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/tools/r8/internal/M5;->a(Ljava/lang/StringBuilder;[BII)V

    :cond_1
    return-void
.end method
