.class public LSj/e$a;
.super LSj/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LKi/a;

    new-instance v1, LLi/e0;

    invoke-direct {v1}, LLi/e0;-><init>()V

    invoke-direct {v0, v1}, LKi/a;-><init>(LBi/b;)V

    invoke-direct {p0, v0}, LSj/e;-><init>(LBi/b;)V

    return-void
.end method
