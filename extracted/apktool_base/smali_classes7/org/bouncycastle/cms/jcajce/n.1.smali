.class public Lorg/bouncycastle/cms/jcajce/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/n$b;,
        Lorg/bouncycastle/cms/jcajce/n$c;,
        Lorg/bouncycastle/cms/jcajce/n$d;
    }
.end annotation


# static fields
.field public static final h:LQk/I;

.field public static final i:[B


# instance fields
.field public final a:Loh/x;

.field public final b:I

.field public c:Lorg/bouncycastle/cms/jcajce/c;

.field public d:Ljava/security/SecureRandom;

.field public e:Lhi/b;

.field public f:Ljava/security/AlgorithmParameters;

.field public g:Loh/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LQk/l;->a:LQk/I;

    sput-object v0, Lorg/bouncycastle/cms/jcajce/n;->h:LQk/I;

    const-string v0, "The Cryptographic Message Syntax"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/jcajce/n;->i:[B

    return-void
.end method

.method public constructor <init>(Lhi/b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/cms/jcajce/n;->h:LQk/I;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-interface {v1, v2}, LQk/I;->b(Loh/x;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/jcajce/n;-><init>(Loh/x;I)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/n;->e:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/bouncycastle/cms/jcajce/n;->h:LQk/I;

    invoke-interface {v0, p1}, LQk/I;->b(Loh/x;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/n;-><init>(Loh/x;I)V

    return-void
.end method

.method public constructor <init>(Loh/x;I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/n;->c:Lorg/bouncycastle/cms/jcajce/c;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/n;->a:Loh/x;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/n;->h:LQk/I;

    invoke-interface {v0, p1}, LQk/I;->b(Loh/x;)I

    move-result v0

    sget-object v1, LXh/t;->n1:Loh/x;

    invoke-virtual {p1, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    const-string v2, "incorrect keySize for encryptionOID passed to builder."

    if-eqz v1, :cond_2

    const/16 p1, 0xa8

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/bouncycastle/cms/jcajce/n;->b:I

    goto :goto_2

    :cond_2
    sget-object v1, LWh/b;->e:Loh/x;

    invoke-virtual {p1, v1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x38

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-lez v0, :cond_6

    if-ne v0, p2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iput p2, p0, Lorg/bouncycastle/cms/jcajce/n;->b:I

    :goto_2
    return-void
.end method

.method public static synthetic a()[B
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/jcajce/n;->i:[B

    return-object v0
.end method

.method public static synthetic b(Lorg/bouncycastle/cms/jcajce/n;)Lorg/bouncycastle/cms/jcajce/c;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/jcajce/n;->c:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public static synthetic c(Lorg/bouncycastle/cms/jcajce/n;)Loh/x;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/jcajce/n;->g:Loh/x;

    return-object p0
.end method

.method public static synthetic d()Z
    .locals 1

    invoke-static {}, Lorg/bouncycastle/cms/jcajce/n;->f()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/n$a;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/n$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public e()LQk/F;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n;->f:Ljava/security/AlgorithmParameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n;->c:Lorg/bouncycastle/cms/jcajce/c;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n;->a:Loh/x;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;->z(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/n$b;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/n;->g:Loh/x;

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/n;->a:Loh/x;

    iget v5, p0, Lorg/bouncycastle/cms/jcajce/n;->b:I

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/n;->f:Ljava/security/AlgorithmParameters;

    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/n;->d:Ljava/security/SecureRandom;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/jcajce/n$b;-><init>(Lorg/bouncycastle/cms/jcajce/n;Loh/x;Loh/x;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/jcajce/n$d;

    iget-object v10, p0, Lorg/bouncycastle/cms/jcajce/n;->g:Loh/x;

    iget-object v11, p0, Lorg/bouncycastle/cms/jcajce/n;->a:Loh/x;

    iget v12, p0, Lorg/bouncycastle/cms/jcajce/n;->b:I

    iget-object v13, p0, Lorg/bouncycastle/cms/jcajce/n;->f:Ljava/security/AlgorithmParameters;

    iget-object v14, p0, Lorg/bouncycastle/cms/jcajce/n;->d:Ljava/security/SecureRandom;

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v14}, Lorg/bouncycastle/cms/jcajce/n$d;-><init>(Lorg/bouncycastle/cms/jcajce/n;Loh/x;Loh/x;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n;->e:Lhi/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Loh/A0;->c:Loh/A0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n;->c:Lorg/bouncycastle/cms/jcajce/c;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/n;->e:Lhi/b;

    invoke-virtual {v2}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/jcajce/c;->c(Loh/x;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/jcajce/n;->f:Ljava/security/AlgorithmParameters;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to process provided algorithmIdentifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n;->c:Lorg/bouncycastle/cms/jcajce/c;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n;->a:Loh/x;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;->z(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/cms/jcajce/n$b;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/n;->g:Loh/x;

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/n;->a:Loh/x;

    iget v5, p0, Lorg/bouncycastle/cms/jcajce/n;->b:I

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/n;->f:Ljava/security/AlgorithmParameters;

    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/n;->d:Ljava/security/SecureRandom;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/jcajce/n$b;-><init>(Lorg/bouncycastle/cms/jcajce/n;Loh/x;Loh/x;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-object v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/jcajce/n$d;

    iget-object v10, p0, Lorg/bouncycastle/cms/jcajce/n;->g:Loh/x;

    iget-object v11, p0, Lorg/bouncycastle/cms/jcajce/n;->a:Loh/x;

    iget v12, p0, Lorg/bouncycastle/cms/jcajce/n;->b:I

    iget-object v13, p0, Lorg/bouncycastle/cms/jcajce/n;->f:Ljava/security/AlgorithmParameters;

    iget-object v14, p0, Lorg/bouncycastle/cms/jcajce/n;->d:Ljava/security/SecureRandom;

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v14}, Lorg/bouncycastle/cms/jcajce/n$d;-><init>(Lorg/bouncycastle/cms/jcajce/n;Loh/x;Loh/x;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method public g(Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/cms/jcajce/n;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/n;->f:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public h(Z)Lorg/bouncycastle/cms/jcajce/n;
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Luh/l;->I8:Loh/x;

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/n;->g:Loh/x;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/n;->g:Loh/x;

    if-eqz p1, :cond_2

    sget-object v0, Luh/l;->I8:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SHA256 HKDF not enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/n;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/n;->c:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public j(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/n;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/n;->c:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public k(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/n;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/n;->d:Ljava/security/SecureRandom;

    return-object p0
.end method
