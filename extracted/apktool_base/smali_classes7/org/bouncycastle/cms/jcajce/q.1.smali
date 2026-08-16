.class public Lorg/bouncycastle/cms/jcajce/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/q$a;
    }
.end annotation


# instance fields
.field public final a:Loh/x;

.field public final b:I

.field public c:Lorg/bouncycastle/cms/jcajce/c;

.field public d:Ljava/security/AlgorithmParameters;

.field public e:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Loh/x;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/q;-><init>(Loh/x;I)V

    return-void
.end method

.method public constructor <init>(Loh/x;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/q;->c:Lorg/bouncycastle/cms/jcajce/c;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/q;->a:Loh/x;

    iput p2, p0, Lorg/bouncycastle/cms/jcajce/q;->b:I

    return-void
.end method

.method public static synthetic a(Lorg/bouncycastle/cms/jcajce/q;)Lorg/bouncycastle/cms/jcajce/c;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/jcajce/q;->c:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method


# virtual methods
.method public b()LQk/A;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v6, Lorg/bouncycastle/cms/jcajce/q$a;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/q;->a:Loh/x;

    iget v3, p0, Lorg/bouncycastle/cms/jcajce/q;->b:I

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/q;->d:Ljava/security/AlgorithmParameters;

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/q;->e:Ljava/security/SecureRandom;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/cms/jcajce/q$a;-><init>(Lorg/bouncycastle/cms/jcajce/q;Loh/x;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-object v6
.end method

.method public c(Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/cms/jcajce/q;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/q;->d:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/q;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/q;->c:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public e(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/q;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/q;->c:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public f(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/q;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/q;->e:Ljava/security/SecureRandom;

    return-object p0
.end method
