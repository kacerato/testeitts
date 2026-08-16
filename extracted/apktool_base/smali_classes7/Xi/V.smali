.class public LXi/V;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:LXi/W;


# direct methods
.method public constructor <init>(ZLXi/W;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, LXi/V;->c:LXi/W;

    return-void
.end method


# virtual methods
.method public d()LXi/W;
    .locals 1

    iget-object v0, p0, LXi/V;->c:LXi/W;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LXi/V;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LXi/V;

    iget-object v0, p0, LXi/V;->c:LXi/W;

    invoke-virtual {p1}, LXi/V;->d()LXi/W;

    move-result-object p1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0, p1}, LXi/W;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LXi/V;->c:LXi/W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LXi/W;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
