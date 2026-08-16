.class public final LLe/s0;
.super LBe/c;
.source "SourceFile"

# interfaces
.implements LIe/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/s0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/c;",
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

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LLe/s0;->b:LBe/l;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    iget-object v0, p0, LLe/s0;->b:LBe/l;

    new-instance v1, LLe/s0$a;

    invoke-direct {v1, p1}, LLe/s0$a;-><init>(LBe/f;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method

.method public f()LBe/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/r0;

    iget-object v1, p0, LLe/s0;->b:LBe/l;

    invoke-direct {v0, v1}, LLe/r0;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method
