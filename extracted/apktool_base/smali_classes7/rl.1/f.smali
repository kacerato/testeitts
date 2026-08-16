.class public Lrl/f;
.super Lrl/e;
.source "SourceFile"


# instance fields
.field public final c:Lcl/j;

.field public final d:LXi/N0;


# direct methods
.method public constructor <init>(LXi/c;LXi/c;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lrl/e;-><init>(Z)V

    check-cast p1, Lcl/j;

    iput-object p1, p0, Lrl/f;->c:Lcl/j;

    check-cast p2, LXi/N0;

    iput-object p2, p0, Lrl/f;->d:LXi/N0;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lrl/e;-><init>(Z)V

    new-instance v1, Lcl/j;

    sget-object v2, Lcl/i;->g:Lcl/i;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x20

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcl/j;-><init>(Lcl/i;[B)V

    iput-object v1, p0, Lrl/f;->c:Lcl/j;

    new-instance v0, LXi/N0;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x20

    invoke-direct {v0, p1, v1}, LXi/N0;-><init>([BI)V

    iput-object v0, p0, Lrl/f;->d:LXi/N0;

    return-void
.end method


# virtual methods
.method public d()Lcl/j;
    .locals 1

    iget-object v0, p0, Lrl/f;->c:Lcl/j;

    return-object v0
.end method

.method public e()LXi/N0;
    .locals 1

    iget-object v0, p0, Lrl/f;->d:LXi/N0;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lrl/f;->c:Lcl/j;

    invoke-virtual {v0}, Lcl/j;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lrl/f;->d:LXi/N0;

    invoke-virtual {v1}, LXi/N0;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0
.end method
