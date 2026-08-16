.class public LSk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LSk/g;


# direct methods
.method public constructor <init>(LSk/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSk/d;->a:LSk/g;

    return-void
.end method


# virtual methods
.method public a([C[B)LXh/n;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LSk/d;->a:LSk/g;

    invoke-interface {v0, p1}, LSk/g;->a([C)LQk/A;

    move-result-object p1

    invoke-interface {p1}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, LQk/A;->a()Lhi/b;

    move-result-object p2

    new-instance v0, Lhi/w;

    iget-object v1, p0, LSk/d;->a:LSk/g;

    invoke-interface {v1}, LSk/g;->b()Lhi/b;

    move-result-object v1

    invoke-interface {p1}, LQk/A;->e()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lhi/w;-><init>(Lhi/b;[B)V

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LXh/s;->v(Ljava/lang/Object;)LXh/s;

    move-result-object p1

    new-instance p2, LXh/n;

    invoke-virtual {p1}, LXh/s;->u()[B

    move-result-object v1

    invoke-virtual {p1}, LXh/s;->x()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p2, v0, v1, p1}, LXh/n;-><init>(Lhi/w;[BI)V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
