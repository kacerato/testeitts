.class public LZj/k$l;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, LBi/h;

    new-instance v1, LTi/g;

    new-instance v2, LLi/x;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, LLi/x;-><init>(I)V

    invoke-direct {v1, v2, v3}, LTi/g;-><init>(LBi/f;I)V

    invoke-direct {v0, v1}, LBi/h;-><init>(LBi/f;)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/h;I)V

    return-void
.end method
