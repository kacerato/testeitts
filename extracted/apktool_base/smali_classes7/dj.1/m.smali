.class public Ldj/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/bouncycastle/cms/P;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/P;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldj/m;->a:Lorg/bouncycastle/cms/P;

    return-void
.end method


# virtual methods
.method public a(Ldj/e;)Lorg/bouncycastle/cms/O;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ldj/e;->a()Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Ldj/m;->a:Lorg/bouncycastle/cms/P;

    new-instance v2, Lorg/bouncycastle/cms/G;

    invoke-virtual {p1}, Ldj/e;->b()Loh/x;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lorg/bouncycastle/cms/G;-><init>(Loh/x;[B)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/bouncycastle/cms/P;->o(Lorg/bouncycastle/cms/V;Z)Lorg/bouncycastle/cms/O;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSException;

    const-string v1, "Could not encode DVCS request"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSException;

    const-string v1, "Could not sign DVCS request"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
