.class public LZj/l$g;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LBi/h;

    new-instance v1, LTi/q;

    new-instance v2, LLi/C;

    invoke-direct {v2}, LLi/C;-><init>()V

    invoke-direct {v1, v2}, LTi/q;-><init>(LBi/f;)V

    invoke-direct {v0, v1}, LBi/h;-><init>(LBi/f;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/h;I)V

    return-void
.end method
