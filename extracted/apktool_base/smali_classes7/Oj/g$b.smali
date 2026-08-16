.class public LOj/g$b;
.super LOj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LEi/a;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->h()LBi/y;

    move-result-object v1

    invoke-direct {v0, v1}, LEi/a;-><init>(LBi/y;)V

    const-string v1, "X25519UwithSHA256CKDF"

    invoke-direct {p0, v1, v0}, LOj/g;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method
