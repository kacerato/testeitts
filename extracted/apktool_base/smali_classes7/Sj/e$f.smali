.class public LSj/e$f;
.super LSj/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LSj/f;

    new-instance v1, LLi/e0;

    invoke-direct {v1}, LLi/e0;-><init>()V

    invoke-direct {v0, v1}, LSj/f;-><init>(LBi/b;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, LSj/e;-><init>(ZZLBi/b;)V

    return-void
.end method
