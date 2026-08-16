.class public LSi/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/I;
.implements LBi/a0;


# static fields
.field public static final g:[B


# instance fields
.field public final a:LIi/i;

.field public final b:I

.field public final c:I

.field public d:[B

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, LSi/n;->g:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/i;

    const-string v1, "KMAC"

    invoke-static {v1}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, LIi/i;-><init>(I[B[B)V

    iput-object v0, p0, LSi/n;->a:LIi/i;

    iput p1, p0, LSi/n;->b:I

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, LSi/n;->c:I

    return-void
.end method

.method public static j([B)[B
    .locals 2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, LIi/b0;->c(J)[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LSi/n;->d:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, LSi/n;->e:Z

    invoke-virtual {p0}, LSi/n;->reset()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSi/n;->a:LIi/i;

    invoke-virtual {v1}, LIi/i;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, LSi/n;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LSi/n;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LSi/n;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, LIi/b0;->d(J)[B

    move-result-object v0

    iget-object v1, p0, LSi/n;->a:LIi/i;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, LIi/v;->update([BII)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "KMAC not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, LSi/n;->a:LIi/i;

    invoke-virtual {p0}, LSi/n;->d()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, LIi/Q;->e([BII)I

    move-result p1

    invoke-virtual {p0}, LSi/n;->reset()V

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, LSi/n;->c:I

    return v0
.end method

.method public e([BII)I
    .locals 4

    iget-boolean v0, p0, LSi/n;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LSi/n;->e:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, p3, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, LIi/b0;->d(J)[B

    move-result-object v0

    iget-object v1, p0, LSi/n;->a:LIi/i;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, LIi/v;->update([BII)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "KMAC not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, LSi/n;->a:LIi/i;

    invoke-virtual {v0, p1, p2, p3}, LIi/Q;->e([BII)I

    move-result p1

    invoke-virtual {p0}, LSi/n;->reset()V

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, LSi/n;->c:I

    return v0
.end method

.method public final g([BI)V
    .locals 3

    int-to-long v0, p2

    invoke-static {v0, v1}, LIi/b0;->c(J)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, LSi/n;->update([BII)V

    invoke-static {p1}, LSi/n;->j([B)[B

    move-result-object p1

    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, LSi/n;->update([BII)V

    array-length v0, v0

    array-length p1, p1

    add-int/2addr v0, p1

    rem-int/2addr v0, p2

    sub-int p1, p2, v0

    if-lez p1, :cond_1

    if-eq p1, p2, :cond_1

    :goto_0
    sget-object p2, LSi/n;->g:[B

    array-length v0, p2

    if-le p1, v0, :cond_0

    array-length v0, p2

    invoke-virtual {p0, p2, v2, v0}, LSi/n;->update([BII)V

    array-length p2, p2

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, v2, p1}, LSi/n;->update([BII)V

    :cond_1
    return-void
.end method

.method public h([BII)I
    .locals 4

    iget-boolean v0, p0, LSi/n;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LSi/n;->e:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, LIi/b0;->d(J)[B

    move-result-object v0

    iget-object v1, p0, LSi/n;->a:LIi/i;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, LIi/v;->update([BII)V

    iput-boolean v3, p0, LSi/n;->f:Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "KMAC not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, LSi/n;->a:LIi/i;

    invoke-virtual {v0, p1, p2, p3}, LIi/i;->h([BII)I

    move-result p1

    return p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LSi/n;->a:LIi/i;

    invoke-virtual {v0}, LIi/v;->i()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, LSi/n;->a:LIi/i;

    invoke-virtual {v0}, LIi/i;->reset()V

    iget-object v0, p0, LSi/n;->d:[B

    if-eqz v0, :cond_1

    iget v1, p0, LSi/n;->b:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa8

    :goto_0
    invoke-virtual {p0, v0, v1}, LSi/n;->g([BI)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x88

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LSi/n;->f:Z

    return-void
.end method

.method public update(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LSi/n;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LSi/n;->a:LIi/i;

    invoke-virtual {v0, p1}, LIi/v;->update(B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "KMAC not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, LSi/n;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LSi/n;->a:LIi/i;

    invoke-virtual {v0, p1, p2, p3}, LIi/v;->update([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "KMAC not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
