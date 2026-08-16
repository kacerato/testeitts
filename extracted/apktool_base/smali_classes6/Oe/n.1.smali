.class public final LOe/n;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/n$b;,
        LOe/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final d:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field public final e:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TOpen;+",
            "LBe/G<",
            "+TClose;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LBe/G;LFe/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/G<",
            "+TOpen;>;",
            "LFe/o<",
            "-TOpen;+",
            "LBe/G<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/n;->d:LBe/G;

    iput-object p3, p0, LOe/n;->e:LFe/o;

    iput-object p4, p0, LOe/n;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TU;>;)V"
        }
    .end annotation

    new-instance v0, LOe/n$a;

    iget-object v1, p0, LOe/n;->d:LBe/G;

    iget-object v2, p0, LOe/n;->e:LFe/o;

    iget-object v3, p0, LOe/n;->c:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2, v3}, LOe/n$a;-><init>(LBe/I;LBe/G;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LOe/a;->b:LBe/G;

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    return-void
.end method
