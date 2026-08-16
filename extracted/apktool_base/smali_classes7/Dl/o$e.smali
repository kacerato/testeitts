.class public LDl/o$e;
.super LDl/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v0

    new-instance v1, LRl/p;

    invoke-direct {v1}, LRl/p;-><init>()V

    invoke-direct {p0, v0, v1}, LDl/o;-><init>(LBi/y;LRl/p;)V

    return-void
.end method
