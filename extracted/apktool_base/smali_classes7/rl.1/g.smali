.class public Lrl/g;
.super Lrl/e;
.source "SourceFile"


# instance fields
.field public final c:Lcl/k;

.field public final d:LXi/O0;


# direct methods
.method public constructor <init>(LXi/c;LXi/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lrl/e;-><init>(Z)V

    check-cast p1, Lcl/k;

    iput-object p1, p0, Lrl/g;->c:Lcl/k;

    check-cast p2, LXi/O0;

    iput-object p2, p0, Lrl/g;->d:LXi/O0;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lrl/e;-><init>(Z)V

    new-instance v1, Lcl/k;

    sget-object v2, Lcl/i;->g:Lcl/i;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x20

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcl/k;-><init>(Lcl/i;[B)V

    iput-object v1, p0, Lrl/g;->c:Lcl/k;

    new-instance v0, LXi/O0;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x20

    invoke-direct {v0, p1, v1}, LXi/O0;-><init>([BI)V

    iput-object v0, p0, Lrl/g;->d:LXi/O0;

    return-void
.end method


# virtual methods
.method public d()Lcl/k;
    .locals 1

    iget-object v0, p0, Lrl/g;->c:Lcl/k;

    return-object v0
.end method

.method public e()LXi/O0;
    .locals 1

    iget-object v0, p0, Lrl/g;->d:LXi/O0;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lrl/g;->c:Lcl/k;

    invoke-virtual {v0}, Lcl/k;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lrl/g;->d:LXi/O0;

    invoke-virtual {v1}, LXi/O0;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0
.end method
