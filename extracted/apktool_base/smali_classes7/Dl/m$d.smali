.class public LDl/m$d;
.super LDl/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->t()LBi/y;

    move-result-object v0

    new-instance v1, LRl/n;

    invoke-direct {v1}, LRl/n;-><init>()V

    invoke-direct {p0, v0, v1}, LDl/m;-><init>(LBi/y;LRl/n;)V

    return-void
.end method
