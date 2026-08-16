.class public final LLe/y1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/y1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LBe/J;

.field public final e:Z


# direct methods
.method public constructor <init>(LBe/l;LBe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LBe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/y1;->d:LBe/J;

    iput-boolean p3, p0, LLe/y1;->e:Z

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/y1;->d:LBe/J;

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    new-instance v1, LLe/y1$a;

    iget-object v2, p0, LLe/a;->c:LBe/l;

    iget-boolean v3, p0, LLe/y1;->e:Z

    invoke-direct {v1, p1, v0, v2, v3}, LLe/y1$a;-><init>(Lhn/c;LBe/J$c;Lhn/b;Z)V

    invoke-interface {p1, v1}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {v0, v1}, LBe/J$c;->b(Ljava/lang/Runnable;)LDe/c;

    return-void
.end method
