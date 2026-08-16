.class public Loi/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/G;


# instance fields
.field public a:Lhi/b;

.field public b:I

.field public c:Lhi/b;

.field public d:I

.field public e:Ljava/security/SecureRandom;

.field public f:Loi/t;

.field public g:Lth/B;

.field public h:I


# direct methods
.method public constructor <init>(Lhi/b;ILhi/b;Loi/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Loi/q;->d:I

    iput-object p1, p0, Loi/q;->a:Lhi/b;

    iput p2, p0, Loi/q;->b:I

    iput-object p3, p0, Loi/q;->c:Lhi/b;

    iput-object p4, p0, Loi/q;->f:Loi/t;

    return-void
.end method

.method public constructor <init>(Loi/t;)V
    .locals 4

    .line 2
    new-instance v0, Lhi/b;

    sget-object v1, LWh/b;->i:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, Lhi/b;

    sget-object v2, LHh/a;->o:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const/16 v2, 0x3e8

    invoke-direct {p0, v0, v2, v1, p1}, Loi/q;-><init>(Lhi/b;ILhi/b;Loi/t;)V

    return-void
.end method

.method public constructor <init>(Loi/t;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Loi/q;->d:I

    iput p2, p0, Loi/q;->h:I

    iput-object p1, p0, Loi/q;->f:Loi/t;

    return-void
.end method

.method public static synthetic b(Loi/q;)Loi/t;
    .locals 0

    iget-object p0, p0, Loi/q;->f:Loi/t;

    return-object p0
.end method


# virtual methods
.method public a(Lhi/b;[C)LQk/A;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    sget-object v0, Lth/c;->a:Loh/x;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lth/B;->u(Ljava/lang/Object;)Lth/B;

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/q;->h(Lth/B;)Loi/q;

    :try_start_0
    invoke-virtual {p0, p2}, Loi/q;->c([C)LQk/A;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/cert/crmf/CRMFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/operator/OperatorCreationException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cert/crmf/CRMFException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string p2, "protection algorithm not mac based"

    invoke-direct {p1, p2}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([C)LQk/A;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    iget-object v0, p0, Loi/q;->g:Lth/B;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Loi/q;->f()Lth/B;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0, p1}, Loi/q;->e(Lth/B;[C)LQk/A;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)V
    .locals 3

    iget v0, p0, Loi/q;->h:I

    if-lez v0, :cond_1

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iteration count exceeds limit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Loi/q;->h:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lth/B;[C)LQk/A;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/util/w;->o([C)[B

    move-result-object p2

    invoke-virtual {p1}, Lth/B;->z()Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    array-length v1, p2

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    array-length v2, v0

    invoke-static {v0, v3, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Loi/q;->f:Loi/t;

    invoke-virtual {p1}, Lth/B;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {p1}, Lth/B;->x()Lhi/b;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Loi/t;->c(Lhi/b;Lhi/b;)V

    invoke-virtual {p1}, Lth/B;->v()Loh/s;

    move-result-object p2

    invoke-virtual {p2}, Loh/s;->O()I

    move-result p2

    :cond_0
    iget-object v0, p0, Loi/q;->f:Loi/t;

    invoke-interface {v0, v1}, Loi/t;->a([B)[B

    move-result-object v1

    add-int/lit8 p2, p2, -0x1

    if-gtz p2, :cond_0

    new-instance p2, Loi/q$a;

    invoke-direct {p2, p0, p1, v1}, Loi/q$a;-><init>(Loi/q;Lth/B;[B)V

    return-object p2
.end method

.method public final f()Lth/B;
    .locals 5

    iget v0, p0, Loi/q;->d:I

    new-array v0, v0, [B

    iget-object v1, p0, Loi/q;->e:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Loi/q;->e:Ljava/security/SecureRandom;

    :cond_0
    iget-object v1, p0, Loi/q;->e:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lth/B;

    iget-object v2, p0, Loi/q;->a:Lhi/b;

    iget v3, p0, Loi/q;->b:I

    iget-object v4, p0, Loi/q;->c:Lhi/b;

    invoke-direct {v1, v0, v2, v3, v4}, Lth/B;-><init>([BLhi/b;ILhi/b;)V

    return-object v1
.end method

.method public g(I)Loi/q;
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Loi/q;->d(I)V

    iput p1, p0, Loi/q;->b:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iteration count must be at least 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lth/B;)Loi/q;
    .locals 1

    invoke-virtual {p1}, Lth/B;->v()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    invoke-virtual {p0, v0}, Loi/q;->d(I)V

    iput-object p1, p0, Loi/q;->g:Lth/B;

    return-object p0
.end method

.method public i(I)Loi/q;
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    iput p1, p0, Loi/q;->d:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "salt length must be at least 8 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/security/SecureRandom;)Loi/q;
    .locals 0

    iput-object p1, p0, Loi/q;->e:Ljava/security/SecureRandom;

    return-object p0
.end method
