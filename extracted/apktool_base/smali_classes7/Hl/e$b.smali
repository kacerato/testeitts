.class public LHl/e$b;
.super LHl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LIi/N;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, LIi/N;-><init>(I)V

    new-instance v1, Lkl/o;

    invoke-direct {v1}, Lkl/o;-><init>()V

    invoke-direct {p0, v0, v1}, LHl/e;-><init>(LBi/y;Lkl/o;)V

    return-void
.end method
