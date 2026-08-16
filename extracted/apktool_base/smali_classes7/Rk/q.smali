.class public LRk/q;
.super LRk/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhi/b;LXi/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LRk/d;-><init>(Lhi/b;LXi/c;)V

    return-void
.end method


# virtual methods
.method public c(Loh/x;)LBi/b;
    .locals 1

    new-instance p1, LKi/c;

    new-instance v0, LLi/e0;

    invoke-direct {v0}, LLi/e0;-><init>()V

    invoke-direct {p1, v0}, LKi/c;-><init>(LBi/b;)V

    return-object p1
.end method
