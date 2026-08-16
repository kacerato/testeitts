.class public Lli/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:J = 0x4b244cad1L


# instance fields
.field public transient b:Lhi/q;

.field public transient c:Lhi/C;


# direct methods
.method public constructor <init>(Lhi/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lli/h;->q(Lhi/q;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lli/h;->v([B)Lhi/q;

    move-result-object p1

    invoke-direct {p0, p1}, Lli/h;-><init>(Lhi/q;)V

    return-void
.end method

.method public static v([B)Lhi/q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lli/c;->p([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

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

.method private w(Ljava/io/ObjectInputStream;)V
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

    invoke-static {p1}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lli/h;->q(Lhi/q;)V

    return-void
.end method

.method private y(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lli/h;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lli/h;->c:Lhi/C;

    invoke-static {v0}, Lli/c;->l(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lli/h;->c:Lhi/C;

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

    iget-object v0, p0, Lli/h;->c:Lhi/C;

    invoke-static {v0}, Lli/c;->m(Lhi/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Lhi/C;
    .locals 1

    iget-object v0, p0, Lli/h;->c:Lhi/C;

    return-object v0
.end method

.method public e()Lfi/d;
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->x()Lfi/d;

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
    instance-of v0, p1, Lli/h;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lli/h;

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    iget-object p1, p1, Lli/h;->b:Lhi/q;

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lli/h;->c:Lhi/C;

    invoke-static {v0}, Lli/c;->n(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->u()Lhi/o0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

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

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->B()Lhi/o0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Loh/v;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->y()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->z()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    return-object v0
.end method

.method public k()Lhi/b;
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->A()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public l()Lfi/d;
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->C()Lfi/d;

    move-result-object v0

    invoke-static {v0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public m()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->D()Lhi/h0;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->G()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->G()I

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lli/h;->c:Lhi/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q(Lhi/q;)V
    .locals 0

    iput-object p1, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {p1}, Lhi/q;->E()Lhi/j0;

    move-result-object p1

    invoke-virtual {p1}, Lhi/j0;->v()Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lli/h;->c:Lhi/C;

    return-void
.end method

.method public r(LQk/h;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->E()Lhi/j0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/j0;->v()Lhi/C;

    move-result-object v1

    invoke-static {v1}, Lhi/c;->u(Lhi/C;)Lhi/c;

    move-result-object v1

    invoke-virtual {v0}, Lhi/j0;->v()Lhi/C;

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

    invoke-virtual {v0}, Lhi/j0;->r()Loh/B;

    move-result-object v3

    invoke-static {v3}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v3

    new-instance v4, Loh/h;

    invoke-direct {v4}, Loh/h;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Loh/E;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-virtual {v3, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-virtual {v4, v6}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lhi/j0;->v()Lhi/C;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lli/c;->r(ILhi/C;)Loh/M;

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

    :goto_2
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

.method public s(LQk/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->E()Lhi/j0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/j0;->B()Lhi/b;

    move-result-object v1

    iget-object v2, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v2}, Lhi/q;->A()Lhi/b;

    move-result-object v2

    invoke-static {v1, v2}, Lli/c;->o(Lhi/b;Lhi/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lhi/j0;->B()Lhi/b;

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

    invoke-virtual {p0}, Lli/h;->j()[B

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

.method public u(Ljava/util/Date;)Z
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->B()Lhi/o0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->u()Lhi/o0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public x()Lhi/q;
    .locals 1

    iget-object v0, p0, Lli/h;->b:Lhi/q;

    return-object v0
.end method
