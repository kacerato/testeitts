.class public final LLe/n;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/n$b;,
        LLe/n$a;
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
        "LLe/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final e:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field public final f:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TOpen;+",
            "Lhn/b<",
            "+TClose;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;Lhn/b;LFe/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Lhn/b<",
            "+TOpen;>;",
            "LFe/o<",
            "-TOpen;+",
            "Lhn/b<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/n;->e:Lhn/b;

    iput-object p3, p0, LLe/n;->f:LFe/o;

    iput-object p4, p0, LLe/n;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TU;>;)V"
        }
    .end annotation

    new-instance v0, LLe/n$a;

    iget-object v1, p0, LLe/n;->e:Lhn/b;

    iget-object v2, p0, LLe/n;->f:LFe/o;

    iget-object v3, p0, LLe/n;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2, v3}, LLe/n$a;-><init>(Lhn/c;Lhn/b;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
