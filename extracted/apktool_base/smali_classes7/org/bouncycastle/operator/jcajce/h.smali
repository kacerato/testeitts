.class public Lorg/bouncycastle/operator/jcajce/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldk/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/h;->a:Ldk/f;

    return-void
.end method

.method public static synthetic a(Lorg/bouncycastle/operator/jcajce/h;)Ldk/f;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/h;->a:Ldk/f;

    return-object p0
.end method


# virtual methods
.method public b([B)LQk/u;
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/operator/jcajce/h$a;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/operator/jcajce/h$a;-><init>(Lorg/bouncycastle/operator/jcajce/h;[B)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/h;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/h;->a:Ldk/f;

    return-object p0
.end method

.method public d(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/h;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/h;->a:Ldk/f;

    return-object p0
.end method
