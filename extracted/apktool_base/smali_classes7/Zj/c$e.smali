.class public LZj/c$e;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LTi/c;

    new-instance v1, LLi/f;

    invoke-direct {v1}, LLi/f;-><init>()V

    invoke-direct {v0, v1}, LTi/c;-><init>(LBi/f;)V

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/f;I)V

    return-void
.end method
