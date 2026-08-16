.class public LOj/f$f;
.super LOj/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->h()LBi/y;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->h()LBi/y;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LOj/f$b;-><init>(LBi/y;LBi/y;)V

    return-void
.end method
