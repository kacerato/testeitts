.class public LSl/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LYl/i;

.field public b:LYl/i;

.field public c:LYl/e;

.field public d:LSl/l;


# direct methods
.method public constructor <init>(LYl/i;LYl/i;LYl/e;LSl/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSl/o$a;->a:LYl/i;

    iput-object p2, p0, LSl/o$a;->b:LYl/i;

    iput-object p3, p0, LSl/o$a;->c:LYl/e;

    iput-object p4, p0, LSl/o$a;->d:LSl/l;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LSl/l;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v6, p2, LSl/l;->d:I

    iget v7, p2, LSl/l;->e:I

    iget v8, p2, LSl/l;->g:I

    iget v9, p2, LSl/l;->h:I

    iget v10, p2, LSl/l;->i:I

    iget-boolean v0, p2, LSl/l;->u:Z

    iput-object p2, p0, LSl/o$a;->d:LSl/l;

    iget v1, p2, LSl/l;->x:I

    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    add-int/lit8 v4, v10, 0x1

    move-object v0, p1

    move v1, v6

    move v2, v8

    move v3, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, LYl/j;->g(Ljava/io/InputStream;IIIII)LYl/j;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LSl/o$a;->a:LYl/i;

    goto :goto_1

    :cond_0
    invoke-static {p1, v6}, LYl/e;->v(Ljava/io/InputStream;I)LYl/e;

    move-result-object v1

    if-eqz v0, :cond_1

    new-instance v0, LYl/l;

    invoke-direct {v0, v1}, LYl/l;-><init>(LYl/e;)V

    goto :goto_0

    :cond_1
    new-instance v0, LYl/d;

    invoke-direct {v0, v1}, LYl/d;-><init>(LYl/e;)V

    goto :goto_0

    :goto_1
    iget v0, p2, LSl/l;->s:I

    if-nez v0, :cond_3

    invoke-static {p1, v6, v7}, LYl/e;->s(Ljava/io/InputStream;II)LYl/e;

    move-result-object p2

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p2, LYl/e;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget v2, v1, v0

    div-int/lit8 v3, v7, 0x2

    sub-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iput-object p2, p0, LSl/o$a;->b:LYl/i;

    goto :goto_4

    :cond_3
    iget p2, p2, LSl/l;->x:I

    if-ne p2, v11, :cond_4

    add-int/lit8 v4, v10, 0x1

    move-object v0, p1

    move v1, v6

    move v2, v8

    move v3, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, LYl/j;->g(Ljava/io/InputStream;IIIII)LYl/j;

    move-result-object p2

    goto :goto_3

    :cond_4
    invoke-static {p1, v6}, LYl/e;->v(Ljava/io/InputStream;I)LYl/e;

    move-result-object p2

    goto :goto_3

    :goto_4
    if-eqz p3, :cond_5

    invoke-static {p1, v6, v7}, LYl/e;->s(Ljava/io/InputStream;II)LYl/e;

    move-result-object p1

    iput-object p1, p0, LSl/o$a;->c:LYl/e;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSl/o$a;->d:LSl/l;

    iget v0, v0, LSl/l;->e:I

    iget-object v1, p0, LSl/o$a;->a:LYl/i;

    invoke-virtual {p0, v1}, LSl/o$a;->b(LYl/i;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, LSl/o$a;->d:LSl/l;

    iget v1, v1, LSl/l;->s:I

    if-nez v1, :cond_1

    iget-object v1, p0, LSl/o$a;->b:LYl/i;

    invoke-interface {v1}, LYl/i;->b()LYl/e;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, LYl/e;->a:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v4, v3, v2

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, LYl/e;->U(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, LSl/o$a;->b:LYl/i;

    invoke-virtual {p0, v1}, LSl/o$a;->b(LYl/i;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    if-eqz p2, :cond_2

    iget-object p2, p0, LSl/o$a;->c:LYl/e;

    invoke-virtual {p2, v0}, LYl/e;->U(I)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    return-void
.end method

.method public final b(LYl/i;)[B
    .locals 1

    instance-of v0, p1, LYl/j;

    if-eqz v0, :cond_0

    check-cast p1, LYl/j;

    invoke-virtual {p1}, LYl/j;->j()[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, LYl/i;->b()LYl/e;

    move-result-object p1

    invoke-virtual {p1}, LYl/e;->W()[B

    move-result-object p1

    return-object p1
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
    instance-of v2, p1, LSl/o$a;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, LSl/o$a;

    iget-object v2, p0, LSl/o$a;->a:LYl/i;

    if-nez v2, :cond_3

    iget-object v2, p1, LSl/o$a;->a:LYl/i;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, LSl/o$a;->a:LYl/i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, LSl/o$a;->b:LYl/i;

    if-nez v2, :cond_5

    iget-object v2, p1, LSl/o$a;->b:LYl/i;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, LSl/o$a;->b:LYl/i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, LSl/o$a;->c:LYl/e;

    if-nez v2, :cond_7

    iget-object v2, p1, LSl/o$a;->c:LYl/e;

    if-eqz v2, :cond_8

    return v1

    :cond_7
    iget-object v3, p1, LSl/o$a;->c:LYl/e;

    invoke-virtual {v2, v3}, LYl/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, LSl/o$a;->d:LSl/l;

    iget-object p1, p1, LSl/o$a;->d:LSl/l;

    if-nez v2, :cond_9

    if-eqz p1, :cond_a

    return v1

    :cond_9
    invoke-virtual {v2, p1}, LSl/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, LSl/o$a;->a:LYl/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, LSl/o$a;->b:LYl/i;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, LSl/o$a;->c:LYl/e;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v2, p0, LSl/o$a;->d:LSl/l;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, LSl/l;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method
