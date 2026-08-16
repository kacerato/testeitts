.class public Lti/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# instance fields
.field public b:LVh/a;

.field public c:LVh/l;

.field public d:Lhi/C;


# direct methods
.method public constructor <init>(LVh/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/a;->b:LVh/a;

    invoke-virtual {p1}, LVh/a;->z()LVh/l;

    move-result-object v0

    iput-object v0, p0, Lti/a;->c:LVh/l;

    invoke-virtual {p1}, LVh/a;->z()LVh/l;

    move-result-object p1

    invoke-virtual {p1}, LVh/l;->z()Lhi/C;

    move-result-object p1

    invoke-static {p1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lti/a;->d:Lhi/C;

    return-void
.end method


# virtual methods
.method public a()[Lli/h;
    .locals 6

    iget-object v0, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v0}, LVh/a;->u()Loh/E;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v0}, LVh/a;->u()Loh/E;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v1

    new-array v2, v1, [Lli/h;

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    new-instance v4, Lli/h;

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v5

    invoke-direct {v4, v5}, Lli/h;-><init>(Lhi/q;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    sget-object v0, Lti/i;->a:[Lli/h;

    return-object v0

    :cond_2
    sget-object v0, Lti/i;->a:[Lli/h;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lti/a;->d:Lhi/C;

    invoke-static {v0}, Lti/i;->b(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lti/a;->d:Lhi/C;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lti/a;->d:Lhi/C;

    invoke-static {v0}, Lti/i;->c(Lhi/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lti/a;->d:Lhi/C;

    invoke-static {v0}, Lti/i;->d(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lti/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lti/a;

    iget-object v0, p0, Lti/a;->b:LVh/a;

    iget-object p1, p1, Lti/a;->b:LVh/a;

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lti/a;->c:LVh/l;

    invoke-virtual {v0}, LVh/l;->x()Loh/n;

    move-result-object v0

    invoke-static {v0}, Lti/i;->a(Loh/n;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public g()Lti/l;
    .locals 2

    new-instance v0, Lti/l;

    iget-object v1, p0, Lti/a;->c:LVh/l;

    invoke-virtual {v1}, LVh/l;->y()LVh/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/l;-><init>(LVh/j;)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public h()[Lti/n;
    .locals 6

    iget-object v0, p0, Lti/a;->c:LVh/l;

    invoke-virtual {v0}, LVh/l;->A()Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v1

    new-array v2, v1, [Lti/n;

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    new-instance v4, Lti/n;

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, LVh/p;->w(Ljava/lang/Object;)LVh/p;

    move-result-object v5

    invoke-direct {v4, v5}, Lti/n;-><init>(LVh/p;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v0}, Loh/v;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v0}, LVh/a;->x()Loh/r0;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    return-object v0
.end method

.method public j()Loh/x;
    .locals 1

    iget-object v0, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v0}, LVh/a;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public k()Lhi/b;
    .locals 1

    iget-object v0, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v0}, LVh/a;->y()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v0}, LVh/a;->z()LVh/l;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lti/a;->c:LVh/l;

    invoke-virtual {v0}, LVh/l;->B()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lti/a;->d:Lhi/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(LQk/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v0}, LVh/a;->y()Lhi/b;

    move-result-object v0

    invoke-interface {p1, v0}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1

    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lti/a;->b:LVh/a;

    invoke-virtual {v1}, LVh/a;->z()LVh/l;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lti/a;->i()[B

    move-result-object v0

    invoke-interface {p1, v0}, LQk/g;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing sig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
