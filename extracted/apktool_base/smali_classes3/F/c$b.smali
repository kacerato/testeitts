.class public LF/c$b;
.super LF/d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF/d<",
        "LF/c$a;",
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

    invoke-virtual {p0}, LF/c$b;->d()LF/c$a;

    move-result-object v0

    return-object v0
.end method

.method public d()LF/c$a;
    .locals 1

    new-instance v0, LF/c$a;

    invoke-direct {v0, p0}, LF/c$a;-><init>(LF/c$b;)V

    return-object v0
.end method

.method public e(IILandroid/graphics/Bitmap$Config;)LF/c$a;
    .locals 1

    invoke-virtual {p0}, LF/d;->b()LF/m;

    move-result-object v0

    check-cast v0, LF/c$a;

    invoke-virtual {v0, p1, p2, p3}, LF/c$a;->b(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
