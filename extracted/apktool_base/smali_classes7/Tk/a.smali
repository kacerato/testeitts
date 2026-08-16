.class public LTk/a;
.super LSk/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(LSk/e;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, LSk/e;->n()LXh/e;

    move-result-object p1

    invoke-direct {p0, p1}, LSk/e;-><init>(LXh/e;)V

    return-void
.end method

.method public constructor <init>(LXh/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LSk/e;-><init>(LXh/e;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, LSk/e;-><init>([B)V

    return-void
.end method


# virtual methods
.method public o()LXi/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, LSk/e;->i()Lhi/h0;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/q;->b(Lhi/h0;)LXi/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error extracting key encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
