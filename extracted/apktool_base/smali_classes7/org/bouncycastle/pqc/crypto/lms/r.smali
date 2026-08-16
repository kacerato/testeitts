.class public Lorg/bouncycastle/pqc/crypto/lms/r;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Lorg/bouncycastle/pqc/crypto/lms/u;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/u;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/C;->c(Lorg/bouncycastle/pqc/crypto/lms/u;)I

    move-result v0

    invoke-direct {p0, p2, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/r;->d:Lorg/bouncycastle/pqc/crypto/lms/u;

    return-void
.end method


# virtual methods
.method public c()Lorg/bouncycastle/pqc/crypto/lms/u;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/r;->d:Lorg/bouncycastle/pqc/crypto/lms/u;

    return-object v0
.end method
