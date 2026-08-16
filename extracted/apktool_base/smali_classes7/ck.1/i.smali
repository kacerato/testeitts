.class public Lck/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final b:Lorg/bouncycastle/crypto/util/r;

.field public final c:[B

.field public final d:Z


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lck/i;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/crypto/util/r;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/util/r;-><init>(I)V

    invoke-direct {p0, v0, p2, p3}, Lck/i;-><init>(Lorg/bouncycastle/crypto/util/r;[BZ)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/util/r;[BZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/i;->b:Lorg/bouncycastle/crypto/util/r;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lck/i;->c:[B

    iput-boolean p3, p0, Lck/i;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lck/i;->b:Lorg/bouncycastle/crypto/util/r;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/r;->d()I

    move-result v0

    return v0
.end method

.method public b()Lorg/bouncycastle/crypto/util/r;
    .locals 1

    iget-object v0, p0, Lck/i;->b:Lorg/bouncycastle/crypto/util/r;

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lck/i;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lck/i;->d:Z

    return v0
.end method
