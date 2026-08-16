.class public final LLe/H1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/H1$a;
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
.field public final d:LFe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;LFe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/r<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/H1;->d:LFe/r;

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

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/H1$a;

    iget-object v2, p0, LLe/H1;->d:LFe/r;

    invoke-direct {v1, p1, v2}, LLe/H1$a;-><init>(Lhn/c;LFe/r;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
