.class public final LLe/Q0;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/Q0$a;
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
.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lhn/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(LBe/l;LFe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lhn/b<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/Q0;->d:LFe/o;

    iput-boolean p3, p0, LLe/Q0;->e:Z

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

    new-instance v0, LLe/Q0$a;

    iget-object v1, p0, LLe/Q0;->d:LFe/o;

    iget-boolean v2, p0, LLe/Q0;->e:Z

    invoke-direct {v0, p1, v1, v2}, LLe/Q0$a;-><init>(Lhn/c;LFe/o;Z)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
