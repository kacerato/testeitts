.class public Loh/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loh/N;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Loh/I;


# direct methods
.method public constructor <init>(IILoh/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Loh/m0;->b:I

    iput p2, p0, Loh/m0;->c:I

    iput-object p3, p0, Loh/m0;->d:Loh/I;

    return-void
.end method


# virtual methods
.method public b()Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/m0;->d:Loh/I;

    invoke-virtual {v0}, Loh/I;->j()Loh/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Loh/B;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/m0;->d:Loh/I;

    iget v1, p0, Loh/m0;->b:I

    iget v2, p0, Loh/m0;->c:I

    invoke-virtual {v0, v1, v2}, Loh/I;->c(II)Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public d(ZI)Loh/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Loh/m0;->d:Loh/I;

    invoke-virtual {p1, p2}, Loh/I;->h(I)Loh/g;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Loh/m0;->d:Loh/I;

    invoke-virtual {p1, p2}, Loh/I;->e(I)Loh/g;

    move-result-object p1

    return-object p1
.end method

.method public g()I
    .locals 1

    iget v0, p0, Loh/m0;->c:I

    return v0
.end method

.method public h(II)Loh/N;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/m0;

    iget-object v1, p0, Loh/m0;->d:Loh/I;

    invoke-direct {v0, p1, p2, v1}, Loh/m0;-><init>(IILoh/I;)V

    return-object v0
.end method

.method public j()Loh/N;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/m0;->d:Loh/I;

    invoke-virtual {v0}, Loh/I;->i()Loh/N;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Z
    .locals 1

    iget v0, p0, Loh/m0;->b:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l()I
    .locals 1

    iget v0, p0, Loh/m0;->b:I

    return v0
.end method

.method public m(II)Z
    .locals 1

    iget v0, p0, Loh/m0;->b:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Loh/m0;->c:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Loh/m0;->b:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(I)Z
    .locals 2

    iget v0, p0, Loh/m0;->b:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget v0, p0, Loh/m0;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r()Loh/B;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Loh/m0;->c()Loh/B;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
