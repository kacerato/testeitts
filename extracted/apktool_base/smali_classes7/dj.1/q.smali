.class public Ldj/q;
.super Ldj/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lzh/h;

    sget-object v1, Lzh/m;->d:Lzh/m;

    invoke-direct {v0, v1}, Lzh/h;-><init>(Lzh/m;)V

    invoke-direct {p0, v0}, Ldj/g;-><init>(Lzh/h;)V

    return-void
.end method


# virtual methods
.method public i(Lorg/bouncycastle/cms/O;)Ldj/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lzh/k;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lzh/k;-><init>([B)V

    invoke-virtual {p0, v0}, Ldj/g;->b(Lzh/k;)Ldj/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/dvcs/DVCSException;

    const-string v1, "Failed to encode CMS signed data"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public j(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Ldj/g;->c:Lzh/h;

    new-instance v1, Lzh/j;

    invoke-direct {v1, p1}, Lzh/j;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lzh/h;->i(Lzh/j;)V

    return-void
.end method
