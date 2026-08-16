.class public final LPe/b;
.super LXe/b;
.source "SourceFile"


# annotations
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
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lio/reactivex/internal/util/j;


# direct methods
.method public constructor <init>(LXe/b;LFe/o;ILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/b<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LXe/b;-><init>()V

    iput-object p1, p0, LPe/b;->a:LXe/b;

    const-string p1, "mapper"

    invoke-static {p2, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/o;

    iput-object p1, p0, LPe/b;->b:LFe/o;

    iput p3, p0, LPe/b;->c:I

    const-string p1, "errorMode"

    invoke-static {p4, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/internal/util/j;

    iput-object p1, p0, LPe/b;->d:Lio/reactivex/internal/util/j;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, LPe/b;->a:LXe/b;

    invoke-virtual {v0}, LXe/b;->F()I

    move-result v0

    return v0
.end method

.method public Q([Lhn/c;)V
    .locals 7
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
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, LPe/b;->b:LFe/o;

    iget v5, p0, LPe/b;->c:I

    iget-object v6, p0, LPe/b;->d:Lio/reactivex/internal/util/j;

    invoke-static {v3, v4, v5, v6}, LLe/w;->O8(Lhn/c;LFe/o;ILio/reactivex/internal/util/j;)Lhn/c;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LPe/b;->a:LXe/b;

    invoke-virtual {p1, v1}, LXe/b;->Q([Lhn/c;)V

    return-void
.end method
