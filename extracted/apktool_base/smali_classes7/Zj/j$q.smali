.class public LZj/j$q;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LLi/b0;

    new-instance v1, LLi/v;

    invoke-direct {v1}, LLi/v;-><init>()V

    invoke-direct {v0, v1}, LLi/b0;-><init>(LBi/f;)V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(LBi/Z;I)V

    return-void
.end method
