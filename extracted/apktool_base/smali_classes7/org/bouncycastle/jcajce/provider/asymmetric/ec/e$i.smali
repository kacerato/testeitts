.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$i;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LLi/l0;

    invoke-static {}, LIi/L;->x()LBi/O;

    move-result-object v1

    invoke-direct {v0, v1}, LLi/l0;-><init>(LBi/y;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;-><init>(LLi/l0;)V

    return-void
.end method
