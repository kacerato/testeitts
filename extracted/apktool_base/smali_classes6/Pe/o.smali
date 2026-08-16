.class public final LPe/o;
.super LXe/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPe/o$c;,
        LPe/o$d;,
        LPe/o$a;,
        LPe/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LXe/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:LXe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:LBe/J;

.field public final c:I


# direct methods
.method public constructor <init>(LXe/b;LBe/J;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/b<",
            "+TT;>;",
            "LBe/J;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, LXe/b;-><init>()V

    iput-object p1, p0, LPe/o;->a:LXe/b;

    iput-object p2, p0, LPe/o;->b:LBe/J;

    iput p3, p0, LPe/o;->c:I

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, LPe/o;->a:LXe/b;

    invoke-virtual {v0}, LXe/b;->F()I

    move-result v0

    return v0
.end method

.method public Q([Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, LXe/b;->U([Lhn/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lhn/c;

    iget-object v2, p0, LPe/o;->b:LBe/J;

    instance-of v3, v2, LSe/o;

    if-eqz v3, :cond_1

    check-cast v2, LSe/o;

    new-instance v3, LPe/o$b;

    invoke-direct {v3, p0, p1, v1}, LPe/o$b;-><init>(LPe/o;[Lhn/c;[Lhn/c;)V

    invoke-interface {v2, v0, v3}, LSe/o;->a(ILSe/o$a;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, LPe/o;->b:LBe/J;

    invoke-virtual {v3}, LBe/J;->c()LBe/J$c;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v1, v3}, LPe/o;->V(I[Lhn/c;[Lhn/c;LBe/J$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, LPe/o;->a:LXe/b;

    invoke-virtual {p1, v1}, LXe/b;->Q([Lhn/c;)V

    return-void
.end method

.method public V(I[Lhn/c;[Lhn/c;LBe/J$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lhn/c<",
            "-TT;>;[",
            "Lhn/c<",
            "TT;>;",
            "LBe/J$c;",
            ")V"
        }
    .end annotation

    aget-object p2, p2, p1

    new-instance v0, LRe/b;

    iget v1, p0, LPe/o;->c:I

    invoke-direct {v0, v1}, LRe/b;-><init>(I)V

    instance-of v1, p2, LIe/a;

    if-eqz v1, :cond_0

    new-instance v1, LPe/o$c;

    check-cast p2, LIe/a;

    iget v2, p0, LPe/o;->c:I

    invoke-direct {v1, p2, v2, v0, p4}, LPe/o$c;-><init>(LIe/a;ILRe/b;LBe/J$c;)V

    aput-object v1, p3, p1

    goto :goto_0

    :cond_0
    new-instance v1, LPe/o$d;

    iget v2, p0, LPe/o;->c:I

    invoke-direct {v1, p2, v2, v0, p4}, LPe/o$d;-><init>(Lhn/c;ILRe/b;LBe/J$c;)V

    aput-object v1, p3, p1

    :goto_0
    return-void
.end method
