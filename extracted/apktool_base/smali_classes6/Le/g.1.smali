.class public final LLe/g;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "Ljava/lang/Boolean;",
        ">;",
        "LIe/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/r;
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

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LLe/g;->b:LBe/l;

    iput-object p2, p0, LLe/g;->c:LFe/r;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/g;->b:LBe/l;

    new-instance v1, LLe/g$a;

    iget-object v2, p0, LLe/g;->c:LFe/r;

    invoke-direct {v1, p1, v2}, LLe/g$a;-><init>(LBe/N;LFe/r;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method

.method public f()LBe/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, LLe/f;

    iget-object v1, p0, LLe/g;->b:LBe/l;

    iget-object v2, p0, LLe/g;->c:LFe/r;

    invoke-direct {v0, v1, v2}, LLe/f;-><init>(LBe/l;LFe/r;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method
