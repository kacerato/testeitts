.class public LXi/g;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:LXi/h;


# direct methods
.method public constructor <init>(ZLXi/h;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, LXi/g;->c:LXi/h;

    return-void
.end method


# virtual methods
.method public d()LXi/h;
    .locals 1

    iget-object v0, p0, LXi/g;->c:LXi/h;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LXi/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LXi/g;

    iget-object v0, p0, LXi/g;->c:LXi/h;

    invoke-virtual {p1}, LXi/g;->d()LXi/h;

    move-result-object p1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0, p1}, LXi/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, LXi/c;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LXi/g;->c:LXi/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LXi/h;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method
