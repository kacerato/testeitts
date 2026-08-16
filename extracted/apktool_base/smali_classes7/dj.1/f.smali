.class public Ldj/f;
.super Ldj/e;
.source "SourceFile"


# instance fields
.field public b:Lzh/f;

.field public c:Ldj/i;

.field public d:Ldj/h;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->s()Luh/o;

    move-result-object p1

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/V;->B(Ljava/lang/Object;)Luh/V;

    move-result-object p1

    invoke-virtual {p1}, Luh/V;->A()Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Ldj/f;-><init>(Luh/o;)V

    return-void
.end method

.method public constructor <init>(Luh/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Ldj/e;-><init>(Luh/o;)V

    sget-object v0, Lzh/e;->e:Loh/x;

    invoke-virtual {p1}, Luh/o;->v()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/E;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lzh/f;->v(Ljava/lang/Object;)Lzh/f;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ldj/f;->b:Lzh/f;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lzh/f;->v(Ljava/lang/Object;)Lzh/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance p1, Ldj/i;

    iget-object v0, p0, Ldj/f;->b:Lzh/f;

    invoke-virtual {v0}, Lzh/f;->x()Lzh/g;

    move-result-object v0

    invoke-direct {p1, v0}, Ldj/i;-><init>(Lzh/g;)V

    iput-object p1, p0, Ldj/f;->c:Ldj/i;

    invoke-virtual {p1}, Ldj/i;->h()I

    move-result p1

    sget-object v0, Lzh/m;->c:Lzh/m;

    invoke-virtual {v0}, Lzh/m;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    new-instance p1, Ldj/d;

    iget-object v0, p0, Ldj/f;->b:Lzh/f;

    invoke-virtual {v0}, Lzh/f;->u()Lzh/k;

    move-result-object v0

    invoke-direct {p1, v0}, Ldj/d;-><init>(Lzh/k;)V

    :goto_2
    iput-object p1, p0, Ldj/f;->d:Ldj/h;

    goto :goto_3

    :cond_1
    sget-object v0, Lzh/m;->d:Lzh/m;

    invoke-virtual {v0}, Lzh/m;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    new-instance p1, Ldj/r;

    iget-object v0, p0, Ldj/f;->b:Lzh/f;

    invoke-virtual {v0}, Lzh/f;->u()Lzh/k;

    move-result-object v0

    invoke-direct {p1, v0}, Ldj/r;-><init>(Lzh/k;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lzh/m;->e:Lzh/m;

    invoke-virtual {v0}, Lzh/m;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    new-instance p1, Ldj/p;

    iget-object v0, p0, Ldj/f;->b:Lzh/f;

    invoke-virtual {v0}, Lzh/f;->u()Lzh/k;

    move-result-object v0

    invoke-direct {p1, v0}, Ldj/p;-><init>(Lzh/k;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lzh/m;->f:Lzh/m;

    invoke-virtual {v0}, Lzh/m;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    new-instance p1, Ldj/b;

    iget-object v0, p0, Ldj/f;->b:Lzh/f;

    invoke-virtual {v0}, Lzh/f;->u()Lzh/k;

    move-result-object v0

    invoke-direct {p1, v0}, Ldj/b;-><init>(Lzh/k;)V

    goto :goto_2

    :goto_3
    return-void

    :cond_4
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown service type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    new-instance p1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v0, "ContentInfo not a DVCS Request"

    invoke-direct {p1, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Loh/g;
    .locals 1

    iget-object v0, p0, Ldj/f;->b:Lzh/f;

    return-object v0
.end method

.method public c()Ldj/h;
    .locals 1

    iget-object v0, p0, Ldj/f;->d:Ldj/h;

    return-object v0
.end method

.method public d()Ldj/i;
    .locals 1

    iget-object v0, p0, Ldj/f;->c:Ldj/i;

    return-object v0
.end method

.method public e()Lhi/E;
    .locals 1

    iget-object v0, p0, Ldj/f;->b:Lzh/f;

    invoke-virtual {v0}, Lzh/f;->y()Lhi/E;

    move-result-object v0

    return-object v0
.end method
