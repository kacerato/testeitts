.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$d;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LLi/l0;

    new-instance v1, LIi/e;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, LIi/e;-><init>(I)V

    invoke-direct {v0, v1}, LLi/l0;-><init>(LBi/y;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;-><init>(LLi/l0;)V

    return-void
.end method
