.class public LKl/c$b;
.super LKl/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, LIi/O;

    invoke-direct {v0}, LIi/O;-><init>()V

    sget-object v1, LSh/d;->h:Loh/x;

    new-instance v2, Lnl/g;

    new-instance v3, LIi/P;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, LIi/P;-><init>(I)V

    new-instance v4, LIi/O;

    invoke-direct {v4}, LIi/O;-><init>()V

    invoke-direct {v2, v3, v4}, Lnl/g;-><init>(LBi/y;LBi/y;)V

    invoke-direct {p0, v0, v1, v2}, LKl/c;-><init>(LBi/y;Loh/x;Lnl/g;)V

    return-void
.end method
