.class public Lorg/bouncycastle/cms/jcajce/i$c;
.super Lorg/bouncycastle/cms/jcajce/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/jcajce/i$b;-><init>(Lorg/bouncycastle/cms/jcajce/i$a;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/i$c;->a:Ljava/lang/String;

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

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/i$c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/b;->f(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/operator/jcajce/b;->b(Ljava/security/PrivateKey;)LQk/f;

    move-result-object p1

    return-object p1
.end method

.method public b()LQk/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/d;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/d;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/i$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/d;->d(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/d;->b()LQk/q;

    move-result-object v0

    return-object v0
.end method
