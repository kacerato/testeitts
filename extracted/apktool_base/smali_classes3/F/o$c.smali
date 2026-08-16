.class public LF/o$c;
.super LF/d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF/d<",
        "LF/o$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LF/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()LF/m;
    .locals 1

    invoke-virtual {p0}, LF/o$c;->d()LF/o$b;

    move-result-object v0

    return-object v0
.end method

.method public d()LF/o$b;
    .locals 1

    new-instance v0, LF/o$b;

    invoke-direct {v0, p0}, LF/o$b;-><init>(LF/o$c;)V

    return-object v0
.end method

.method public e(ILandroid/graphics/Bitmap$Config;)LF/o$b;
    .locals 1

    invoke-virtual {p0}, LF/d;->b()LF/m;

    move-result-object v0

    check-cast v0, LF/o$b;

    invoke-virtual {v0, p1, p2}, LF/o$b;->b(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
