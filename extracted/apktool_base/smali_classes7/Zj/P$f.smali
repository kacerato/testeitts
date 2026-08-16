.class public LZj/P$f;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, LTi/c;

    new-instance v0, LLi/w0;

    invoke-direct {v0}, LLi/w0;-><init>()V

    invoke-direct {v1, v0}, LTi/c;-><init>(LBi/f;)V

    const/16 v4, 0x100

    const/16 v5, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/f;IIII)V

    return-void
.end method
