.class public abstract Loi/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loi/q;[CLhi/h0;)Lwh/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Loi/q;->c([C)LQk/A;

    move-result-object p0

    invoke-interface {p0}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p2, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lwh/q;

    invoke-interface {p0}, LQk/A;->a()Lhi/b;

    move-result-object p2

    new-instance v0, Loh/r0;

    invoke-interface {p0}, LQk/A;->e()[B

    move-result-object p0

    invoke-direct {v0, p0}, Loh/r0;-><init>([B)V

    invoke-direct {p1, p2, v0}, Lwh/q;-><init>(Lhi/b;Loh/r0;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding mac input: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
