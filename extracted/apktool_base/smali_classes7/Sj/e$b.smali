.class public LSj/e$b;
.super LSj/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LLi/e0;

    invoke-direct {v0}, LLi/e0;-><init>()V

    invoke-direct {p0, v0}, LSj/e;-><init>(LBi/b;)V

    return-void
.end method
