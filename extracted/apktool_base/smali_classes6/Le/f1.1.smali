.class public final LLe/f1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/f1$a;
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
.field public final d:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;LFe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/f1;->d:LFe/d;

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

    new-instance v0, LUe/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LUe/i;-><init>(Z)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    new-instance v1, LLe/f1$a;

    iget-object v2, p0, LLe/f1;->d:LFe/d;

    iget-object v3, p0, LLe/a;->c:LBe/l;

    invoke-direct {v1, p1, v2, v0, v3}, LLe/f1$a;-><init>(Lhn/c;LFe/d;LUe/i;Lhn/b;)V

    invoke-virtual {v1}, LLe/f1$a;->b()V

    return-void
.end method
