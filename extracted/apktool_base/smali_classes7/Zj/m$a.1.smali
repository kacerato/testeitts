.class public LZj/m$a;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LTi/m;

    new-instance v1, LLi/E;

    invoke-direct {v1}, LLi/E;-><init>()V

    invoke-direct {v0, v1}, LTi/m;-><init>(LBi/f;)V

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/f;ZI)V

    return-void
.end method
