.class public LF/p$b;
.super LF/d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF/d<",
        "LF/p$a;",
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

    invoke-virtual {p0}, LF/p$b;->d()LF/p$a;

    move-result-object v0

    return-object v0
.end method

.method public d()LF/p$a;
    .locals 1

    new-instance v0, LF/p$a;

    invoke-direct {v0, p0}, LF/p$a;-><init>(LF/p$b;)V

    return-object v0
.end method

.method public e(I)LF/p$a;
    .locals 1

    invoke-super {p0}, LF/d;->b()LF/m;

    move-result-object v0

    check-cast v0, LF/p$a;

    invoke-virtual {v0, p1}, LF/p$a;->b(I)V

    return-object v0
.end method
