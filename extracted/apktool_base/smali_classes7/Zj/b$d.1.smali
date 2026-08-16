.class public LZj/b$d;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, LLi/X;

    invoke-direct {v0}, LLi/X;-><init>()V

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/c;-><init>(LBi/Y;III)V

    return-void
.end method
