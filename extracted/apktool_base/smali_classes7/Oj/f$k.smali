.class public LOj/f$k;
.super LOj/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, LLi/v;

    invoke-direct {v0}, LLi/v;-><init>()V

    invoke-static {v0}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->j()LBi/y;

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->j()LBi/y;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3, v1, v2}, LOj/f$d;-><init>(LBi/f;ILBi/y;LBi/y;)V

    return-void
.end method
