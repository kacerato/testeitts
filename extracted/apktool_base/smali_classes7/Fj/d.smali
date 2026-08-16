.class public LFj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGj/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFj/d$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/security/interfaces/ECPrivateKey;

.field public final b:LDj/j;

.field public final c:Lhi/b;

.field public final d:LQk/p;

.field public final e:[B

.field public final f:Loh/x;

.field public final g:[B

.field public final h:Ljava/lang/String;

.field public final i:Ldk/f;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;LDj/j;Ldk/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFj/d;->a:Ljava/security/interfaces/ECPrivateKey;

    iput-object p2, p0, LFj/d;->b:LDj/j;

    iput-object p3, p0, LFj/d;->i:Ldk/f;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p1

    iput-object p1, p0, LFj/d;->f:Loh/x;

    sget-object v0, LZh/d;->H:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const-string v1, "SHA256withECDSA"

    if-eqz v0, :cond_0

    new-instance p1, Lhi/b;

    sget-object v0, LSh/d;->c:Loh/x;

    invoke-direct {p1, v0}, Lhi/b;-><init>(Loh/x;)V

    :goto_0
    iput-object p1, p0, LFj/d;->c:Lhi/b;

    iput-object v1, p0, LFj/d;->h:Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-object v0, Lbi/b;->u:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lhi/b;

    sget-object v0, LSh/d;->c:Loh/x;

    invoke-direct {p1, v0}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lbi/b;->y:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lhi/b;

    sget-object v0, LSh/d;->d:Loh/x;

    invoke-direct {p1, v0}, Lhi/b;-><init>(Loh/x;)V

    iput-object p1, p0, LFj/d;->c:Lhi/b;

    const-string p1, "SHA384withECDSA"

    iput-object p1, p0, LFj/d;->h:Ljava/lang/String;

    :goto_1
    :try_start_0
    new-instance p1, Lorg/bouncycastle/operator/jcajce/d;

    invoke-direct {p1}, Lorg/bouncycastle/operator/jcajce/d;-><init>()V

    invoke-virtual {p1, p3}, Lorg/bouncycastle/operator/jcajce/d;->c(Ldk/f;)Lorg/bouncycastle/operator/jcajce/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/operator/jcajce/d;->b()LQk/q;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object p3, p0, LFj/d;->c:Lhi/b;

    invoke-interface {p1, p3}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p1

    iput-object p1, p0, LFj/d;->d:LQk/p;
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_2

    :try_start_2
    invoke-virtual {p2}, LDj/j;->getEncoded()[B

    move-result-object p2

    iput-object p2, p0, LFj/d;->e:[B

    invoke-interface {p1}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, LQk/p;->b()[B

    move-result-object p1

    iput-object p1, p0, LFj/d;->g:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "signer certificate encoding failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 p2, 0x0

    iput-object p2, p0, LFj/d;->e:[B

    invoke-interface {p1}, LQk/p;->b()[B

    move-result-object p1

    iput-object p1, p0, LFj/d;->g:[B

    :goto_2
    return-void

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot recognise digest type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LFj/d;->c:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown key type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/security/interfaces/ECPrivateKey;LDj/j;Ldk/f;LFj/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, LFj/d;-><init>(Ljava/security/interfaces/ECPrivateKey;LDj/j;Ldk/f;)V

    return-void
.end method


# virtual methods
.method public b()LDj/j;
    .locals 1

    iget-object v0, p0, LFj/d;->b:LDj/j;

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, LFj/d;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LFj/d;->e:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Loh/x;
    .locals 1

    iget-object v0, p0, LFj/d;->f:Loh/x;

    return-object v0
.end method

.method public f()Lhi/b;
    .locals 1

    iget-object v0, p0, LFj/d;->c:Lhi/b;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, LFj/d;->d:LQk/p;

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    iget-object v0, p0, LFj/d;->d:LQk/p;

    invoke-interface {v0}, LQk/p;->b()[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, LFj/d;->i:Ldk/f;

    iget-object v2, p0, LFj/d;->h:Ljava/lang/String;

    invoke-interface {v1, v2}, Ldk/f;->a(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iget-object v2, p0, LFj/d;->a:Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    iget-object v0, p0, LFj/d;->g:[B

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
