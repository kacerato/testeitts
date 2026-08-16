.class public final LPe/n;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPe/n$c;,
        LPe/n$a;,
        LPe/n$b;
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

.field public final d:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXe/b;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/b<",
            "+TT;>;",
            "LFe/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LPe/n;->c:LXe/b;

    iput-object p2, p0, LPe/n;->d:LFe/c;

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

    new-instance v0, LPe/n$b;

    iget-object v1, p0, LPe/n;->c:LXe/b;

    invoke-virtual {v1}, LXe/b;->F()I

    move-result v1

    iget-object v2, p0, LPe/n;->d:LFe/c;

    invoke-direct {v0, p1, v1, v2}, LPe/n$b;-><init>(Lhn/c;ILFe/c;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LPe/n;->c:LXe/b;

    iget-object v0, v0, LPe/n$b;->n:[LPe/n$a;

    invoke-virtual {p1, v0}, LXe/b;->Q([Lhn/c;)V

    return-void
.end method
