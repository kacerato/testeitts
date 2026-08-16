.class public final LHf/d;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation build LHf/f;
.end annotation


# instance fields
.field public final b:Ljava/io/InputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:LHf/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public final f:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;LHf/a;)V
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LHf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, LHf/d;->b:Ljava/io/InputStream;

    iput-object p2, p0, LHf/d;->c:LHf/a;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, LHf/d;->f:[B

    const/16 p1, 0x400

    new-array p2, p1, [B

    iput-object p2, p0, LHf/d;->g:[B

    new-array p1, p1, [B

    iput-object p1, p0, LHf/d;->h:[B

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 3

    iget-object v0, p0, LHf/d;->h:[B

    iget v1, p0, LHf/d;->i:I

    add-int v2, v1, p3

    invoke-static {v0, p1, p2, v1, v2}, Lpf/q;->v0([B[BIII)[B

    iget p1, p0, LHf/d;->i:I

    add-int/2addr p1, p3

    iput p1, p0, LHf/d;->i:I

    invoke-virtual {p0}, LHf/d;->f()V

    return-void
.end method

.method public final b([BIII)I
    .locals 7

    iget v6, p0, LHf/d;->j:I

    iget-object v0, p0, LHf/d;->c:LHf/a;

    iget-object v1, p0, LHf/d;->g:[B

    iget-object v2, p0, LHf/d;->h:[B

    const/4 v4, 0x0

    move v3, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LHf/a;->p([B[BIII)I

    move-result p4

    add-int/2addr v6, p4

    iput v6, p0, LHf/d;->j:I

    invoke-virtual {p0}, LHf/d;->c()I

    move-result p4

    sub-int/2addr p3, p2

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, LHf/d;->a([BII)V

    invoke-virtual {p0}, LHf/d;->g()V

    return p3
.end method

.method public final c()I
    .locals 2

    iget v0, p0, LHf/d;->j:I

    iget v1, p0, LHf/d;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, LHf/d;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LHf/d;->d:Z

    iget-object v0, p0, LHf/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public final d(I)I
    .locals 4

    iget-object v0, p0, LHf/d;->g:[B

    const/16 v1, 0x3d

    aput-byte v1, v0, p1

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LHf/d;->e()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, LHf/d;->g:[B

    add-int/lit8 v3, p1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    :cond_0
    add-int/2addr p1, v1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, LHf/d;->c:LHf/a;

    invoke-virtual {v0}, LHf/a;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LHf/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, LHf/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, LHf/c;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return v0
.end method

.method public final f()V
    .locals 2

    iget v0, p0, LHf/d;->i:I

    iget v1, p0, LHf/d;->j:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, LHf/d;->i:I

    iput v0, p0, LHf/d;->j:I

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, LHf/d;->h:[B

    array-length v1, v0

    iget v2, p0, LHf/d;->j:I

    sub-int/2addr v1, v2

    iget-object v3, p0, LHf/d;->g:[B

    array-length v3, v3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v1, :cond_0

    iget v1, p0, LHf/d;->i:I

    const/4 v3, 0x0

    invoke-static {v0, v0, v3, v1, v2}, Lpf/q;->v0([B[BIII)[B

    iget v0, p0, LHf/d;->j:I

    iget v1, p0, LHf/d;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, LHf/d;->j:I

    iput v3, p0, LHf/d;->i:I

    :cond_0
    return-void
.end method

.method public read()I
    .locals 4

    .line 1
    iget v0, p0, LHf/d;->i:I

    iget v1, p0, LHf/d;->j:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LHf/d;->h:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v2

    .line 3
    iput v0, p0, LHf/d;->i:I

    .line 4
    invoke-virtual {p0}, LHf/d;->f()V

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, LHf/d;->f:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, LHf/d;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, LHf/d;->f:[B

    aget-byte v0, v0, v1

    and-int/lit16 v3, v0, 0xff

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v3
.end method

.method public read([BII)I
    .locals 9
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v0, p2, p3

    .line 8
    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 9
    iget-boolean v1, p0, LHf/d;->d:Z

    if-nez v1, :cond_a

    .line 10
    iget-boolean v1, p0, LHf/d;->e:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    return v1

    .line 11
    :cond_1
    invoke-virtual {p0}, LHf/d;->c()I

    move-result v3

    if-lt v3, p3, :cond_2

    .line 12
    invoke-virtual {p0, p1, p2, p3}, LHf/d;->a([BII)V

    return p3

    .line 13
    :cond_2
    invoke-virtual {p0}, LHf/d;->c()I

    move-result v3

    sub-int/2addr p3, v3

    add-int/lit8 p3, p3, 0x2

    .line 14
    div-int/lit8 p3, p3, 0x3

    mul-int/lit8 p3, p3, 0x4

    move v3, p2

    .line 15
    :goto_0
    iget-boolean v4, p0, LHf/d;->e:Z

    if-nez v4, :cond_8

    if-lez p3, :cond_8

    .line 16
    iget-object v4, p0, LHf/d;->g:[B

    array-length v4, v4

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v1

    .line 17
    :goto_1
    iget-boolean v6, p0, LHf/d;->e:Z

    if-nez v6, :cond_5

    if-ge v5, v4, :cond_5

    .line 18
    invoke-virtual {p0}, LHf/d;->e()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v2, :cond_4

    const/16 v8, 0x3d

    if-eq v6, v8, :cond_3

    .line 19
    iget-object v7, p0, LHf/d;->g:[B

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p0, v5}, LHf/d;->d(I)I

    move-result v5

    .line 21
    iput-boolean v7, p0, LHf/d;->e:Z

    goto :goto_1

    .line 22
    :cond_4
    iput-boolean v7, p0, LHf/d;->e:Z

    goto :goto_1

    :cond_5
    if-nez v6, :cond_7

    if-ne v5, v4, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    sub-int/2addr p3, v5

    .line 24
    invoke-virtual {p0, p1, v3, v0, v5}, LHf/d;->b([BIII)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_8
    if-ne v3, p2, :cond_9

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    sub-int v2, v3, p2

    :goto_3
    return v2

    .line 25
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The input stream is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", buffer size: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
