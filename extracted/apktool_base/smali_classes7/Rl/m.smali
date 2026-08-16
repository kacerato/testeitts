.class public LRl/m;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:LRl/o;


# direct methods
.method public constructor <init>(ZLRl/o;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, LRl/m;->c:LRl/o;

    return-void
.end method


# virtual methods
.method public d()LRl/o;
    .locals 1

    iget-object v0, p0, LRl/m;->c:LRl/o;

    return-object v0
.end method
