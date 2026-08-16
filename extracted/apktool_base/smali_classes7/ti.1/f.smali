.class public Lti/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/f$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:Lhi/E;

.field public c:Lhi/C;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/f;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lti/f;->b:Lhi/E;

    iput-object v0, p0, Lti/f;->c:Lhi/C;

    return-void
.end method


# virtual methods
.method public a(Lti/c;)Lti/f;
    .locals 3

    iget-object v0, p0, Lti/f;->a:Ljava/util/List;

    new-instance v1, Lti/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lti/f$a;-><init>(Lti/c;Lhi/C;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Lti/c;Lhi/C;)Lti/f;
    .locals 2

    iget-object v0, p0, Lti/f;->a:Ljava/util/List;

    new-instance v1, Lti/f$a;

    invoke-direct {v1, p1, p2}, Lti/f$a;-><init>(Lti/c;Lhi/C;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lti/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lti/f;->e(LQk/f;[Lli/h;)Lti/e;

    move-result-object v0

    return-object v0
.end method

.method public d(LQk/f;[Lli/h;)Lti/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lti/f;->e(LQk/f;[Lli/h;)Lti/e;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no signer specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(LQk/f;[Lli/h;)Lti/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    iget-object v0, p0, Lti/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/f$a;

    invoke-virtual {v2}, Lti/f$a;->a()LVh/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v0, "exception creating Request"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance v0, LVh/q;

    iget-object v2, p0, Lti/f;->b:Lhi/E;

    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    iget-object v1, p0, Lti/f;->c:Lhi/C;

    invoke-direct {v0, v2, v3, v1}, LVh/q;-><init>(Lhi/E;Loh/E;Lhi/C;)V

    if-eqz p1, :cond_4

    iget-object v1, p0, Lti/f;->b:Lhi/E;

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v0, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v1, Loh/r0;

    invoke-interface {p1}, LQk/f;->getSignature()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/r0;-><init>([B)V

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object p1

    if-eqz p2, :cond_2

    array-length v2, p2

    if-lez v2, :cond_2

    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    const/4 v3, 0x0

    :goto_1
    array-length v4, p2

    if-eq v3, v4, :cond_1

    aget-object v4, p2, v3

    invoke-virtual {v4}, Lli/h;->x()Lhi/q;

    move-result-object v4

    invoke-virtual {v2, v4}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, LVh/o;

    new-instance v3, Loh/G0;

    invoke-direct {v3, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {p2, p1, v1, v3}, LVh/o;-><init>(Lhi/b;Loh/r0;Loh/E;)V

    goto :goto_2

    :cond_2
    new-instance p2, LVh/o;

    invoke-direct {p2, p1, v1}, LVh/o;-><init>(Lhi/b;Loh/r0;)V

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception processing TBSRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string p2, "requestorName must be specified if request is signed."

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p2, 0x0

    :goto_2
    new-instance p1, Lti/e;

    new-instance v1, LVh/f;

    invoke-direct {v1, v0, p2}, LVh/f;-><init>(LVh/q;LVh/o;)V

    invoke-direct {p1, v1}, Lti/e;-><init>(LVh/f;)V

    return-object p1
.end method

.method public f(Lhi/C;)Lti/f;
    .locals 0

    iput-object p1, p0, Lti/f;->c:Lhi/C;

    return-object p0
.end method

.method public g(Lfi/d;)Lti/f;
    .locals 2

    new-instance v0, Lhi/E;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lhi/E;-><init>(ILoh/g;)V

    iput-object v0, p0, Lti/f;->b:Lhi/E;

    return-object p0
.end method

.method public h(Lhi/E;)Lti/f;
    .locals 0

    iput-object p1, p0, Lti/f;->b:Lhi/E;

    return-object p0
.end method
