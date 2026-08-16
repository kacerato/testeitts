.class public LSl/g;
.super LSl/d;
.source "SourceFile"


# instance fields
.field public d:LYl/e;


# direct methods
.method public constructor <init>(LYl/e;LSl/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p2}, LSl/d;-><init>(ZLSl/e;)V

    iput-object p1, p0, LSl/g;->d:LYl/e;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LSl/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p2}, LSl/d;-><init>(ZLSl/e;)V

    iget v0, p2, LSl/e;->b:I

    iget p2, p2, LSl/e;->c:I

    invoke-static {p1, v0, p2}, LYl/e;->s(Ljava/io/InputStream;II)LYl/e;

    move-result-object p1

    iput-object p1, p0, LSl/g;->d:LYl/e;

    return-void
.end method

.method public constructor <init>([BLSl/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p2}, LSl/d;-><init>(ZLSl/e;)V

    iget v0, p2, LSl/e;->b:I

    iget p2, p2, LSl/e;->c:I

    invoke-static {p1, v0, p2}, LYl/e;->t([BII)LYl/e;

    move-result-object p1

    iput-object p1, p0, LSl/g;->d:LYl/e;

    return-void
.end method


# virtual methods
.method public e(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LSl/g;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

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
    instance-of v2, p1, LSl/g;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, LSl/g;

    iget-object v2, p0, LSl/g;->d:LYl/e;

    if-nez v2, :cond_3

    iget-object v2, p1, LSl/g;->d:LYl/e;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, LSl/g;->d:LYl/e;

    invoke-virtual {v2, v3}, LYl/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, LSl/d;->c:LSl/e;

    iget-object p1, p1, LSl/d;->c:LSl/e;

    if-nez v2, :cond_5

    if-eqz p1, :cond_6

    return v1

    :cond_5
    invoke-virtual {v2, p1}, LSl/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, LSl/g;->d:LYl/e;

    iget-object v1, p0, LSl/d;->c:LSl/e;

    iget v1, v1, LSl/e;->c:I

    invoke-virtual {v0, v1}, LYl/e;->U(I)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, LSl/g;->d:LYl/e;

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

    iget-object v2, p0, LSl/d;->c:LSl/e;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, LSl/e;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
