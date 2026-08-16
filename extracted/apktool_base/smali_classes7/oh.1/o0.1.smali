.class public Loh/o0;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final b:Loh/I;

.field public final c:Z

.field public d:Z

.field public e:I

.field public f:Loh/d;

.field public g:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Loh/I;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Loh/o0;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Loh/o0;->e:I

    iput-object p1, p0, Loh/o0;->b:Loh/I;

    iput-boolean p2, p0, Loh/o0;->c:Z

    return-void
.end method


# virtual methods
.method public final c()Loh/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/o0;->b:Loh/I;

    invoke-virtual {v0}, Loh/I;->j()Loh/g;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Loh/o0;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Loh/o0;->e:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Loh/o0;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    instance-of v1, v0, Loh/d;

    if-eqz v1, :cond_4

    iget v1, p0, Loh/o0;->e:I

    if-nez v1, :cond_3

    check-cast v0, Loh/d;

    return-object v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "only the last nested bitstring can have padding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown object encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Loh/o0;->e:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh/o0;->g:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Loh/o0;->d:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Loh/o0;->c()Loh/d;

    move-result-object v0

    iput-object v0, p0, Loh/o0;->f:Loh/d;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Loh/o0;->d:Z

    :cond_2
    invoke-interface {v0}, Loh/d;->i()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Loh/o0;->g:Ljava/io/InputStream;

    :cond_3
    iget-object v0, p0, Loh/o0;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Loh/o0;->f:Loh/d;

    invoke-interface {v0}, Loh/d;->n()I

    move-result v0

    iput v0, p0, Loh/o0;->e:I

    invoke-virtual {p0}, Loh/o0;->c()Loh/d;

    move-result-object v0

    iput-object v0, p0, Loh/o0;->f:Loh/d;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Loh/o0;->g:Ljava/io/InputStream;

    return v1
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Loh/o0;->g:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Loh/o0;->d:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Loh/o0;->c()Loh/d;

    move-result-object v0

    iput-object v0, p0, Loh/o0;->f:Loh/d;

    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-boolean v1, p0, Loh/o0;->d:Z

    :cond_2
    invoke-interface {v0}, Loh/d;->i()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Loh/o0;->g:Ljava/io/InputStream;

    :cond_3
    iget-object v0, p0, Loh/o0;->g:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_4

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_3

    return v1

    :cond_4
    iget-object v0, p0, Loh/o0;->f:Loh/d;

    invoke-interface {v0}, Loh/d;->n()I

    move-result v0

    iput v0, p0, Loh/o0;->e:I

    invoke-virtual {p0}, Loh/o0;->c()Loh/d;

    move-result-object v0

    iput-object v0, p0, Loh/o0;->f:Loh/d;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Loh/o0;->g:Ljava/io/InputStream;

    const/4 p1, 0x1

    if-ge v1, p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    return v2
.end method
