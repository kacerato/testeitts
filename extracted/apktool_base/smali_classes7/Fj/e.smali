.class public LFj/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGj/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFj/e$b;
    }
.end annotation


# instance fields
.field public final a:LDj/j;

.field public final b:[B

.field public final c:Ldk/f;

.field public d:Lhi/b;

.field public e:Ljava/security/interfaces/ECPublicKey;

.field public f:I


# direct methods
.method public constructor <init>(LDj/j;Ldk/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFj/e;->a:LDj/j;

    iput-object p2, p0, LFj/e;->c:Ldk/f;

    :try_start_0
    invoke-virtual {p1}, LDj/j;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, LFj/e;->b:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, LDj/j;->e()LEk/c;

    move-result-object p1

    invoke-virtual {p1}, LEk/c;->z()LEk/K;

    move-result-object p1

    invoke-virtual {p1}, LEk/K;->U()LEk/M;

    move-result-object p1

    invoke-virtual {p1}, LEk/M;->x()Loh/g;

    move-result-object v0

    instance-of v0, v0, LFk/T;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LEk/M;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LFk/T;->z(Ljava/lang/Object;)LFk/T;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LFj/e;->d(LFk/T;Ldk/f;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not public verification key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to extract parent data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(LDj/j;Ldk/f;LFj/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LFj/e;-><init>(LDj/j;Ldk/f;)V

    return-void
.end method

.method public constructor <init>(LDj/o;Ldk/f;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LFj/e;->a:LDj/j;

    iput-object v0, p0, LFj/e;->b:[B

    iput-object p2, p0, LFj/e;->c:Ldk/f;

    invoke-virtual {p1}, LDj/o;->a()LFk/T;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LFj/e;->d(LFk/T;Ldk/f;)V

    return-void
.end method

.method public synthetic constructor <init>(LDj/o;Ldk/f;LFj/e$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, LFj/e;-><init>(LDj/o;Ldk/f;)V

    return-void
.end method

.method public static synthetic a(LFj/e;)Ljava/security/interfaces/ECPublicKey;
    .locals 0

    iget-object p0, p0, LFj/e;->e:Ljava/security/interfaces/ECPublicKey;

    return-object p0
.end method


# virtual methods
.method public b()LDj/j;
    .locals 1

    iget-object v0, p0, LFj/e;->a:LDj/j;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, LFj/e;->a:LDj/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(LFk/T;Ldk/f;)V
    .locals 2

    invoke-virtual {p1}, LFk/T;->y()I

    move-result v0

    iput v0, p0, LFj/e;->f:I

    invoke-virtual {p1}, LFk/T;->y()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->d:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    :goto_0
    iput-object v0, p0, LFj/e;->d:Lhi/b;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown key type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->c:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->c:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_0

    :goto_1
    new-instance v0, LFj/h;

    invoke-direct {v0, p1, p2}, LFj/h;-><init>(LFk/T;Ldk/f;)V

    invoke-virtual {v0}, LFj/h;->c()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    iput-object p1, p0, LFj/e;->e:Ljava/security/interfaces/ECPublicKey;

    return-void
.end method

.method public get(I)LQk/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget v0, p0, LFj/e;->f:I

    if-ne v0, p1, :cond_4

    :try_start_0
    new-instance p1, Lorg/bouncycastle/operator/jcajce/d;

    invoke-direct {p1}, Lorg/bouncycastle/operator/jcajce/d;-><init>()V

    iget-object v0, p0, LFj/e;->c:Ldk/f;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/operator/jcajce/d;->c(Ldk/f;)Lorg/bouncycastle/operator/jcajce/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/operator/jcajce/d;->b()LQk/q;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, LFj/e;->d:Lhi/b;

    invoke-interface {p1, v0}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object v4

    :try_start_1
    invoke-interface {v4}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object p1, p0, LFj/e;->b:[B

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-virtual {v3, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    invoke-interface {v4}, LQk/p;->b()[B

    move-result-object v7

    iget-object p1, p0, LFj/e;->a:LDj/j;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LDj/j;->a()LEk/s;

    move-result-object p1

    invoke-virtual {p1}, LEk/s;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LFj/e;->a:LDj/j;

    invoke-virtual {p1}, LDj/j;->e()LEk/c;

    move-result-object p1

    invoke-virtual {p1}, LEk/c;->z()LEk/K;

    move-result-object p1

    sget-object v1, LLk/a;->A:Lyk/f$b;

    invoke-virtual {v1}, Lyk/f$b;->f()Lyk/c;

    move-result-object v1

    invoke-static {p1, v1}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object p1

    array-length v1, p1

    invoke-virtual {v3, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-interface {v4}, LQk/p;->b()[B

    move-result-object p1

    :goto_1
    move-object v6, p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    iget p1, p0, LFj/e;->f:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, LFj/e;->c:Ldk/f;

    const-string v0, "SHA384withECDSA"

    :goto_3
    invoke-interface {p1, v0}, Ldk/f;->a(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    move-object v5, p1

    goto :goto_4

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "choice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LFj/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, p0, LFj/e;->c:Ldk/f;

    const-string v0, "SHA256withECDSA"

    goto :goto_3

    :goto_4
    new-instance p1, LFj/e$a;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, LFj/e$a;-><init>(LFj/e;Ljava/io/OutputStream;LQk/p;Ljava/security/Signature;[B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong verifier for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
