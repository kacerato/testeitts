.class public LFj/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/bouncycastle/operator/jcajce/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/d;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/d;-><init>()V

    iput-object v0, p0, LFj/g;->a:Lorg/bouncycastle/operator/jcajce/d;

    return-void
.end method


# virtual methods
.method public a(LDj/j;LEk/K$a;)LDj/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, LDj/m;

    iget-object v1, p0, LFj/g;->a:Lorg/bouncycastle/operator/jcajce/d;

    invoke-virtual {v1}, Lorg/bouncycastle/operator/jcajce/d;->b()LQk/q;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, LDj/m;-><init>(LDj/j;LQk/q;LEk/K$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)LFj/g;
    .locals 1

    iget-object v0, p0, LFj/g;->a:Lorg/bouncycastle/operator/jcajce/d;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/d;->d(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/d;

    return-object p0
.end method

.method public c(Ljava/security/Provider;)LFj/g;
    .locals 1

    iget-object v0, p0, LFj/g;->a:Lorg/bouncycastle/operator/jcajce/d;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/d;->e(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/d;

    return-object p0
.end method
