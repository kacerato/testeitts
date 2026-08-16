.class public Lli/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x4b244cad1L


# instance fields
.field public transient b:Lhi/r;

.field public transient c:Z

.field public transient d:Lhi/C;

.field public transient e:Lhi/F;


# direct methods
.method public constructor <init>(Lhi/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lli/g;->l(Lhi/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lli/g;->p(Ljava/io/InputStream;)Lhi/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lli/g;-><init>(Lhi/r;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lli/g;->p(Ljava/io/InputStream;)Lhi/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lli/g;-><init>(Lhi/r;)V

    return-void
.end method

.method public static n(Lhi/C;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lhi/B;->q:Loh/x;

    invoke-virtual {p0, v1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lhi/B;->A()Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/L;->y(Ljava/lang/Object;)Lhi/L;

    move-result-object p0

    invoke-virtual {p0}, Lhi/L;->B()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static p(Ljava/io/InputStream;)Lhi/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed data: "

    :try_start_0
    new-instance v1, Loh/r;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Loh/r;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {v1}, Loh/r;->k()Loh/B;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v1, "no content found"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private q(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lli/g;->l(Lhi/r;)V

    return-void
.end method

.method private s(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lli/g;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lli/g;->d:Lhi/C;

    invoke-static {v0}, Lli/c;->l(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lli/g;->d:Lhi/C;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lli/g;->d:Lhi/C;

    invoke-static {v0}, Lli/c;->m(Lhi/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Lhi/C;
    .locals 1

    iget-object v0, p0, Lli/g;->d:Lhi/C;

    return-object v0
.end method

.method public e()Lfi/d;
    .locals 1

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v0}, Lhi/r;->x()Lfi/d;

    move-result-object v0

    invoke-static {v0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lli/g;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lli/g;

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    iget-object p1, p1, Lli/g;->b:Lhi/r;

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v0}, Lhi/r;->y()Lhi/o0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lli/g;->d:Lhi/C;

    invoke-static {v0}, Lli/c;->n(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/math/BigInteger;)Lli/f;
    .locals 4

    iget-object v0, p0, Lli/g;->e:Lhi/F;

    iget-object v1, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v1}, Lhi/r;->z()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhi/i0$b;

    invoke-virtual {v2}, Lhi/i0$b;->y()Loh/s;

    move-result-object v3

    invoke-virtual {v3, p1}, Loh/s;->L(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Lli/f;

    iget-boolean v1, p0, Lli/g;->c:Z

    invoke-direct {p1, v2, v1, v0}, Lli/f;-><init>(Lhi/i0$b;ZLhi/F;)V

    return-object p1

    :cond_1
    iget-boolean v3, p0, Lli/g;->c:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lhi/i0$b;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v2

    sget-object v3, Lhi/B;->r:Loh/x;

    invoke-virtual {v2, v3}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lhi/B;->A()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v0}, Lhi/r;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/Collection;
    .locals 6

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v0}, Lhi/r;->A()[Lhi/i0$b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lli/g;->e:Lhi/F;

    iget-object v2, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v2}, Lhi/r;->z()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhi/i0$b;

    new-instance v4, Lli/f;

    iget-boolean v5, p0, Lli/g;->c:Z

    invoke-direct {v4, v3, v5, v0}, Lli/f;-><init>(Lhi/i0$b;ZLhi/F;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lli/f;->a()Lhi/F;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public j()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v0}, Lhi/r;->E()Lhi/o0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lli/g;->d:Lhi/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(Lhi/r;)V
    .locals 2

    iput-object p1, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {p1}, Lhi/r;->D()Lhi/i0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i0;->u()Lhi/C;

    move-result-object v0

    iput-object v0, p0, Lli/g;->d:Lhi/C;

    invoke-static {v0}, Lli/g;->n(Lhi/C;)Z

    move-result v0

    iput-boolean v0, p0, Lli/g;->c:Z

    new-instance v0, Lhi/F;

    new-instance v1, Lhi/E;

    invoke-virtual {p1}, Lhi/r;->x()Lfi/d;

    move-result-object p1

    invoke-direct {v1, p1}, Lhi/E;-><init>(Lfi/d;)V

    invoke-direct {v0, v1}, Lhi/F;-><init>(Lhi/E;)V

    iput-object v0, p0, Lli/g;->e:Lhi/F;

    return-void
.end method

.method public m(LQk/h;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v0}, Lhi/r;->D()Lhi/i0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i0;->u()Lhi/C;

    move-result-object v1

    invoke-static {v1}, Lhi/c;->u(Lhi/C;)Lhi/c;

    move-result-object v1

    invoke-virtual {v0}, Lhi/i0;->u()Lhi/C;

    move-result-object v2

    invoke-static {v2}, Lhi/d;->u(Lhi/C;)Lhi/d;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1}, Lhi/c;->r()Loh/B;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    invoke-interface {p1, v1}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1

    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lhi/i0;->r()Loh/B;

    move-result-object v3

    invoke-static {v3}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v3

    new-instance v4, Loh/h;

    invoke-direct {v4}, Loh/h;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    instance-of v6, v6, Loh/s;

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-virtual {v4, v6}, Loh/h;->a(Loh/g;)V

    const/4 v6, 0x2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move v6, v7

    :goto_0
    invoke-virtual {v3}, Loh/E;->size()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    invoke-virtual {v3, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v8

    invoke-virtual {v4, v8}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lhi/i0;->u()Lhi/C;

    move-result-object v0

    invoke-static {v5, v0}, Lli/c;->r(ILhi/C;)Loh/M;

    move-result-object v0

    invoke-virtual {v4, v0}, Loh/h;->a(Loh/g;)V

    new-instance v0, Loh/G0;

    invoke-direct {v0, v4}, Loh/G0;-><init>(Loh/h;)V

    const-string v3, "DER"

    invoke-virtual {v0, v1, v3}, Loh/B;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lhi/d;->x()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-interface {p1, v0}, LQk/g;->verify([B)Z

    move-result p1

    return p1

    :goto_1
    new-instance v0, Lorg/bouncycastle/cert/CertException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public o(LQk/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v0}, Lhi/r;->D()Lhi/i0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i0;->B()Lhi/b;

    move-result-object v1

    iget-object v2, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v2}, Lhi/r;->C()Lhi/b;

    move-result-object v2

    invoke-static {v1, v2}, Lli/c;->o(Lhi/b;Lhi/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lhi/i0;->B()Lhi/b;

    move-result-object v1

    invoke-interface {p1, v1}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1

    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v0, v1, v2}, Loh/v;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    invoke-virtual {v0}, Lhi/r;->B()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-interface {p1, v0}, LQk/g;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/CertException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/CertException;

    const-string v0, "signature invalid - algorithm identifier mismatch"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()Lhi/r;
    .locals 1

    iget-object v0, p0, Lli/g;->b:Lhi/r;

    return-object v0
.end method
