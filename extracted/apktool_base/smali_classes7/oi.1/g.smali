.class public Loi/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3


# instance fields
.field public final b:Lwh/e;

.field public final c:Lwh/i;


# direct methods
.method public constructor <init>(Lwh/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {p1}, Lwh/e;->v()Lwh/f;

    move-result-object p1

    invoke-virtual {p1}, Lwh/f;->x()Lwh/i;

    move-result-object p1

    iput-object p1, p0, Loi/g;->c:Lwh/i;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Loi/g;->l([B)Lwh/e;

    move-result-object p1

    invoke-direct {p0, p1}, Loi/g;-><init>(Lwh/e;)V

    return-void
.end method

.method public static l([B)Lwh/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lwh/e;->w(Ljava/lang/Object;)Lwh/e;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Loh/x;)Lwh/a;
    .locals 4

    iget-object v0, p0, Loi/g;->c:Lwh/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lwh/i;->v()[Lwh/a;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lwh/a;->v()Loh/x;

    move-result-object v3

    invoke-virtual {v3, p1}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v1, v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public b()Loh/s;
    .locals 1

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {v0}, Lwh/e;->v()Lwh/f;

    move-result-object v0

    invoke-virtual {v0}, Lwh/f;->u()Loh/s;

    move-result-object v0

    return-object v0
.end method

.method public c()Lwh/g;
    .locals 1

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {v0}, Lwh/e;->v()Lwh/f;

    move-result-object v0

    invoke-virtual {v0}, Lwh/f;->v()Lwh/g;

    move-result-object v0

    return-object v0
.end method

.method public d(Loh/x;)Loi/k;
    .locals 2

    invoke-virtual {p0, p1}, Loi/g;->a(Loh/x;)Lwh/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lwh/a;->v()Loh/x;

    move-result-object v0

    sget-object v1, Lwh/b;->g:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Loi/o;

    invoke-virtual {p1}, Lwh/a;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lwh/o;->u(Ljava/lang/Object;)Lwh/o;

    move-result-object p1

    invoke-direct {v0, p1}, Loi/o;-><init>(Lwh/o;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lwh/a;->v()Loh/x;

    move-result-object v0

    sget-object v1, Lwh/b;->d:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Loi/v;

    invoke-virtual {p1}, Lwh/a;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object p1

    invoke-direct {v0, p1}, Loi/v;-><init>(Loh/Q;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lwh/a;->v()Loh/x;

    move-result-object v0

    sget-object v1, Lwh/b;->e:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Loi/a;

    invoke-virtual {p1}, Lwh/a;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object p1

    invoke-direct {v0, p1}, Loi/a;-><init>(Loh/Q;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {v0}, Lwh/e;->y()Lwh/u;

    move-result-object v0

    invoke-virtual {v0}, Lwh/u;->x()I

    move-result v0

    return v0
.end method

.method public f(Loh/x;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loi/g;->a(Loh/x;)Lwh/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Loi/g;->c:Lwh/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {v0}, Lwh/e;->y()Lwh/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 4

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {v0}, Lwh/e;->y()Lwh/u;

    move-result-object v0

    invoke-virtual {v0}, Lwh/u;->x()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lwh/u;->v()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lwh/s;->v(Ljava/lang/Object;)Lwh/s;

    move-result-object v0

    invoke-virtual {v0}, Lwh/s;->x()Lwh/t;

    move-result-object v0

    invoke-virtual {v0}, Lwh/t;->x()Lwh/q;

    move-result-object v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method public j(LQk/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {v0}, Lwh/e;->y()Lwh/u;

    move-result-object v0

    invoke-virtual {v0}, Lwh/u;->x()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lwh/u;->v()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lwh/s;->v(Ljava/lang/Object;)Lwh/s;

    move-result-object v0

    invoke-virtual {v0}, Lwh/s;->x()Lwh/t;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lwh/s;->x()Lwh/t;

    move-result-object v1

    invoke-virtual {v1}, Lwh/t;->x()Lwh/q;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "verification requires password check"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Loi/g;->n(LQk/h;Lwh/s;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not Signing Key type of proof of possession"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(LQk/h;Loi/q;[C)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {v0}, Lwh/e;->y()Lwh/u;

    move-result-object v0

    invoke-virtual {v0}, Lwh/u;->x()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lwh/u;->v()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lwh/s;->v(Ljava/lang/Object;)Lwh/s;

    move-result-object v0

    invoke-virtual {v0}, Lwh/s;->x()Lwh/t;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lwh/s;->x()Lwh/t;

    move-result-object v1

    invoke-virtual {v1}, Lwh/t;->y()Lhi/E;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lwh/s;->x()Lwh/t;

    move-result-object v1

    invoke-virtual {v1}, Lwh/t;->x()Lwh/q;

    move-result-object v1

    new-instance v3, Loi/s;

    invoke-direct {v3, p2}, Loi/s;-><init>(Loi/q;)V

    invoke-virtual {p0}, Loi/g;->c()Lwh/g;

    move-result-object p2

    invoke-virtual {p2}, Lwh/g;->z()Lhi/h0;

    move-result-object p2

    invoke-virtual {v3, v1, p3, p2}, Loi/s;->a(Lwh/q;[CLhi/h0;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v0}, Loi/g;->n(LQk/h;Lwh/s;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no PKMAC present in proof of possession"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not Signing Key type of proof of possession"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Lwh/e;
    .locals 1

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    return-object v0
.end method

.method public final n(LQk/h;Lwh/s;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Lwh/s;->u()Lhi/b;

    move-result-object v0

    invoke-interface {p1, v0}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lwh/s;->x()Lwh/t;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/g;->b:Lwh/e;

    invoke-virtual {v0}, Lwh/e;->v()Lwh/f;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Loi/b;->b(Loh/v;Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Lwh/s;->y()Loh/c;

    move-result-object p2

    invoke-virtual {p2}, Loh/c;->J()[B

    move-result-object p2

    invoke-interface {p1, p2}, LQk/g;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to create verifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
