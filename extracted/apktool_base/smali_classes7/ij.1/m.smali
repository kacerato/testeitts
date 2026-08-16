.class public Lij/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lij/m$c;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/Long;


# instance fields
.field public final a:Lij/k;

.field public final b:Lij/s$a;

.field public final c:[B

.field public final d:Lij/u;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/io/InputStream;

.field public i:Ljava/lang/Long;

.field public j:J

.field public k:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lij/m;->l:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lij/k;Lij/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lij/m;->j:J

    iput-object p1, p0, Lij/m;->a:Lij/k;

    iput-object p2, p0, Lij/m;->d:Lij/u;

    instance-of p1, p2, Lij/t;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lij/t;

    invoke-interface {p1}, Lij/t;->d()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lij/m;->k:Ljava/lang/Long;

    :cond_0
    const-string p1, "org.bouncycastle.debug.est"

    invoke-static {p1}, Lorg/bouncycastle/util/q;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "input"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "all"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lij/u;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lij/m;->h:Ljava/io/InputStream;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p1, Lij/m$c;

    invoke-interface {p2}, Lij/u;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lij/m$c;-><init>(Ljava/io/InputStream;Lij/m$a;)V

    goto :goto_0

    :goto_2
    new-instance p1, Lij/s$a;

    invoke-direct {p1}, Lij/s$a;-><init>()V

    iput-object p1, p0, Lij/m;->b:Lij/s$a;

    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lij/m;->c:[B

    invoke-virtual {p0}, Lij/m;->p()V

    return-void
.end method

.method public static synthetic a(Lij/m;)J
    .locals 2

    iget-wide v0, p0, Lij/m;->j:J

    return-wide v0
.end method

.method public static synthetic b(Lij/m;)J
    .locals 4

    iget-wide v0, p0, Lij/m;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lij/m;->j:J

    return-wide v0
.end method

.method public static synthetic c(Lij/m;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lij/m;->i:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lij/m;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lij/m;->d:Lij/u;

    invoke-interface {v0}, Lij/u;->close()V

    return-void
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lij/m;->k:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public f()Ljava/lang/Long;
    .locals 5

    iget-object v0, p0, Lij/m;->b:Lij/s$a;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lij/s$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content Length: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' invalid. "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lij/m;->b:Lij/s$a;

    invoke-virtual {v0, p1}, Lij/s$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lij/m;->b:Lij/s$a;

    invoke-virtual {v0, p1}, Lij/s$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i()Lij/s$a;
    .locals 1

    iget-object v0, p0, Lij/m;->b:Lij/s$a;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lij/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lij/m;->h:Ljava/io/InputStream;

    return-object v0
.end method

.method public l()Lij/k;
    .locals 1

    iget-object v0, p0, Lij/m;->a:Lij/k;

    return-object v0
.end method

.method public m()Lij/u;
    .locals 1

    iget-object v0, p0, Lij/m;->d:Lij/u;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lij/m;->f:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lij/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final p()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lij/m;->q(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lij/m;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lij/m;->q(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lij/m;->f:I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lij/m;->q(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lij/m;->g:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lij/m;->q(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lij/m;->b:Lij/s$a;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lij/s$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lij/m;->b:Lij/s$a;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lij/s$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lij/m;->i:Ljava/lang/Long;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lij/m;->f()Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :goto_2
    iget v3, p0, Lij/m;->f:I

    const/16 v4, 0xcc

    if-eq v3, v4, :cond_3

    const/16 v5, 0xca

    if-ne v3, v5, :cond_6

    :cond_3
    iget-object v5, p0, Lij/m;->i:Ljava/lang/Long;

    if-nez v5, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lij/m;->i:Ljava/lang/Long;

    goto :goto_3

    :cond_4
    if-ne v3, v4, :cond_6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gtz v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Got HTTP status 204 but Content-length > 0."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    iget-object v3, p0, Lij/m;->i:Ljava/lang/Long;

    if-eqz v3, :cond_e

    sget-object v4, Lij/m;->l:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_7

    new-instance v3, Lij/m$a;

    invoke-direct {v3, p0}, Lij/m$a;-><init>(Lij/m;)V

    iput-object v3, p0, Lij/m;->h:Ljava/io/InputStream;

    :cond_7
    iget-object v3, p0, Lij/m;->i:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-ltz v1, :cond_d

    iget-object v1, p0, Lij/m;->k:Ljava/lang/Long;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lij/m;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lij/m;->k:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content length longer than absolute read limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lij/m;->k:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lij/m;->i:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    iget-object v1, p0, Lij/m;->h:Ljava/io/InputStream;

    iget-object v2, p0, Lij/m;->k:Ljava/lang/Long;

    invoke-virtual {p0, v1, v2}, Lij/m;->r(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lij/m;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    new-instance v1, Lij/e;

    iget-object v2, p0, Lij/m;->h:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lij/e;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lij/m;->h:Ljava/io/InputStream;

    :cond_a
    const-string v1, "content-transfer-encoding"

    invoke-virtual {p0, v1}, Lij/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "base64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    new-instance v0, Lij/d;

    iget-object v1, p0, Lij/m;->h:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lij/d;-><init>(Ljava/io/InputStream;)V

    :goto_5
    iput-object v0, p0, Lij/m;->h:Ljava/io/InputStream;

    goto :goto_6

    :cond_b
    new-instance v0, Lij/d;

    iget-object v1, p0, Lij/m;->h:Ljava/io/InputStream;

    iget-object v2, p0, Lij/m;->i:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lij/d;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V

    goto :goto_5

    :cond_c
    :goto_6
    return-void

    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server returned negative content length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lij/m;->k:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No Content-length header."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q(C)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lij/m;->h:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    iget-object v3, p0, Lij/m;->c:[B

    add-int/lit8 v4, v1, 0x1

    int-to-byte v5, v2

    aput-byte v5, v3, v1

    array-length v1, v3

    if-ge v4, v1, :cond_3

    const/4 v1, -0x1

    if-eq v2, p1, :cond_1

    if-gt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v2, v1, :cond_2

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v0, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server sent line > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lij/m;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lij/m$b;

    invoke-direct {v0, p0, p1, p2}, Lij/m$b;-><init>(Lij/m;Ljava/io/InputStream;Ljava/lang/Long;)V

    return-object v0
.end method
