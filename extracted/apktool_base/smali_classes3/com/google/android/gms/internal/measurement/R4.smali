.class public Lcom/google/android/gms/internal/measurement/R4;
.super Lcom/google/android/gms/internal/measurement/Q4;
.source "SourceFile"


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/Q4;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/R4;->d:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/S4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/R4;->l()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/measurement/S4;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/R4;->l()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/R4;

    if-eqz v1, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/measurement/R4;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/S4;->r()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/S4;->r()I

    move-result v3

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/R4;->l()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v3

    if-gt v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v3

    if-gt v1, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/R4;->d:[B

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/R4;->d:[B

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/R4;->u()I

    move p1, v2

    move v5, p1

    :goto_1
    if-ge p1, v1, :cond_7

    aget-byte v6, v3, p1

    aget-byte v7, v4, v5

    if-eq v6, v7, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: 0, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/R4;->l()I

    move-result v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length too large: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R4;->d:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public k(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R4;->d:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R4;->d:[B

    array-length v0, v0

    return v0
.end method

.method public final m(II)Lcom/google/android/gms/internal/measurement/S4;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/R4;->l()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/S4;->s(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/measurement/S4;->c:Lcom/google/android/gms/internal/measurement/S4;

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/R4;->d:[B

    new-instance v1, Lcom/google/android/gms/internal/measurement/N4;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/measurement/N4;-><init>([BII)V

    return-object v1
.end method

.method public final n(Lcom/google/android/gms/internal/measurement/J4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/R4;->l()I

    move-result v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/V4;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/R4;->d:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/V4;->H([BII)V

    return-void
.end method

.method public final o(III)I
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/R4;->d:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/measurement/A5;->c(I[BII)I

    move-result p1

    return p1
.end method

.method public u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
