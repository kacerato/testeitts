.class public LZj/a$m;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LBi/u;

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, LTi/g;->q(LBi/f;I)LTi/h;

    move-result-object v1

    invoke-direct {v0, v1}, LBi/u;-><init>(LBi/f;)V

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/h;I)V

    return-void
.end method
