.class public Lorg/bouncycastle/tsp/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/h$a;
    }
.end annotation


# instance fields
.field public a:Lorg/bouncycastle/cms/O;

.field public b:Lorg/bouncycastle/cms/N0;

.field public c:Lorg/bouncycastle/tsp/j;

.field public d:Lorg/bouncycastle/tsp/h$a;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/O;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/h;->a:Lorg/bouncycastle/cms/O;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->j()Ljava/lang/String;

    move-result-object p1

    sget-object v0, LXh/t;->z2:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/tsp/h;->a:Lorg/bouncycastle/cms/O;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->l()Lorg/bouncycastle/cms/O0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O0;->b()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/cms/N0;

    iput-object p1, p0, Lorg/bouncycastle/tsp/h;->b:Lorg/bouncycastle/cms/N0;

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/tsp/h;->a:Lorg/bouncycastle/cms/O;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->i()Lorg/bouncycastle/cms/V;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1, v0}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    new-instance p1, Lorg/bouncycastle/tsp/j;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    invoke-static {v0}, Lci/j;->y(Ljava/lang/Object;)Lci/j;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/j;-><init>(Lci/j;)V

    iput-object p1, p0, Lorg/bouncycastle/tsp/h;->c:Lorg/bouncycastle/tsp/j;

    iget-object p1, p0, Lorg/bouncycastle/tsp/h;->b:Lorg/bouncycastle/cms/N0;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/N0;->n()Luh/b;

    move-result-object p1

    sget-object v0, LXh/t;->l3:Loh/x;

    invoke-virtual {p1, v0}, Luh/b;->d(Loh/x;)Luh/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Luh/a;->v()Loh/G;

    move-result-object p1

    invoke-virtual {p1, v0}, Loh/G;->H(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LDh/g;->v(Ljava/lang/Object;)LDh/g;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/tsp/h$a;

    invoke-virtual {p1}, LDh/g;->u()[LDh/c;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, LDh/c;->v(Ljava/lang/Object;)LDh/c;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/tsp/h$a;-><init>(LDh/c;)V

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/tsp/h;->d:Lorg/bouncycastle/tsp/h$a;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/tsp/h;->b:Lorg/bouncycastle/cms/N0;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/N0;->n()Luh/b;

    move-result-object p1

    sget-object v1, LXh/t;->n3:Loh/x;

    invoke-virtual {p1, v1}, Luh/b;->d(Loh/x;)Luh/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Luh/a;->v()Loh/G;

    move-result-object p1

    invoke-virtual {p1, v0}, Loh/G;->H(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LDh/h;->v(Ljava/lang/Object;)LDh/h;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/tsp/h$a;

    invoke-virtual {p1}, LDh/h;->u()[LDh/d;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, LDh/d;->w(Ljava/lang/Object;)LDh/d;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/tsp/h$a;-><init>(LDh/d;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "no signing certificate attribute found, time stamp invalid."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time-stamp token signed by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " signers, but it must contain just the TSA signature."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "ContentInfo object not for a time stamp."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Luh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/tsp/h;->h(Luh/o;)Lorg/bouncycastle/cms/O;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/h;-><init>(Lorg/bouncycastle/cms/O;)V

    return-void
.end method

.method public static h(Luh/o;)Lorg/bouncycastle/cms/O;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/O;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/O;-><init>(Luh/o;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TSP parsing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()Lorg/bouncycastle/util/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->a:Lorg/bouncycastle/cms/O;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/O;->c()Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/bouncycastle/util/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->a:Lorg/bouncycastle/cms/O;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/O;->d()Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/bouncycastle/util/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->a:Lorg/bouncycastle/cms/O;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/O;->e()Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->a:Lorg/bouncycastle/cms/O;

    const-string v1, "DL"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/O;->g(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->a:Lorg/bouncycastle/cms/O;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/O;->g(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public f()Lorg/bouncycastle/cms/K0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->b:Lorg/bouncycastle/cms/N0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/N0;->l()Lorg/bouncycastle/cms/K0;

    move-result-object v0

    return-object v0
.end method

.method public g()Luh/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->b:Lorg/bouncycastle/cms/N0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/N0;->n()Luh/b;

    move-result-object v0

    return-object v0
.end method

.method public i()Lorg/bouncycastle/tsp/j;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->c:Lorg/bouncycastle/tsp/j;

    return-object v0
.end method

.method public j()Luh/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->b:Lorg/bouncycastle/cms/N0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/N0;->q()Luh/b;

    move-result-object v0

    return-object v0
.end method

.method public k(Lorg/bouncycastle/cms/P0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->b:Lorg/bouncycastle/cms/N0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/N0;->w(Lorg/bouncycastle/cms/P0;)Z

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMS exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public l()Lorg/bouncycastle/cms/O;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->a:Lorg/bouncycastle/cms/O;

    return-object v0
.end method

.method public m(Lorg/bouncycastle/cms/P0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/TSPValidationException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/cms/P0;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/cms/P0;->a()Lli/h;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/h;->d:Lorg/bouncycastle/tsp/h$a;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/h$a;->b()Lhi/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/cms/P0;->c(Lhi/b;)LQk/p;

    move-result-object v1

    invoke-interface {v1}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Lli/h;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v2, p0, Lorg/bouncycastle/tsp/h;->d:Lorg/bouncycastle/tsp/h$a;

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/h$a;->a()[B

    move-result-object v2

    invoke-interface {v1}, LQk/p;->b()[B

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/tsp/h;->d:Lorg/bouncycastle/tsp/h$a;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/h$a;->c()Lhi/K;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Luh/z;

    invoke-virtual {v0}, Lli/h;->x()Lhi/q;

    move-result-object v2

    invoke-direct {v1, v2}, Luh/z;-><init>(Lhi/q;)V

    iget-object v2, p0, Lorg/bouncycastle/tsp/h;->d:Lorg/bouncycastle/tsp/h$a;

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/h$a;->c()Lhi/K;

    move-result-object v2

    invoke-virtual {v2}, Lhi/K;->z()Loh/s;

    move-result-object v2

    invoke-virtual {v1}, Luh/z;->x()Loh/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/tsp/h;->d:Lorg/bouncycastle/tsp/h$a;

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/h$a;->c()Lhi/K;

    move-result-object v2

    invoke-virtual {v2}, Lhi/K;->x()Lhi/F;

    move-result-object v2

    invoke-virtual {v2}, Lhi/F;->y()[Lhi/E;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lhi/E;->g()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lhi/E;->x()Loh/g;

    move-result-object v4

    invoke-static {v4}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v4

    invoke-virtual {v1}, Luh/z;->v()Lfi/d;

    move-result-object v5

    invoke-static {v5}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "certificate name does not match certID for signature. "

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "certificate serial number does not match certID for signature."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-static {v0}, Lorg/bouncycastle/tsp/c;->e(Lli/h;)V

    iget-object v1, p0, Lorg/bouncycastle/tsp/h;->c:Lorg/bouncycastle/tsp/j;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/j;->d()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lli/h;->u(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/tsp/h;->b:Lorg/bouncycastle/cms/N0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/N0;->w(Lorg/bouncycastle/cms/P0;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "signature not created by certificate."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "certificate not valid when time stamp created."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "certificate hash does not match certID hash."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem processing certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMS exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "verifier provider needs an associated certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
