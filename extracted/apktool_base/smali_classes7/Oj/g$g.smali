.class public LOj/g$g;
.super LOj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LEi/a;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->j()LBi/y;

    move-result-object v1

    invoke-direct {v0, v1}, LEi/a;-><init>(LBi/y;)V

    const-string v1, "X25519withSHA384CKDF"

    invoke-direct {p0, v1, v0}, LOj/g;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method
