.class public Lzg/m;
.super Lzg/h;
.source "SourceFile"


# instance fields
.field public b:Ljava/io/RandomAccessFile;

.field public c:Ljava/io/File;

.field public d:I

.field public e:Z

.field public f:I

.field public g:[B


# direct methods
.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lzg/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzg/m;->f:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lzg/m;->g:[B

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, LCg/f;->READ:LCg/f;

    invoke-virtual {v1}, LCg/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lzg/m;->b:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lzg/m;->c:Ljava/io/File;

    iput-boolean p2, p0, Lzg/m;->e:Z

    iput p3, p0, Lzg/m;->d:I

    if-eqz p2, :cond_0

    iput p3, p0, Lzg/m;->f:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(LBg/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lzg/m;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lzg/m;->f:I

    invoke-virtual {p1}, LBg/j;->O()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, LBg/j;->O()I

    move-result v0

    invoke-virtual {p0, v0}, Lzg/m;->c(I)V

    invoke-virtual {p1}, LBg/j;->O()I

    move-result v0

    iput v0, p0, Lzg/m;->f:I

    :cond_0
    iget-object v0, p0, Lzg/m;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, LBg/j;->T()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public b(I)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lzg/m;->d:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lzg/m;->c:Ljava/io/File;

    return-object p1

    :cond_0
    iget-object v0, p0, Lzg/m;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-lt p1, v1, :cond_1

    const-string v1, ".z"

    goto :goto_0

    :cond_1
    const-string v1, ".z0"

    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lzg/m;->b(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzg/m;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, LCg/f;->READ:LCg/f;

    invoke-virtual {v1}, LCg/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lzg/m;->b:Ljava/io/RandomAccessFile;

    return-void

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip split file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzg/m;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzg/m;->g:[B

    invoke-virtual {p0, v0}, Lzg/m;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lzg/m;->g:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lzg/m;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lzg/m;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2

    if-ne p2, p3, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 5
    :cond_0
    iget-boolean v0, p0, Lzg/m;->e:Z

    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lzg/m;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lzg/m;->c(I)V

    .line 7
    iget v0, p0, Lzg/m;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzg/m;->f:I

    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 8
    :cond_1
    iget-object v0, p0, Lzg/m;->b:Ljava/io/RandomAccessFile;

    sub-int/2addr p3, p2

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    add-int/2addr p2, p1

    :cond_2
    return p2
.end method
