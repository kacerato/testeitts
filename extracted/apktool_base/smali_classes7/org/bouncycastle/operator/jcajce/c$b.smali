.class public Lorg/bouncycastle/operator/jcajce/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/c;->f(Ljava/security/PublicKey;)LQk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/security/PublicKey;

.field public final synthetic b:Lorg/bouncycastle/operator/jcajce/c;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/c;Ljava/security/PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/c$b;->b:Lorg/bouncycastle/operator/jcajce/c;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/c$b;->a:Ljava/security/PublicKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)LQk/g;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, LQh/c;->P:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/c$b;->b:Lorg/bouncycastle/operator/jcajce/c;

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/c$b;->a:Ljava/security/PublicKey;

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/operator/jcajce/c;->a(Lorg/bouncycastle/operator/jcajce/c;Lhi/b;Ljava/security/PublicKey;)LQk/g;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/c$b;->a:Ljava/security/PublicKey;

    instance-of v1, v0, LHj/e;

    if-eqz v1, :cond_3

    check-cast v0, LHj/e;

    invoke-virtual {v0}, LHj/e;->a()Loh/x;

    move-result-object v0

    sget-object v1, LQh/c;->Q:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/c$b;->a:Ljava/security/PublicKey;

    check-cast v0, LHj/e;

    invoke-virtual {v0}, LHj/e;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/c$b;->b:Lorg/bouncycastle/operator/jcajce/c;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    invoke-static {v2, p1, v3}, Lorg/bouncycastle/operator/jcajce/c;->d(Lorg/bouncycastle/operator/jcajce/c;Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/c$b;->b:Lorg/bouncycastle/operator/jcajce/c;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    invoke-static {v3, p1, v4}, Lorg/bouncycastle/operator/jcajce/c;->c(Lorg/bouncycastle/operator/jcajce/c;Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lorg/bouncycastle/operator/jcajce/c$d;

    invoke-direct {v4, p1, v2, v3}, Lorg/bouncycastle/operator/jcajce/c$d;-><init>(Lhi/b;Ljava/security/Signature;Ljava/security/Signature;)V

    return-object v4

    :cond_1
    new-instance v3, Lorg/bouncycastle/operator/jcajce/c$e;

    invoke-direct {v3, p1, v2}, Lorg/bouncycastle/operator/jcajce/c$e;-><init>(Lhi/b;Ljava/security/Signature;)V
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string v0, "no matching algorithm found for key"

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/c$b;->b:Lorg/bouncycastle/operator/jcajce/c;

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/c$b;->a:Ljava/security/PublicKey;

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/operator/jcajce/c;->d(Lorg/bouncycastle/operator/jcajce/c;Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/c$b;->b:Lorg/bouncycastle/operator/jcajce/c;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/c$b;->a:Ljava/security/PublicKey;

    invoke-static {v1, p1, v2}, Lorg/bouncycastle/operator/jcajce/c;->c(Lorg/bouncycastle/operator/jcajce/c;Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lorg/bouncycastle/operator/jcajce/c$d;

    invoke-direct {v2, p1, v0, v1}, Lorg/bouncycastle/operator/jcajce/c$d;-><init>(Lhi/b;Ljava/security/Signature;Ljava/security/Signature;)V

    return-object v2

    :cond_4
    new-instance v1, Lorg/bouncycastle/operator/jcajce/c$e;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/operator/jcajce/c$e;-><init>(Lhi/b;Ljava/security/Signature;)V

    return-object v1
.end method

.method public b()Lli/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
