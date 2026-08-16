.class public final LPe/p;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPe/p$a;,
        LPe/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/b<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXe/b;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/b<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LPe/p;->c:LXe/b;

    iput-object p2, p0, LPe/p;->d:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LPe/p$b;

    iget-object v1, p0, LPe/p;->c:LXe/b;

    invoke-virtual {v1}, LXe/b;->F()I

    move-result v1

    iget-object v2, p0, LPe/p;->d:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1, v2}, LPe/p$b;-><init>(Lhn/c;ILjava/util/Comparator;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LPe/p;->c:LXe/b;

    iget-object v0, v0, LPe/p$b;->c:[LPe/p$a;

    invoke-virtual {p1, v0}, LXe/b;->Q([Lhn/c;)V

    return-void
.end method
