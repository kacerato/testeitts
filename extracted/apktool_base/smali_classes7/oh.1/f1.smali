.class public Loh/f1;
.super Loh/E;
.source "SourceFile"


# instance fields
.field public d:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Loh/E;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Loh/f1;->d:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'encoded\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C()Loh/B;
    .locals 1

    invoke-virtual {p0}, Loh/f1;->S()V

    invoke-super {p0}, Loh/E;->C()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public D()Loh/B;
    .locals 1

    invoke-virtual {p0}, Loh/f1;->S()V

    invoke-super {p0}, Loh/E;->D()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public I(I)Loh/g;
    .locals 0

    invoke-virtual {p0}, Loh/f1;->S()V

    invoke-super {p0, p1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    return-object p1
.end method

.method public J()Ljava/util/Enumeration;
    .locals 2

    invoke-virtual {p0}, Loh/f1;->T()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Loh/e1;

    invoke-direct {v1, v0}, Loh/e1;-><init>([B)V

    return-object v1

    :cond_0
    invoke-super {p0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public M()Loh/c;
    .locals 1

    invoke-virtual {p0}, Loh/f1;->D()Loh/B;

    move-result-object v0

    check-cast v0, Loh/E;

    invoke-virtual {v0}, Loh/E;->M()Loh/c;

    move-result-object v0

    return-object v0
.end method

.method public N()Loh/k;
    .locals 1

    invoke-virtual {p0}, Loh/f1;->D()Loh/B;

    move-result-object v0

    check-cast v0, Loh/E;

    invoke-virtual {v0}, Loh/E;->N()Loh/k;

    move-result-object v0

    return-object v0
.end method

.method public O()Loh/y;
    .locals 1

    invoke-virtual {p0}, Loh/f1;->D()Loh/B;

    move-result-object v0

    check-cast v0, Loh/E;

    invoke-virtual {v0}, Loh/E;->O()Loh/y;

    move-result-object v0

    return-object v0
.end method

.method public P()Loh/G;
    .locals 1

    invoke-virtual {p0}, Loh/f1;->D()Loh/B;

    move-result-object v0

    check-cast v0, Loh/E;

    invoke-virtual {v0}, Loh/E;->P()Loh/G;

    move-result-object v0

    return-object v0
.end method

.method public Q()[Loh/g;
    .locals 1

    invoke-virtual {p0}, Loh/f1;->S()V

    invoke-super {p0}, Loh/E;->Q()[Loh/g;

    move-result-object v0

    return-object v0
.end method

.method public R()[Loh/g;
    .locals 1

    invoke-virtual {p0}, Loh/f1;->S()V

    invoke-super {p0}, Loh/E;->R()[Loh/g;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized S()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loh/f1;->d:[B

    if-eqz v0, :cond_0

    new-instance v0, Loh/r;

    iget-object v1, p0, Loh/f1;->d:[B

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Loh/r;-><init>([BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Loh/r;->n()Loh/h;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Loh/h;->j()[Loh/g;

    move-result-object v0

    iput-object v0, p0, Loh/E;->b:[Loh/g;

    const/4 v0, 0x0

    iput-object v0, p0, Loh/f1;->d:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed ASN.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized T()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loh/f1;->d:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Loh/f1;->S()V

    invoke-super {p0}, Loh/E;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Loh/g;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Loh/f1;->S()V

    invoke-super {p0}, Loh/E;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Loh/f1;->S()V

    invoke-super {p0}, Loh/E;->size()I

    move-result v0

    return v0
.end method

.method public v(Loh/A;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/f1;->T()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p1, p2, v1, v0}, Loh/A;->r(ZI[B)V

    return-void

    :cond_0
    invoke-super {p0}, Loh/E;->D()Loh/B;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Loh/B;->v(Loh/A;Z)V

    return-void
.end method

.method public y(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/f1;->T()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-static {p1, v0}, Loh/A;->i(ZI)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0}, Loh/E;->D()Loh/B;

    move-result-object v0

    invoke-virtual {v0, p1}, Loh/B;->y(Z)I

    move-result p1

    return p1
.end method
