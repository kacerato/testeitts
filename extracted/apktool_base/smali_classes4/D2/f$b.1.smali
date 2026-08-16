.class public LD2/f$b;
.super LD2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, LD2/f$b;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, LD2/f;-><init>()V

    .line 3
    iput-object p1, p0, LD2/f$b;->a:[B

    .line 4
    iput p2, p0, LD2/f$b;->b:I

    .line 5
    iput p3, p0, LD2/f$b;->c:I

    return-void
.end method


# virtual methods
.method public g(Ljava/io/OutputStream;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LD2/f$b;->a:[B

    iget v1, p0, LD2/f$b;->b:I

    iget v2, p0, LD2/f$b;->c:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    iget p1, p0, LD2/f$b;->c:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public j(LB2/q;)LB2/p;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LD2/f$b;->a:[B

    iget v1, p0, LD2/f$b;->b:I

    iget v2, p0, LD2/f$b;->c:I

    invoke-interface {p1, v0, v1, v2}, LB2/q;->k([BII)LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 1

    iget v0, p0, LD2/f$b;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LD2/f$b;->m()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, LD2/f$b;->a:[B

    iget v2, p0, LD2/f$b;->b:I

    iget v3, p0, LD2/f$b;->c:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public n(LD2/d;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LD2/C;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LD2/d<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LD2/f$b;->a:[B

    iget v1, p0, LD2/f$b;->b:I

    iget v2, p0, LD2/f$b;->c:I

    invoke-interface {p1, v0, v1, v2}, LD2/d;->a([BII)Z

    invoke-interface {p1}, LD2/d;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o()[B
    .locals 3

    iget-object v0, p0, LD2/f$b;->a:[B

    iget v1, p0, LD2/f$b;->b:I

    iget v2, p0, LD2/f$b;->c:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public p()J
    .locals 2

    iget v0, p0, LD2/f$b;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public q()Lw2/C;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/C<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget v0, p0, LD2/f$b;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v0

    return-object v0
.end method

.method public r(JJ)LD2/f;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "offset (%s) may not be negative"

    invoke-static {v2, v5, p1, p2}, Lw2/H;->p(ZLjava/lang/String;J)V

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    move v3, v4

    :cond_1
    const-string v0, "length (%s) may not be negative"

    invoke-static {v3, v0, p3, p4}, Lw2/H;->p(ZLjava/lang/String;J)V

    iget v0, p0, LD2/f$b;->c:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget v0, p0, LD2/f$b;->c:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    iget v0, p0, LD2/f$b;->b:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    new-instance p1, LD2/f$b;

    iget-object p2, p0, LD2/f$b;->a:[B

    long-to-int p3, p3

    invoke-direct {p1, p2, v0, p3}, LD2/f$b;-><init>([BII)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->a()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, LD2/f$b;->a:[B

    iget v2, p0, LD2/f$b;->b:I

    iget v3, p0, LD2/f$b;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding;->m([BII)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lw2/c;->k(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ByteSource.wrap("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
