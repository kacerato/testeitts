.class public LRk/c;
.super LRk/w;
.source "SourceFile"


# direct methods
.method public constructor <init>(LXi/o0;)V
    .locals 2

    invoke-static {p1}, LRk/a;->a(LXi/o0;)Lhi/b;

    move-result-object v0

    new-instance v1, LLi/d;

    invoke-direct {v1}, LLi/d;-><init>()V

    invoke-direct {p0, v0, v1, p1}, LRk/w;-><init>(Lhi/b;LBi/Z;LXi/o0;)V

    return-void
.end method
