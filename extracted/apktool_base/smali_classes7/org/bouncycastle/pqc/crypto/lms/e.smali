.class public Lorg/bouncycastle/pqc/crypto/lms/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lorg/bouncycastle/pqc/crypto/lms/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->g:Lorg/bouncycastle/pqc/crypto/lms/d;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/c;->a(Lorg/bouncycastle/pqc/crypto/lms/d;)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object v0

    new-instance v1, LBi/c;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/f;->l()Lorg/bouncycastle/pqc/crypto/lms/g;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method public b(LBi/G;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/d;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->g:Lorg/bouncycastle/pqc/crypto/lms/d;

    return-void
.end method
