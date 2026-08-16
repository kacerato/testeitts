.class public LSj/g$r;
.super LSj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LIi/B;

    invoke-direct {v0}, LIi/B;-><init>()V

    new-instance v1, LKi/c;

    new-instance v2, LLi/e0;

    invoke-direct {v2}, LLi/e0;-><init>()V

    invoke-direct {v1, v2}, LKi/c;-><init>(LBi/b;)V

    invoke-direct {p0, v0, v1}, LSj/g;-><init>(LBi/y;LBi/b;)V

    return-void
.end method
