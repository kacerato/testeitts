.class public Loi/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lwh/f;

.field public b:Lhi/h0;

.field public c:Lhi/E;

.field public d:Lwh/q;


# direct methods
.method public constructor <init>(Lhi/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/u;->b:Lhi/h0;

    return-void
.end method

.method public constructor <init>(Lwh/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/u;->a:Lwh/f;

    return-void
.end method


# virtual methods
.method public a(LQk/f;)Lwh/s;
    .locals 4

    iget-object v0, p0, Loi/u;->c:Lhi/E;

    if-eqz v0, :cond_1

    iget-object v1, p0, Loi/u;->d:Lwh/q;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "name and publicKeyMAC cannot both be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Loi/u;->a:Lwh/f;

    if-eqz v1, :cond_2

    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v1, v0}, Loi/b;->b(Loh/v;Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lwh/t;

    iget-object v2, p0, Loi/u;->b:Lhi/h0;

    invoke-direct {v1, v0, v2}, Lwh/t;-><init>(Lhi/E;Lhi/h0;)V

    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v1, v0}, Loi/b;->b(Loh/v;Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lwh/t;

    iget-object v1, p0, Loi/u;->d:Lwh/q;

    iget-object v2, p0, Loi/u;->b:Lhi/h0;

    invoke-direct {v0, v1, v2}, Lwh/t;-><init>(Lwh/q;Lhi/h0;)V

    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Loi/b;->b(Loh/v;Ljava/io/OutputStream;)V

    :goto_1
    new-instance v1, Lwh/s;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v2

    new-instance v3, Loh/r0;

    invoke-interface {p1}, LQk/f;->getSignature()[B

    move-result-object p1

    invoke-direct {v3, p1}, Loh/r0;-><init>([B)V

    invoke-direct {v1, v0, v2, v3}, Lwh/s;-><init>(Lwh/t;Lhi/b;Loh/c;)V

    return-object v1
.end method

.method public b(Loi/q;[C)Loi/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    iget-object v0, p0, Loi/u;->b:Lhi/h0;

    invoke-static {p1, p2, v0}, Loi/r;->a(Loi/q;[CLhi/h0;)Lwh/q;

    move-result-object p1

    iput-object p1, p0, Loi/u;->d:Lwh/q;

    return-object p0
.end method

.method public c(Lhi/E;)Loi/u;
    .locals 0

    iput-object p1, p0, Loi/u;->c:Lhi/E;

    return-object p0
.end method
