.class public LSk/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/E;


# direct methods
.method public constructor <init>(LXh/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LXh/g;->v()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->O1:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LXh/g;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, LSk/m;->a:Loh/E;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "encryptedData requires constructor with decryptor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(LXh/g;LQk/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LXh/g;->v()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->O1:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/v;

    invoke-static {p1}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/v;-><init>(Luh/o;)V

    :try_start_0
    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/v;->a(LQk/u;)[B

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, LSk/m;->a:Loh/E;
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to extract data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encryptedData requires constructor with decryptor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()[LSk/k;
    .locals 4

    iget-object v0, p0, LSk/m;->a:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [LSk/k;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LSk/m;->a:Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v2, LSk/k;

    iget-object v3, p0, LSk/m;->a:Loh/E;

    invoke-virtual {v3, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, LXh/C;->y(Ljava/lang/Object;)LXh/C;

    move-result-object v3

    invoke-direct {v2, v3}, LSk/k;-><init>(LXh/C;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
