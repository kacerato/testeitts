.class public final LLe/U1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/U1$a;,
        LLe/U1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;",
        "LBe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(LBe/l;Lhn/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Lhn/b<",
            "TB;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/U1;->d:Lhn/b;

    iput p3, p0, LLe/U1;->e:I

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, LLe/U1$b;

    iget v1, p0, LLe/U1;->e:I

    invoke-direct {v0, p1, v1}, LLe/U1$b;-><init>(Lhn/c;I)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {v0}, LLe/U1$b;->e()V

    iget-object p1, p0, LLe/U1;->d:Lhn/b;

    iget-object v1, v0, LLe/U1$b;->d:LLe/U1$a;

    invoke-interface {p1, v1}, Lhn/b;->l(Lhn/c;)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
