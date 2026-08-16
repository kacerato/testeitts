.class public LYk/b;
.super LYk/a;
.source "SourceFile"


# instance fields
.field public final j:LYk/h;


# direct methods
.method public constructor <init>(LYk/h;LBi/y;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LYk/a;-><init>(LYk/g;LBi/y;)V

    iput-object p1, p0, LYk/b;->j:LYk/h;

    return-void
.end method


# virtual methods
.method public g()LXi/c;
    .locals 1

    iget-object v0, p0, LYk/b;->j:LYk/h;

    invoke-interface {v0}, LYk/h;->c()LXi/c;

    move-result-object v0

    return-object v0
.end method
