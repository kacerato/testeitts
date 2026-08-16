.class public LMj/g$q;
.super LMj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LOi/z;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->h()LBi/y;

    move-result-object v1

    invoke-direct {v0, v1}, LOi/z;-><init>(LBi/y;)V

    const-string v1, "DHwithSHA256CKDF"

    invoke-direct {p0, v1, v0}, LMj/g;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method
