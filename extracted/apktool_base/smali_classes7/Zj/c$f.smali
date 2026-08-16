.class public LZj/c$f;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LTi/e;

    new-instance v1, LLi/f;

    invoke-direct {v1}, LLi/f;-><init>()V

    invoke-direct {v0, v1}, LTi/e;-><init>(LBi/f;)V

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LTi/a;ZI)V

    return-void
.end method
