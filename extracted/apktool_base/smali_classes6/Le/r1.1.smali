.class public final LLe/r1;
.super LBe/s;
.source "SourceFile"

# interfaces
.implements LIe/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/r1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TT;>;",
        "LIe/b<",
        "TT;>;"
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


# direct methods
.method public constructor <init>(LBe/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LLe/r1;->b:LBe/l;

    return-void
.end method


# virtual methods
.method public f()LBe/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/q1;

    iget-object v1, p0, LLe/r1;->b:LBe/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LLe/q1;-><init>(LBe/l;Ljava/lang/Object;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public t1(LBe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/r1;->b:LBe/l;

    new-instance v1, LLe/r1$a;

    invoke-direct {v1, p1}, LLe/r1$a;-><init>(LBe/v;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
