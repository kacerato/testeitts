.class public Lti/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[Lli/h;


# instance fields
.field public a:LVh/f;

.field public b:Lhi/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lli/h;

    sput-object v0, Lti/e;->c:[Lli/h;

    return-void
.end method

.method public constructor <init>(LVh/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/e;->a:LVh/f;

    invoke-virtual {p1}, LVh/f;->y()LVh/q;

    move-result-object p1

    invoke-virtual {p1}, LVh/q;->x()Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lti/e;->b:Lhi/C;

    return-void
.end method

.method public constructor <init>(Loh/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const-string v0, "malformed request: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Loh/r;->k()Loh/B;

    move-result-object p1

    invoke-static {p1}, LVh/f;->u(Ljava/lang/Object;)LVh/f;

    move-result-object p1

    iput-object p1, p0, Lti/e;->a:LVh/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LVh/f;->y()LVh/q;

    move-result-object p1

    invoke-virtual {p1}, LVh/q;->x()Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lti/e;->b:Lhi/C;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/CertIOException;

    const-string v1, "malformed request: no request data found"

    invoke-direct {p1, v1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Loh/r;

    invoke-direct {v0, p1}, Loh/r;-><init>([B)V

    invoke-direct {p0, v0}, Lti/e;-><init>(Loh/r;)V

    return-void
.end method


# virtual methods
.method public a()[Lli/h;
    .locals 6

    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, LVh/f;->x()LVh/o;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, LVh/f;->x()LVh/o;

    move-result-object v0

    invoke-virtual {v0}, LVh/o;->u()Loh/E;

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
    sget-object v0, Lti/e;->c:[Lli/h;

    return-object v0

    :cond_2
    sget-object v0, Lti/e;->c:[Lli/h;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lti/e;->b:Lhi/C;

    invoke-static {v0}, Lti/i;->b(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public d(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lti/e;->b:Lhi/C;

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

    iget-object v0, p0, Lti/e;->b:Lhi/C;

    invoke-static {v0}, Lti/i;->c(Lhi/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lti/e;->b:Lhi/C;

    invoke-static {v0}, Lti/i;->d(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g()[Lti/j;
    .locals 6

    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, LVh/f;->y()LVh/q;

    move-result-object v0

    invoke-virtual {v0}, LVh/q;->y()Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v1

    new-array v2, v1, [Lti/j;

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    new-instance v4, Lti/j;

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, LVh/i;->u(Ljava/lang/Object;)LVh/i;

    move-result-object v5

    invoke-direct {v4, v5}, Lti/j;-><init>(LVh/i;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public h()Lhi/E;
    .locals 1

    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, LVh/f;->y()LVh/q;

    move-result-object v0

    invoke-virtual {v0}, LVh/q;->z()Lhi/E;

    move-result-object v0

    invoke-static {v0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v0

    return-object v0
.end method

.method public i()[B
    .locals 1

    invoke-virtual {p0}, Lti/e;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, LVh/f;->x()LVh/o;

    move-result-object v0

    invoke-virtual {v0}, LVh/o;->x()Loh/r0;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    return-object v0
.end method

.method public j()Loh/x;
    .locals 1

    invoke-virtual {p0}, Lti/e;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, LVh/f;->x()LVh/o;

    move-result-object v0

    invoke-virtual {v0}, LVh/o;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, LVh/f;->y()LVh/q;

    move-result-object v0

    invoke-virtual {v0}, LVh/q;->A()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lti/e;->b:Lhi/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(LQk/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    invoke-virtual {p0}, Lti/e;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, LVh/f;->x()LVh/o;

    move-result-object v0

    invoke-virtual {v0}, LVh/o;->y()Lhi/b;

    move-result-object v0

    invoke-interface {p1, v0}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1

    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v1}, LVh/f;->y()LVh/q;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lti/e;->i()[B

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

    const-string v2, "exception processing signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v0, "attempt to verify signature on unsigned object"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lti/e;->a:LVh/f;

    invoke-virtual {v0}, LVh/f;->x()LVh/o;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
