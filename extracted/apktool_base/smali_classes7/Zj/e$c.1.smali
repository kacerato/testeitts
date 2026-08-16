.class public LZj/e$c;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LTi/c;

    new-instance v1, LLi/k;

    invoke-direct {v1}, LLi/k;-><init>()V

    invoke-direct {v0, v1}, LTi/c;-><init>(LBi/f;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/f;I)V

    return-void
.end method
