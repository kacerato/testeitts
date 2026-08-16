.class public final LPe/j;
.super LXe/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPe/j$a;,
        LPe/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LXe/b<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:LXe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXe/b;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/b<",
            "TT;>;",
            "LFe/o<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LXe/b;-><init>()V

    iput-object p1, p0, LPe/j;->a:LXe/b;

    iput-object p2, p0, LPe/j;->b:LFe/o;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, LPe/j;->a:LXe/b;

    invoke-virtual {v0}, LXe/b;->F()I

    move-result v0

    return v0
.end method

.method public Q([Lhn/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, LXe/b;->U([Lhn/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lhn/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, LIe/a;

    if-eqz v4, :cond_1

    new-instance v4, LPe/j$a;

    check-cast v3, LIe/a;

    iget-object v5, p0, LPe/j;->b:LFe/o;

    invoke-direct {v4, v3, v5}, LPe/j$a;-><init>(LIe/a;LFe/o;)V

    aput-object v4, v1, v2

    goto :goto_1

    :cond_1
    new-instance v4, LPe/j$b;

    iget-object v5, p0, LPe/j;->b:LFe/o;

    invoke-direct {v4, v3, v5}, LPe/j$b;-><init>(Lhn/c;LFe/o;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, LPe/j;->a:LXe/b;

    invoke-virtual {p1, v1}, LXe/b;->Q([Lhn/c;)V

    return-void
.end method
