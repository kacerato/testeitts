.class public final LLe/L1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/L1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;",
        "Laf/d<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:LBe/J;

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(LBe/l;Ljava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p3, p0, LLe/L1;->d:LBe/J;

    iput-object p2, p0, LLe/L1;->e:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "Laf/d<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/L1$a;

    iget-object v2, p0, LLe/L1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, LLe/L1;->d:LBe/J;

    invoke-direct {v1, p1, v2, v3}, LLe/L1$a;-><init>(Lhn/c;Ljava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
