.class public final LPe/i;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPe/i$a;,
        LPe/i$d;,
        LPe/i$b;,
        LPe/i$c;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(LXe/b;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/b<",
            "+TT;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LPe/i;->c:LXe/b;

    iput p2, p0, LPe/i;->d:I

    iput-boolean p3, p0, LPe/i;->e:Z

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

    iget-boolean v0, p0, LPe/i;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, LPe/i$d;

    iget-object v1, p0, LPe/i;->c:LXe/b;

    invoke-virtual {v1}, LXe/b;->F()I

    move-result v1

    iget v2, p0, LPe/i;->d:I

    invoke-direct {v0, p1, v1, v2}, LPe/i$d;-><init>(Lhn/c;II)V

    goto :goto_0

    :cond_0
    new-instance v0, LPe/i$b;

    iget-object v1, p0, LPe/i;->c:LXe/b;

    invoke-virtual {v1}, LXe/b;->F()I

    move-result v1

    iget v2, p0, LPe/i;->d:I

    invoke-direct {v0, p1, v1, v2}, LPe/i$b;-><init>(Lhn/c;II)V

    :goto_0
    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LPe/i;->c:LXe/b;

    iget-object v0, v0, LPe/i$c;->c:[LPe/i$a;

    invoke-virtual {p1, v0}, LXe/b;->Q([Lhn/c;)V

    return-void
.end method
