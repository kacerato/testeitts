.class public LSl/d;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:LSl/e;


# direct methods
.method public constructor <init>(ZLSl/e;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, LSl/d;->c:LSl/e;

    return-void
.end method


# virtual methods
.method public d()LSl/e;
    .locals 1

    iget-object v0, p0, LSl/d;->c:LSl/e;

    return-object v0
.end method
