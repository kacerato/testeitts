.class public LZj/V$f;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LLi/G0;

    invoke-direct {v0}, LLi/G0;-><init>()V

    const/16 v1, 0x19

    const/16 v2, 0x100

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/c;-><init>(LBi/Y;II)V

    return-void
.end method
