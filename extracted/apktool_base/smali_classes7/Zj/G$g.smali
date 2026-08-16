.class public LZj/G$g;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, LBi/h;

    new-instance v1, LTi/C;

    new-instance v2, LLi/o0;

    invoke-direct {v2}, LLi/o0;-><init>()V

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3}, LTi/C;-><init>(LBi/f;I)V

    invoke-direct {v0, v1}, LBi/h;-><init>(LBi/f;)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/h;I)V

    return-void
.end method
