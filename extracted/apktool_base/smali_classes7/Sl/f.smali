.class public LSl/f;
.super LSl/d;
.source "SourceFile"


# instance fields
.field public d:LYl/i;

.field public e:LYl/e;

.field public f:LYl/e;


# direct methods
.method public constructor <init>(LYl/e;LYl/i;LYl/e;LSl/e;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p4}, LSl/d;-><init>(ZLSl/e;)V

    iput-object p1, p0, LSl/f;->f:LYl/e;

    iput-object p2, p0, LSl/f;->d:LYl/i;

    iput-object p3, p0, LSl/f;->e:LYl/e;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LSl/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p2}, LSl/d;-><init>(ZLSl/e;)V

    iget v1, p2, LSl/e;->A:I

    if-ne v1, v0, :cond_1

    iget v3, p2, LSl/e;->b:I

    iget v4, p2, LSl/e;->e:I

    iget v5, p2, LSl/e;->f:I

    iget v6, p2, LSl/e;->g:I

    iget-boolean v0, p2, LSl/e;->z:Z

    if-eqz v0, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v7, v0

    :goto_0
    iget p2, p2, LSl/e;->c:I

    invoke-static {p1, v3, p2}, LYl/e;->s(Ljava/io/InputStream;II)LYl/e;

    move-result-object p2

    iput-object p2, p0, LSl/f;->f:LYl/e;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, LYl/j;->g(Ljava/io/InputStream;IIIII)LYl/j;

    move-result-object p1

    iput-object p1, p0, LSl/f;->d:LYl/i;

    goto :goto_2

    :cond_1
    iget v0, p2, LSl/e;->b:I

    iget v1, p2, LSl/e;->c:I

    invoke-static {p1, v0, v1}, LYl/e;->s(Ljava/io/InputStream;II)LYl/e;

    move-result-object v0

    iput-object v0, p0, LSl/f;->f:LYl/e;

    iget v0, p2, LSl/e;->b:I

    invoke-static {p1, v0}, LYl/e;->v(Ljava/io/InputStream;I)LYl/e;

    move-result-object p1

    iget-boolean p2, p2, LSl/e;->y:Z

    if-eqz p2, :cond_2

    new-instance p2, LYl/l;

    invoke-direct {p2, p1}, LYl/l;-><init>(LYl/e;)V

    goto :goto_1

    :cond_2
    new-instance p2, LYl/d;

    invoke-direct {p2, p1}, LYl/d;-><init>(LYl/e;)V

    :goto_1
    iput-object p2, p0, LSl/f;->d:LYl/i;

    :goto_2
    invoke-virtual {p0}, LSl/f;->e()V

    return-void
.end method

.method public constructor <init>([BLSl/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, LSl/f;-><init>(Ljava/io/InputStream;LSl/e;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    iget-object v0, p0, LSl/d;->c:LSl/e;

    iget-boolean v0, v0, LSl/e;->z:Z

    if-eqz v0, :cond_0

    new-instance v0, LYl/e;

    iget-object v1, p0, LSl/d;->c:LSl/e;

    iget v1, v1, LSl/e;->b:I

    invoke-direct {v0, v1}, LYl/e;-><init>(I)V

    iput-object v0, p0, LSl/f;->e:LYl/e;

    iget-object v0, v0, LYl/e;->a:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LSl/f;->d:LYl/i;

    invoke-interface {v0}, LYl/i;->b()LYl/e;

    move-result-object v0

    invoke-virtual {v0}, LYl/e;->x()LYl/e;

    move-result-object v0

    iput-object v0, p0, LSl/f;->e:LYl/e;

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, LSl/f;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, LSl/f;

    iget-object v2, p0, LSl/d;->c:LSl/e;

    if-nez v2, :cond_3

    iget-object v2, p1, LSl/d;->c:LSl/e;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, LSl/d;->c:LSl/e;

    invoke-virtual {v2, v3}, LSl/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, LSl/f;->d:LYl/i;

    if-nez v2, :cond_5

    iget-object v2, p1, LSl/f;->d:LYl/i;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, LSl/f;->d:LYl/i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, LSl/f;->f:LYl/e;

    iget-object p1, p1, LSl/f;->f:LYl/e;

    invoke-virtual {v2, p1}, LYl/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public f(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LSl/f;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getEncoded()[B
    .locals 5

    iget-object v0, p0, LSl/f;->f:LYl/e;

    iget-object v1, p0, LSl/d;->c:LSl/e;

    iget v1, v1, LSl/e;->c:I

    invoke-virtual {v0, v1}, LYl/e;->U(I)[B

    move-result-object v0

    iget-object v1, p0, LSl/f;->d:LYl/i;

    instance-of v2, v1, LYl/j;

    if-eqz v2, :cond_0

    check-cast v1, LYl/j;

    invoke-virtual {v1}, LYl/j;->j()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, LYl/i;->b()LYl/e;

    move-result-object v1

    invoke-virtual {v1}, LYl/e;->W()[B

    move-result-object v1

    :goto_0
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, LSl/d;->c:LSl/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LSl/e;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, LSl/f;->d:LYl/i;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v2, p0, LSl/f;->f:LYl/e;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method
