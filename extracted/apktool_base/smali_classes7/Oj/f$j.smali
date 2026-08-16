.class public LOj/f$j;
.super LOj/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-static {v0}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->j()LBi/y;

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->j()LBi/y;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {p0, v0, v3, v1, v2}, LOj/f$d;-><init>(LBi/f;ILBi/y;LBi/y;)V

    return-void
.end method
