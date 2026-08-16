.class public LZj/m$d;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, LBi/h;

    new-instance v1, LTi/n;

    new-instance v2, LLi/E;

    invoke-direct {v2}, LLi/E;-><init>()V

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, LTi/n;-><init>(LBi/f;I)V

    invoke-direct {v0, v1}, LBi/h;-><init>(LBi/f;)V

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/h;ZI)V

    return-void
.end method
