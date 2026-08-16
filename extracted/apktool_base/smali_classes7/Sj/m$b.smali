.class public LSj/m$b;
.super LSj/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LIi/G;

    invoke-direct {v0}, LIi/G;-><init>()V

    new-instance v1, LLi/e0;

    invoke-direct {v1}, LLi/e0;-><init>()V

    invoke-direct {p0, v0, v1}, LSj/m;-><init>(LBi/y;LBi/b;)V

    return-void
.end method
