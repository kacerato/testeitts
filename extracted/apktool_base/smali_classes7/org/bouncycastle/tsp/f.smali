.class public Lorg/bouncycastle/tsp/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lci/l;

.field public b:Lorg/bouncycastle/tsp/h;


# direct methods
.method public constructor <init>(Lci/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    invoke-virtual {p1}, Lci/l;->x()Luh/o;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/h;

    invoke-virtual {p1}, Lci/l;->x()Luh/o;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/h;-><init>(Luh/o;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/f;->b:Lorg/bouncycastle/tsp/h;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/tsp/f;->g(Ljava/io/InputStream;)Lci/l;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/f;-><init>(Lci/l;)V

    return-void
.end method

.method public constructor <init>(Loh/V0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    const-string v0, "malformed timestamp response: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lci/l;->u(Ljava/lang/Object;)Lci/l;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    new-instance v1, Lorg/bouncycastle/tsp/h;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/tsp/h;-><init>(Luh/o;)V

    iput-object v1, p0, Lorg/bouncycastle/tsp/f;->b:Lorg/bouncycastle/tsp/h;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/f;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static g(Ljava/io/InputStream;)Lci/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    const-string v0, "malformed timestamp response: "

    :try_start_0
    new-instance v1, Loh/r;

    invoke-direct {v1, p0}, Loh/r;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Loh/r;->k()Loh/B;

    move-result-object p0

    invoke-static {p0}, Lci/l;->u(Ljava/lang/Object;)Lci/l;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tsp/f;->b:Lorg/bouncycastle/tsp/h;

    if-nez v0, :cond_0

    new-instance v0, Loh/V0;

    iget-object v1, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    invoke-virtual {v1}, Lci/l;->v()Lth/L;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/V0;-><init>(Loh/g;)V

    :goto_0
    invoke-virtual {v0, p1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Loh/V0;

    iget-object v1, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    invoke-virtual {v1}, Lci/l;->v()Lth/L;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tsp/f;->b:Lorg/bouncycastle/tsp/h;

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/h;->l()Lorg/bouncycastle/cms/O;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/O;->s()Luh/o;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Loh/g;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Loh/V0;-><init>([Loh/g;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    goto :goto_0
.end method

.method public c()Lth/E;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    invoke-virtual {v0}, Lci/l;->v()Lth/L;

    move-result-object v0

    invoke-virtual {v0}, Lth/L;->u()Loh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lth/E;

    iget-object v1, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    invoke-virtual {v1}, Lci/l;->v()Lth/L;

    move-result-object v1

    invoke-virtual {v1}, Lth/L;->u()Loh/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lth/E;-><init>(Loh/c;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    invoke-virtual {v0}, Lci/l;->v()Lth/L;

    move-result-object v0

    invoke-virtual {v0}, Lth/L;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    invoke-virtual {v0}, Lci/l;->v()Lth/L;

    move-result-object v0

    invoke-virtual {v0}, Lth/L;->y()Lth/F;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/tsp/f;->a:Lci/l;

    invoke-virtual {v1}, Lci/l;->v()Lth/L;

    move-result-object v1

    invoke-virtual {v1}, Lth/L;->y()Lth/F;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lth/F;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lth/F;->x(I)Loh/Q;

    move-result-object v3

    invoke-virtual {v3}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lorg/bouncycastle/tsp/h;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/f;->b:Lorg/bouncycastle/tsp/h;

    return-object v0
.end method

.method public h(Lorg/bouncycastle/tsp/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/f;->f()Lorg/bouncycastle/tsp/h;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/d;->l()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/d;->l()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/j;->i()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "response contains wrong nonce value."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/f;->d()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/f;->d()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "time stamp token found in failed request."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/d;->j()[B

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/j;->h()[B

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/j;->g()Loh/x;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/d;->i()Loh/x;

    move-result-object v3

    invoke-virtual {v1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/h;->g()Luh/b;

    move-result-object v1

    sget-object v3, LXh/t;->l3:Loh/x;

    invoke-virtual {v1, v3}, Luh/b;->d(Loh/x;)Luh/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/h;->g()Luh/b;

    move-result-object v0

    sget-object v3, LXh/t;->n3:Loh/x;

    invoke-virtual {v0, v3}, Luh/b;->d(Loh/x;)Luh/a;

    move-result-object v0

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "no signing certificate attribute present."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/d;->m()Loh/x;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/d;->m()Loh/x;

    move-result-object p1

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/j;->j()Loh/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "TSA policy wrong for request."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "response for different message imprint algorithm."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "response for different message imprint digest."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/f;->d()I

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/f;->d()I

    move-result p1

    if-eq p1, v1, :cond_b

    :cond_a
    :goto_3
    return-void

    :cond_b
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "no time stamp token found and one expected."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
