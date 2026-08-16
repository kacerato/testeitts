.class public Lcom/android/tools/r8/internal/M5;
.super Lcom/android/tools/r8/internal/N5;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/J5;

.field public final c:Ljava/lang/Character;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/N5;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/J5;->g:[B

    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte p1, p1, v0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const-string v0, "Padding character %s was already in alphabet"

    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/internal/U60;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/M5;->c:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/J5;)Lcom/android/tools/r8/internal/N5;
    .locals 2

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/M5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/M5;-><init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V

    return-object v0
.end method

.method public a(Ljava/lang/StringBuilder;[BI)V
    .locals 3

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lcom/android/tools/r8/internal/U60;->a(III)V

    :goto_0
    if-ge v1, p3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget v0, v0, Lcom/android/tools/r8/internal/J5;->f:I

    sub-int v2, p3, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/tools/r8/internal/M5;->a(Ljava/lang/StringBuilder;[BII)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget v0, v0, Lcom/android/tools/r8/internal/J5;->f:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;[BII)V
    .locals 7

    add-int v0, p3, p4

    .line 4
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/android/tools/r8/internal/U60;->a(III)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget v0, v0, Lcom/android/tools/r8/internal/J5;->f:I

    if-gt p4, v0, :cond_3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, p4, :cond_0

    add-int v5, p3, v3

    .line 6
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v1, v5

    shl-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p4, 0x1

    mul-int/2addr p2, v4

    .line 7
    iget-object p3, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget p3, p3, Lcom/android/tools/r8/internal/J5;->d:I

    sub-int/2addr p2, p3

    :goto_1
    mul-int/lit8 p3, p4, 0x8

    if-ge v0, p3, :cond_1

    sub-int p3, p2, v0

    ushr-long v5, v1, p3

    long-to-int p3, v5

    .line 8
    iget-object v3, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget v5, v3, Lcom/android/tools/r8/internal/J5;->c:I

    and-int/2addr p3, v5

    .line 9
    iget-object v3, v3, Lcom/android/tools/r8/internal/J5;->b:[C

    .line 10
    aget-char p3, v3, p3

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 12
    iget-object p3, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget p3, p3, Lcom/android/tools/r8/internal/J5;->d:I

    add-int/2addr v0, p3

    goto :goto_1

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/M5;->c:Ljava/lang/Character;

    if-eqz p2, :cond_2

    .line 14
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget p2, p2, Lcom/android/tools/r8/internal/J5;->f:I

    mul-int/2addr p2, v4

    if-ge v0, p2, :cond_2

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/M5;->c:Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget p2, p2, Lcom/android/tools/r8/internal/J5;->d:I

    add-int/2addr v0, p2

    goto :goto_2

    :cond_2
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/M5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/M5;

    iget-object v0, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget-object v2, p1, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/J5;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/M5;->c:Ljava/lang/Character;

    iget-object p1, p1, Lcom/android/tools/r8/internal/M5;->c:Ljava/lang/Character;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J5;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/M5;->c:Ljava/lang/Character;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget v1, v1, Lcom/android/tools/r8/internal/J5;->d:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/M5;->c:Ljava/lang/Character;

    if-nez v1, :cond_0

    const-string v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M5;->c:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
