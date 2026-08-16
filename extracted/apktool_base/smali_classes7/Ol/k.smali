.class public LOl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final b:Lorg/bouncycastle/pqc/crypto/lms/A;

.field public final c:Lorg/bouncycastle/pqc/crypto/lms/j;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOl/k;->b:Lorg/bouncycastle/pqc/crypto/lms/A;

    iput-object p2, p0, LOl/k;->c:Lorg/bouncycastle/pqc/crypto/lms/j;

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/pqc/crypto/lms/j;
    .locals 1

    iget-object v0, p0, LOl/k;->c:Lorg/bouncycastle/pqc/crypto/lms/j;

    return-object v0
.end method

.method public b()Lorg/bouncycastle/pqc/crypto/lms/A;
    .locals 1

    iget-object v0, p0, LOl/k;->b:Lorg/bouncycastle/pqc/crypto/lms/A;

    return-object v0
.end method
