.class public Lorg/bouncycastle/operator/jcajce/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/operator/jcajce/d$b;
    }
.end annotation


# instance fields
.field public a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/d;

    invoke-direct {v1}, Ldk/d;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/d;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-void
.end method

.method public static synthetic a(Lorg/bouncycastle/operator/jcajce/d;)Lorg/bouncycastle/operator/jcajce/OperatorHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/d;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method


# virtual methods
.method public b()LQk/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/d$a;

    invoke-direct {v0, p0}, Lorg/bouncycastle/operator/jcajce/d$a;-><init>(Lorg/bouncycastle/operator/jcajce/d;)V

    return-object v0
.end method

.method public c(Ldk/f;)Lorg/bouncycastle/operator/jcajce/d;
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/d;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/d;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/i;

    invoke-direct {v1, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/d;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public e(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/d;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/k;

    invoke-direct {v1, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/d;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method
