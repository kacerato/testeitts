.class public LXi/b0;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:LXi/c0;


# direct methods
.method public constructor <init>(ZLXi/c0;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, LXi/b0;->c:LXi/c0;

    return-void
.end method


# virtual methods
.method public d()LXi/c0;
    .locals 1

    iget-object v0, p0, LXi/b0;->c:LXi/c0;

    return-object v0
.end method
