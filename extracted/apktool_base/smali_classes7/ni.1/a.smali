.class public Lni/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/v;Lhi/b;LQk/q;LQk/o;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    invoke-interface {p3, p1}, LQk/o;->c(Lhi/b;)Lhi/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Lni/a;->b(Loh/v;Lhi/b;LQk/q;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/cert/cmp/CMPException;

    const-string p1, "cannot find digest algorithm from signature algorithm"

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Loh/v;Lhi/b;LQk/q;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    invoke-static {p1, p2}, Lni/a;->d(Lhi/b;LQk/q;)LQk/p;

    move-result-object p1

    invoke-interface {p1}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-static {p0, p2}, Lni/a;->c(Loh/v;Ljava/io/OutputStream;)V

    invoke-interface {p1}, LQk/p;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Loh/v;Ljava/io/OutputStream;)V
    .locals 2

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, p1, v0}, Loh/v;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/cmp/CMPRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to DER encode object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/cert/cmp/CMPRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static d(Lhi/b;LQk/q;)LQk/p;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p0}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p0
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to create digester: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
