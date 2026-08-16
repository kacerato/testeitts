.class public Loi/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Loi/q;


# direct methods
.method public constructor <init>(Loi/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/s;->a:Loi/q;

    return-void
.end method


# virtual methods
.method public a(Lwh/q;[CLhi/h0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    iget-object v0, p0, Loi/s;->a:Loi/q;

    invoke-virtual {p1}, Lwh/q;->u()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, Lth/B;->u(Ljava/lang/Object;)Lth/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loi/q;->h(Lth/B;)Loi/q;

    iget-object v0, p0, Loi/s;->a:Loi/q;

    invoke-virtual {v0, p2}, Loi/q;->c([C)LQk/A;

    move-result-object p2

    invoke-interface {p2}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p3, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2}, LQk/A;->e()[B

    move-result-object p2

    invoke-virtual {p1}, Lwh/q;->x()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->J()[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding mac input: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
