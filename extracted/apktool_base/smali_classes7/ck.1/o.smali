.class public Lck/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final b:Ljava/security/PrivateKey;

.field public final c:[B

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lck/o;-><init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/o;->b:Ljava/security/PrivateKey;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lck/o;->c:[B

    iput-object p3, p0, Lck/o;->d:Ljava/lang/String;

    iput p4, p0, Lck/o;->e:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lck/o;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lck/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lck/o;->e:I

    return v0
.end method

.method public d()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lck/o;->b:Ljava/security/PrivateKey;

    return-object v0
.end method
