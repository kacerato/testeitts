.class public LMj/g$w;
.super LMj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LCi/k;

    invoke-direct {v0}, LCi/k;-><init>()V

    new-instance v1, LOi/z;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v2

    invoke-direct {v1, v2}, LOi/z;-><init>(LBi/y;)V

    const-string v2, "MQVwithSHA1KDF"

    invoke-direct {p0, v2, v0, v1}, LMj/g;-><init>(Ljava/lang/String;LBi/e;LBi/w;)V

    return-void
.end method
