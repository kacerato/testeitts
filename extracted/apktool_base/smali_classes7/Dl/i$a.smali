.class public LDl/i$a;
.super LDl/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v0

    new-instance v1, LRl/j;

    invoke-direct {v1}, LRl/j;-><init>()V

    invoke-direct {p0, v0, v1}, LDl/i;-><init>(LBi/y;LRl/j;)V

    return-void
.end method
