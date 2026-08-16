.class public LZj/m$b;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LBi/h;

    new-instance v1, LTi/o;

    new-instance v2, LLi/E;

    invoke-direct {v2}, LLi/E;-><init>()V

    invoke-direct {v1, v2}, LTi/o;-><init>(LBi/f;)V

    invoke-direct {v0, v1}, LBi/h;-><init>(LBi/f;)V

    const/4 v1, 0x1

    const/16 v2, 0x40

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/h;ZI)V

    return-void
.end method
