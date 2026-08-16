.class public Ldj/j;
.super Ldj/e;
.source "SourceFile"


# instance fields
.field public b:Lzh/i;


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

    invoke-direct {p0, p1}, Ldj/j;-><init>(Luh/o;)V

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

    sget-object v0, Lzh/e;->f:Loh/x;

    invoke-virtual {p1}, Luh/o;->v()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/E;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lzh/i;->w(Ljava/lang/Object;)Lzh/i;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ldj/j;->b:Lzh/i;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lzh/i;->w(Ljava/lang/Object;)Lzh/i;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
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

    :cond_1
    new-instance p1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v0, "ContentInfo not a DVCS Response"

    invoke-direct {p1, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Loh/g;
    .locals 1

    iget-object v0, p0, Ldj/j;->b:Lzh/i;

    return-object v0
.end method
