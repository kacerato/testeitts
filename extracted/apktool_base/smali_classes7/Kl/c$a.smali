.class public LKl/c$a;
.super LKl/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v0, LIi/N;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, LIi/N;-><init>(I)V

    sget-object v2, LSh/d;->j:Loh/x;

    new-instance v3, Lnl/g;

    new-instance v4, LIi/N;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, LIi/N;-><init>(I)V

    new-instance v5, LIi/N;

    invoke-direct {v5, v1}, LIi/N;-><init>(I)V

    invoke-direct {v3, v4, v5}, Lnl/g;-><init>(LBi/y;LBi/y;)V

    invoke-direct {p0, v0, v2, v3}, LKl/c;-><init>(LBi/y;Loh/x;Lnl/g;)V

    return-void
.end method
