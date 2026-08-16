.class public LLi/d;
.super LLi/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-direct {p0, v0}, LLi/c0;-><init>(LBi/f;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LLi/c0;-><init>(LBi/f;Z)V

    return-void
.end method
