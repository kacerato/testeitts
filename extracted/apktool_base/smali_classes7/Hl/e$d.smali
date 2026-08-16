.class public LHl/e$d;
.super LHl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LIi/Q;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    new-instance v1, Lkl/o;

    invoke-direct {v1}, Lkl/o;-><init>()V

    invoke-direct {p0, v0, v1}, LHl/e;-><init>(LBi/y;Lkl/o;)V

    return-void
.end method
