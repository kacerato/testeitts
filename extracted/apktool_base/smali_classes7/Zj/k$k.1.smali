.class public LZj/k$k;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LTi/w;

    new-instance v1, LLi/x;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, LLi/x;-><init>(I)V

    invoke-direct {v0, v1}, LTi/w;-><init>(LBi/f;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LTi/a;)V

    return-void
.end method
