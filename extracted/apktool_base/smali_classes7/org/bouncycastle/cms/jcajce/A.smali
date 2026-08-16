.class public abstract Lorg/bouncycastle/cms/jcajce/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/p0;


# static fields
.field public static final j:[B


# instance fields
.field public final c:[B

.field public d:Ljava/security/PrivateKey;

.field public e:Lorg/bouncycastle/cms/jcajce/c;

.field public f:Lorg/bouncycastle/cms/jcajce/c;

.field public g:Ljava/util/Map;

.field public h:Z

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0c14416e6f6e796d6f75732053656e64657220202020"

    invoke-static {v0}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/jcajce/A;->j:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->e:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->f:Lorg/bouncycastle/cms/jcajce/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->g:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/A;->h:Z

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/A;->d:Ljava/security/PrivateKey;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/A;->c:[B

    return-void
.end method

.method public static h(Lorg/bouncycastle/cms/q0;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/q0;->c()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Luh/z;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/q0;->b()Lfi/d;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/q0;->c()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Luh/z;-><init>(Lfi/d;Ljava/math/BigInteger;)V

    const-string p0, "DER"

    invoke-virtual {v0, p0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Loh/C0;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/q0;->d()[B

    move-result-object p0

    invoke-direct {v0, p0}, Loh/C0;-><init>([B)V

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g(Lhi/b;Lhi/b;[B)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->e:Lorg/bouncycastle/cms/jcajce/c;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/A;->d:Ljava/security/PrivateKey;

    sget-object v2, Lorg/bouncycastle/cms/jcajce/A;->j:[B

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/A;->c:[B

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/bouncycastle/cms/jcajce/c;->e(Lhi/b;Ljava/security/PrivateKey;[B[B)Lorg/bouncycastle/operator/jcajce/i;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->e:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/operator/jcajce/i;->b(Lhi/b;[B)LQk/r;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/bouncycastle/cms/jcajce/c;->x(Lhi/b;LQk/r;)Ljava/security/Key;

    move-result-object p1

    iget-boolean p3, p0, Lorg/bouncycastle/cms/jcajce/A;->h:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/A;->e:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3, p2, p1}, Lorg/bouncycastle/cms/jcajce/c;->A(Lhi/b;Ljava/security/Key;)V
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception unwrapping key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public i(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/A;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/A;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->c(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/A;->f:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public k(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/A;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->d(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/A;->f:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public l(Z)Lorg/bouncycastle/cms/jcajce/A;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/A;->h:Z

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/A;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->e:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->f:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public n(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/A;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->e:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/A;->f:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method
