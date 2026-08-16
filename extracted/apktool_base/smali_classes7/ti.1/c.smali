.class public Lti/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lhi/b;


# instance fields
.field public final a:LVh/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhi/b;

    sget-object v1, LWh/b;->i:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, Lti/c;->b:Lhi/b;

    return-void
.end method

.method public constructor <init>(LQk/p;Lli/h;Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/s;

    invoke-direct {v0, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p1, p2, v0}, Lti/c;->a(LQk/p;Lli/h;Loh/s;)LVh/b;

    move-result-object p1

    iput-object p1, p0, Lti/c;->a:LVh/b;

    return-void
.end method

.method public constructor <init>(LVh/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lti/c;->a:LVh/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'id\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(LQk/p;Lli/h;Loh/s;)LVh/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object v1

    invoke-virtual {v1}, Lhi/q;->C()Lfi/d;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance v0, Loh/C0;

    invoke-interface {p0}, LQk/p;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    invoke-virtual {p1}, Lli/h;->m()Lhi/h0;

    move-result-object p1

    invoke-interface {p0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance p1, Loh/C0;

    invoke-interface {p0}, LQk/p;->b()[B

    move-result-object v1

    invoke-direct {p1, v1}, Loh/C0;-><init>([B)V

    new-instance v1, LVh/b;

    invoke-interface {p0}, LQk/p;->a()Lhi/b;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1, p2}, LVh/b;-><init>(Lhi/b;Loh/y;Loh/y;Loh/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "problem creating ID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(Lti/c;Ljava/math/BigInteger;)Lti/c;
    .locals 5

    new-instance v0, Lti/c;

    new-instance v1, LVh/b;

    iget-object v2, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v2}, LVh/b;->u()Lhi/b;

    move-result-object v2

    iget-object v3, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v3}, LVh/b;->y()Loh/y;

    move-result-object v3

    iget-object p0, p0, Lti/c;->a:LVh/b;

    invoke-virtual {p0}, LVh/b;->x()Loh/y;

    move-result-object p0

    new-instance v4, Loh/s;

    invoke-direct {v4, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, p0, v4}, LVh/b;-><init>(Lhi/b;Loh/y;Loh/y;Loh/s;)V

    invoke-direct {v0, v1}, Lti/c;-><init>(LVh/b;)V

    return-object v0
.end method


# virtual methods
.method public c()Loh/x;
    .locals 1

    iget-object v0, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v0}, LVh/b;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v0}, LVh/b;->x()Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v0}, LVh/b;->y()Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lti/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lti/c;

    iget-object v0, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v0}, LVh/b;->r()Loh/B;

    move-result-object v0

    iget-object p1, p1, Lti/c;->a:LVh/b;

    invoke-virtual {p1}, LVh/b;->r()Loh/B;

    move-result-object p1

    invoke-virtual {v0, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v0}, LVh/b;->z()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public g(Lli/h;LQk/q;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v0}, LVh/b;->u()Lhi/b;

    move-result-object v0

    invoke-interface {p2, v0}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p2

    iget-object v0, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v0}, LVh/b;->z()Loh/s;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lti/c;->a(LQk/p;Lli/h;Loh/s;)LVh/b;

    move-result-object p1

    iget-object p2, p0, Lti/c;->a:LVh/b;

    invoke-virtual {p1, p2}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to create digest calculator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public h()LVh/b;
    .locals 1

    iget-object v0, p0, Lti/c;->a:LVh/b;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lti/c;->a:LVh/b;

    invoke-virtual {v0}, LVh/b;->r()Loh/B;

    move-result-object v0

    invoke-virtual {v0}, Loh/B;->hashCode()I

    move-result v0

    return v0
.end method
