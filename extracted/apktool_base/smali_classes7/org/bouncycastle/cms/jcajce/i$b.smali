.class public Lorg/bouncycastle/cms/jcajce/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/cms/jcajce/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/cms/jcajce/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/security/PrivateKey;)LQk/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/b;

    invoke-direct {v0, p1}, Lorg/bouncycastle/operator/jcajce/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/operator/jcajce/b;->b(Ljava/security/PrivateKey;)LQk/f;

    move-result-object p1

    return-object p1
.end method

.method public b()LQk/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/d;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/d;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/d;->b()LQk/q;

    move-result-object v0

    return-object v0
.end method
