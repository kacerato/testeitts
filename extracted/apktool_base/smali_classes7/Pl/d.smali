.class public LPl/d;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:LPl/f;


# direct methods
.method public constructor <init>(ZLPl/f;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, LPl/d;->c:LPl/f;

    return-void
.end method


# virtual methods
.method public d()LPl/f;
    .locals 1

    iget-object v0, p0, LPl/d;->c:LPl/f;

    return-object v0
.end method
