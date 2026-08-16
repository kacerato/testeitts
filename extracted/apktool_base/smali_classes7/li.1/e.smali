.class public Lli/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:J = 0x4b244cad1L

.field public static e:[Lhi/g;


# instance fields
.field public transient b:Lhi/h;

.field public transient c:Lhi/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lhi/g;

    sput-object v0, Lli/e;->e:[Lhi/g;

    return-void
.end method

.method public constructor <init>(Lhi/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lli/e;->r(Lhi/h;)V

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
    invoke-static {p1}, Lli/e;->v([B)Lhi/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lli/e;-><init>(Lhi/h;)V

    return-void
.end method

.method public static v([B)Lhi/h;
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

    invoke-static {p0}, Lhi/h;->v(Ljava/lang/Object;)Lhi/h;

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


# virtual methods
.method public a()[Lhi/g;
    .locals 4

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->u()Lhi/i;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i;->v()Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v1

    new-array v1, v1, [Lhi/g;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/g;->y(Ljava/lang/Object;)Lhi/g;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(Loh/x;)[Lhi/g;
    .locals 5

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->u()Lhi/i;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i;->v()Loh/E;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/g;->y(Ljava/lang/Object;)Lhi/g;

    move-result-object v3

    invoke-virtual {v3}, Lhi/g;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v4, p1}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lli/e;->e:[Lhi/g;

    return-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lhi/g;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lhi/g;

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lli/e;->c:Lhi/C;

    invoke-static {v0}, Lli/c;->l(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lli/e;->c:Lhi/C;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lli/e;->c:Lhi/C;

    invoke-static {v0}, Lli/c;->m(Lhi/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lli/e;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lli/e;

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    iget-object p1, p1, Lli/e;->b:Lhi/h;

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lhi/C;
    .locals 1

    iget-object v0, p0, Lli/e;->c:Lhi/C;

    return-object v0
.end method

.method public g()Lli/a;
    .locals 2

    new-instance v0, Lli/a;

    iget-object v1, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v1}, Lhi/h;->u()Lhi/i;

    move-result-object v1

    invoke-virtual {v1}, Lhi/i;->y()Lhi/I;

    move-result-object v1

    invoke-virtual {v1}, Lhi/I;->r()Loh/B;

    move-result-object v1

    check-cast v1, Loh/E;

    invoke-direct {v0, v1}, Lli/a;-><init>(Loh/E;)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public h()Lli/b;
    .locals 2

    new-instance v0, Lli/b;

    iget-object v1, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v1}, Lhi/h;->u()Lhi/i;

    move-result-object v1

    invoke-virtual {v1}, Lhi/i;->B()Lhi/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lli/b;-><init>(Lhi/e;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Loh/v;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()[Z
    .locals 1

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->u()Lhi/i;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i;->C()Loh/c;

    move-result-object v0

    invoke-static {v0}, Lli/c;->b(Loh/c;)[Z

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lli/e;->c:Lhi/C;

    invoke-static {v0}, Lli/c;->n(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->u()Lhi/i;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i;->u()Lhi/f;

    move-result-object v0

    invoke-virtual {v0}, Lhi/f;->v()Loh/n;

    move-result-object v0

    invoke-static {v0}, Lli/c;->q(Loh/n;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->u()Lhi/i;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i;->u()Lhi/f;

    move-result-object v0

    invoke-virtual {v0}, Lhi/f;->x()Loh/n;

    move-result-object v0

    invoke-static {v0}, Lli/c;->q(Loh/n;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->u()Lhi/i;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i;->D()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public n()[B
    .locals 1

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->y()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    return-object v0
.end method

.method public o()Lhi/b;
    .locals 1

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->x()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->u()Lhi/i;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i;->F()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lli/e;->c:Lhi/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r(Lhi/h;)V
    .locals 0

    iput-object p1, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {p1}, Lhi/h;->u()Lhi/i;

    move-result-object p1

    invoke-virtual {p1}, Lhi/i;->x()Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lli/e;->c:Lhi/C;

    return-void
.end method

.method public s(LQk/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->u()Lhi/i;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i;->E()Lhi/b;

    move-result-object v1

    iget-object v2, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v2}, Lhi/h;->x()Lhi/b;

    move-result-object v2

    invoke-static {v1, v2}, Lli/c;->o(Lhi/b;Lhi/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lhi/i;->E()Lhi/b;

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

    invoke-virtual {p0}, Lli/e;->n()[B

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
    .locals 2

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    invoke-virtual {v0}, Lhi/h;->u()Lhi/i;

    move-result-object v0

    invoke-virtual {v0}, Lhi/i;->u()Lhi/f;

    move-result-object v0

    invoke-virtual {v0}, Lhi/f;->x()Loh/n;

    move-result-object v1

    invoke-static {v1}, Lli/c;->q(Loh/n;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lhi/f;->v()Loh/n;

    move-result-object v0

    invoke-static {v0}, Lli/c;->q(Loh/n;)Ljava/util/Date;

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

.method public final w(Ljava/io/ObjectInputStream;)V
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

    invoke-static {p1}, Lhi/h;->v(Ljava/lang/Object;)Lhi/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lli/e;->r(Lhi/h;)V

    return-void
.end method

.method public x()Lhi/h;
    .locals 1

    iget-object v0, p0, Lli/e;->b:Lhi/h;

    return-object v0
.end method

.method public final y(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lli/e;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
