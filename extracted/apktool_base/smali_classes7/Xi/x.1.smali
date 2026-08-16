.class public LXi/x;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:LXi/z;


# direct methods
.method public constructor <init>(ZLXi/z;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, LXi/x;->c:LXi/z;

    return-void
.end method


# virtual methods
.method public d()LXi/z;
    .locals 1

    iget-object v0, p0, LXi/x;->c:LXi/z;

    return-object v0
.end method
