.class public final LLe/z1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/z1$a;
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
.field public final d:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;Lhn/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Lhn/b<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/z1;->d:Lhn/b;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LLe/z1$a;

    iget-object v1, p0, LLe/z1;->d:Lhn/b;

    invoke-direct {v0, p1, v1}, LLe/z1$a;-><init>(Lhn/c;Lhn/b;)V

    iget-object v1, v0, LLe/z1$a;->d:LUe/i;

    invoke-interface {p1, v1}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
