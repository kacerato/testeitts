.class public LMj/g$g;
.super LMj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LCi/d;

    invoke-direct {v0}, LCi/d;-><init>()V

    new-instance v1, LEi/a;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->j()LBi/y;

    move-result-object v2

    invoke-direct {v1, v2}, LEi/a;-><init>(LBi/y;)V

    const-string v2, "DHUwithSHA384CKDF"

    invoke-direct {p0, v2, v0, v1}, LMj/g;-><init>(Ljava/lang/String;LCi/d;LBi/w;)V

    return-void
.end method
