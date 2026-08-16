.class public LTk/b;
.super LSk/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfi/d;LXi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/crypto/util/w;->a(LXi/c;)Lhi/h0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LSk/f;-><init>(Lfi/d;Lhi/h0;)V

    return-void
.end method
