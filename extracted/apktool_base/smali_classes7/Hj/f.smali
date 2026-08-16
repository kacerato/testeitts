.class public LHj/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public final b:Lhi/E;

.field public final c:Lhi/b;

.field public final d:[B


# direct methods
.method public constructor <init>(Lhi/E;Lhi/b;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHj/f;->b:Lhi/E;

    iput-object p2, p0, LHj/f;->c:Lhi/b;

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LHj/f;->d:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Lhi/E;Ljava/security/MessageDigest;)V
    .locals 1

    .line 2
    invoke-virtual {p3}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldk/h;->a(Ljava/lang/String;)Lhi/b;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, LHj/f;-><init>(Lhi/E;Lhi/b;[B)V

    return-void
.end method

.method public constructor <init>(Lqh/e;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Lqh/e;->z()Lhi/E;

    move-result-object v0

    invoke-virtual {p1}, Lqh/e;->u()Lhi/b;

    move-result-object v1

    invoke-virtual {p1}, Lqh/e;->x()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, LHj/f;-><init>(Lhi/E;Lhi/b;[B)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "ExternalKey"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    :try_start_0
    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    sget-object v2, Lqh/a;->L1:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    new-instance v2, Lqh/e;

    iget-object v3, p0, LHj/f;->b:Lhi/E;

    iget-object v4, p0, LHj/f;->c:Lhi/b;

    iget-object v5, p0, LHj/f;->d:[B

    invoke-direct {v2, v3, v4, v5}, Lqh/e;-><init>(Lhi/E;Lhi/b;[B)V

    invoke-direct {v0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode composite key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method
