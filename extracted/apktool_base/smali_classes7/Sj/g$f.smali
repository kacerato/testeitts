.class public LSj/g$f;
.super LSj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lbi/b;->d:Loh/x;

    new-instance v1, LIi/H;

    invoke-direct {v1}, LIi/H;-><init>()V

    new-instance v2, LKi/c;

    new-instance v3, LLi/e0;

    invoke-direct {v3}, LLi/e0;-><init>()V

    invoke-direct {v2, v3}, LKi/c;-><init>(LBi/b;)V

    invoke-direct {p0, v0, v1, v2}, LSj/g;-><init>(Loh/x;LBi/y;LBi/b;)V

    return-void
.end method
