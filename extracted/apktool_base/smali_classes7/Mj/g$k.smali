.class public LMj/g$k;
.super LMj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LEi/c;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v1

    invoke-direct {v0, v1}, LEi/c;-><init>(LBi/y;)V

    const-string v1, "DHwithRFC2631KDF"

    invoke-direct {p0, v1, v0}, LMj/g;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method
