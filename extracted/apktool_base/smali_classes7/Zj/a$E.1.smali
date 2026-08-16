.class public LZj/a$E;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "E"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-static {v0}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object v2

    const/16 v5, 0xc0

    const/16 v6, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/f;IIII)V

    return-void
.end method
