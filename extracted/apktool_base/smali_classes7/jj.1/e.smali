.class public Ljj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/bouncycastle/operator/jcajce/d;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:[C

.field public e:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/d;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/d;-><init>()V

    iput-object v0, p0, Ljj/e;->a:Lorg/bouncycastle/operator/jcajce/d;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Ljj/e;->e:Ljava/security/SecureRandom;

    iput-object p1, p0, Ljj/e;->b:Ljava/lang/String;

    iput-object p2, p0, Ljj/e;->c:Ljava/lang/String;

    iput-object p3, p0, Ljj/e;->d:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Ljj/e;-><init>(Ljava/lang/String;Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a()Lij/r;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v6, Lij/r;

    iget-object v1, p0, Ljj/e;->b:Ljava/lang/String;

    iget-object v2, p0, Ljj/e;->c:Ljava/lang/String;

    iget-object v3, p0, Ljj/e;->d:[C

    iget-object v4, p0, Ljj/e;->e:Ljava/security/SecureRandom;

    iget-object v0, p0, Ljj/e;->a:Lorg/bouncycastle/operator/jcajce/d;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/d;->b()LQk/q;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lij/r;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;LQk/q;)V

    return-object v6
.end method

.method public b(Ljava/security/SecureRandom;)Ljj/e;
    .locals 0

    iput-object p1, p0, Ljj/e;->e:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljj/e;
    .locals 1

    iget-object v0, p0, Ljj/e;->a:Lorg/bouncycastle/operator/jcajce/d;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/d;->d(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/d;

    return-object p0
.end method

.method public d(Ljava/security/Provider;)Ljj/e;
    .locals 1

    iget-object v0, p0, Ljj/e;->a:Lorg/bouncycastle/operator/jcajce/d;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/d;->e(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/d;

    return-object p0
.end method
