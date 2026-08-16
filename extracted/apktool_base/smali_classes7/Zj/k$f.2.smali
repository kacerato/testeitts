.class public LZj/k$f;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LTi/c;

    new-instance v1, LLi/x;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, LLi/x;-><init>(I)V

    invoke-direct {v0, v1}, LTi/c;-><init>(LBi/f;)V

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/f;I)V

    return-void
.end method
