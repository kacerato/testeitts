.class public Lcom/android/tools/r8/internal/i8;
.super Lcom/android/tools/r8/internal/h8;
.source "SourceFile"


# instance fields
.field public final e:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h8;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->d()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ie;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/a8;->a([BII)V

    return-void
.end method

.method public final a()Z
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->d()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 5
    sget-object v3, Lcom/android/tools/r8/internal/tw0;->a:Lcom/android/tools/r8/internal/ow0;

    .line 6
    invoke-virtual {v3, v1, v0, v2}, Lcom/android/tools/r8/internal/ow0;->b([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/android/tools/r8/internal/Be;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Be;->a([BIIZ)Lcom/android/tools/r8/internal/xe;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(II)I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->d()I

    move-result v1

    sget-object v2, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    move v2, v1

    :goto_0
    add-int v3, v1, p2

    if-ge v2, v3, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    aget-byte v3, v0, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/m8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v1, p1, Lcom/android/tools/r8/internal/i8;

    if-eqz v1, :cond_9

    check-cast p1, Lcom/android/tools/r8/internal/i8;

    iget v1, p0, Lcom/android/tools/r8/internal/m8;->b:I

    iget v3, p1, Lcom/android/tools/r8/internal/m8;->b:I

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v3

    if-gt v1, v3, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v3

    if-gt v1, v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    iget-object v4, p1, Lcom/android/tools/r8/internal/i8;->e:[B

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->d()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/i8;->d()I

    move-result p1

    :goto_0
    if-ge v1, v5, :cond_6

    aget-byte v6, v3, v1

    aget-byte v7, v4, p1

    if-eq v6, v7, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ran off end of other: 0, "

    const-string v3, ", "

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Length too large: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(II)Lcom/android/tools/r8/internal/m8;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/m8;->a(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    return-object p1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/f8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i8;->d()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lcom/android/tools/r8/internal/f8;-><init>([BII)V

    return-object v0
.end method

.method public j(I)B
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public k(I)B
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i8;->e:[B

    array-length v0, v0

    return v0
.end method
