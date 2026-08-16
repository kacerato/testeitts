.class public Lti/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lhi/b;


# instance fields
.field public a:LVh/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhi/b;

    sget-object v1, LWh/b;->i:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, Lti/l;->b:Lhi/b;

    return-void
.end method

.method public constructor <init>(LVh/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/l;->a:LVh/j;

    return-void
.end method

.method public constructor <init>(Lfi/d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LVh/j;

    invoke-direct {v0, p1}, LVh/j;-><init>(Lfi/d;)V

    iput-object v0, p0, Lti/l;->a:LVh/j;

    return-void
.end method

.method public constructor <init>(Lhi/h0;LQk/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-interface {p2}, LQk/p;->a()Lhi/b;

    move-result-object v0

    sget-object v1, Lti/l;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance p1, LVh/j;

    new-instance v0, Loh/C0;

    invoke-interface {p2}, LQk/p;->b()[B

    move-result-object p2

    invoke-direct {v0, p2}, Loh/C0;-><init>([B)V

    invoke-direct {p1, v0}, LVh/j;-><init>(Loh/y;)V

    iput-object p1, p0, Lti/l;->a:LVh/j;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "only SHA-1 can be used with RespID - found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, LQk/p;->a()Lhi/b;

    move-result-object p2

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "problem creating ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()LVh/j;
    .locals 1

    iget-object v0, p0, Lti/l;->a:LVh/j;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lti/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lti/l;

    iget-object v0, p0, Lti/l;->a:LVh/j;

    iget-object p1, p1, Lti/l;->a:LVh/j;

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lti/l;->a:LVh/j;

    invoke-virtual {v0}, Loh/v;->hashCode()I

    move-result v0

    return v0
.end method
