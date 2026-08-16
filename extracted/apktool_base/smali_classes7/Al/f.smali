.class public LAl/f;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/Map;


# instance fields
.field public a:Lgl/g;

.field public b:Lgl/h;

.field public c:Ljava/security/SecureRandom;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAl/f;->e:Ljava/util/Map;

    sget-object v1, Lgl/j;->p:Lgl/j;

    const-string v2, "hqc-128"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAl/f;->e:Ljava/util/Map;

    sget-object v2, Lgl/j;->q:Lgl/j;

    const-string v3, "hqc-192"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAl/f;->e:Ljava/util/Map;

    sget-object v3, Lgl/j;->r:Lgl/j;

    const-string v4, "hqc-256"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAl/f;->e:Ljava/util/Map;

    sget-object v4, LOl/f;->c:LOl/f;

    invoke-virtual {v4}, LOl/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/f;->d:LOl/f;

    invoke-virtual {v1}, LOl/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LAl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/f;->e:LOl/f;

    invoke-virtual {v1}, LOl/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "HQC"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lgl/h;

    invoke-direct {v0}, Lgl/h;-><init>()V

    iput-object v0, p0, LAl/f;->b:Lgl/h;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LAl/f;->c:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LAl/f;->d:Z

    return-void
.end method

.method public static a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LOl/f;

    if-eqz v0, :cond_0

    check-cast p0, LOl/f;

    invoke-virtual {p0}, LOl/f;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, LMl/f;->c(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, LAl/f;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lgl/g;

    iget-object v1, p0, LAl/f;->c:Ljava/security/SecureRandom;

    sget-object v2, Lgl/j;->p:Lgl/j;

    invoke-direct {v0, v1, v2}, Lgl/g;-><init>(Ljava/security/SecureRandom;Lgl/j;)V

    iput-object v0, p0, LAl/f;->a:Lgl/g;

    iget-object v1, p0, LAl/f;->b:Lgl/h;

    invoke-virtual {v1, v0}, Lgl/h;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LAl/f;->d:Z

    :cond_0
    iget-object v0, p0, LAl/f;->b:Lgl/h;

    invoke-virtual {v0}, Lgl/h;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lgl/l;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lgl/k;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LAl/b;

    invoke-direct {v3, v1}, LAl/b;-><init>(Lgl/l;)V

    new-instance v1, LAl/a;

    invoke-direct {v1, v0}, LAl/a;-><init>(Lgl/k;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use AlgorithmParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, LAl/f;->a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lgl/g;

    sget-object v1, LAl/f;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgl/j;

    invoke-direct {p1, p2, v0}, Lgl/g;-><init>(Ljava/security/SecureRandom;Lgl/j;)V

    iput-object p1, p0, LAl/f;->a:Lgl/g;

    iget-object p2, p0, LAl/f;->b:Lgl/h;

    invoke-virtual {p2, p1}, Lgl/h;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LAl/f;->d:Z

    return-void

    :cond_0
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid ParameterSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
