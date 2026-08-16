.class public Lorg/bouncycastle/jce/provider/c$a;
.super Lorg/bouncycastle/jce/provider/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, LTi/c;

    new-instance v0, LLi/u;

    invoke-direct {v0}, LLi/u;-><init>()V

    invoke-direct {v1, v0}, LTi/c;-><init>(LBi/f;)V

    const/16 v4, 0x40

    const/16 v5, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/provider/c;-><init>(LBi/f;IIII)V

    return-void
.end method
