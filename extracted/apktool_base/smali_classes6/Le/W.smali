.class public final LLe/W;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/W$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
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

.field public final c:J

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;JTT;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LLe/W;->b:LBe/l;

    iput-wide p2, p0, LLe/W;->c:J

    iput-object p4, p0, LLe/W;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/W;->b:LBe/l;

    new-instance v1, LLe/W$a;

    iget-wide v2, p0, LLe/W;->c:J

    iget-object v4, p0, LLe/W;->d:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, v4}, LLe/W$a;-><init>(LBe/N;JLjava/lang/Object;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method

.method public f()LBe/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, LLe/U;

    iget-object v1, p0, LLe/W;->b:LBe/l;

    iget-wide v2, p0, LLe/W;->c:J

    iget-object v4, p0, LLe/W;->d:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LLe/U;-><init>(LBe/l;JLjava/lang/Object;Z)V

    invoke-static {v6}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method
