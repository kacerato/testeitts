.class public final LKe/K;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/K$a;
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:LBe/J;


# direct methods
.method public constructor <init>(LBe/i;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/K;->b:LBe/i;

    iput-object p2, p0, LKe/K;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    new-instance v0, LKe/K$a;

    iget-object v1, p0, LKe/K;->b:LBe/i;

    invoke-direct {v0, p1, v1}, LKe/K$a;-><init>(LBe/f;LBe/i;)V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    iget-object p1, p0, LKe/K;->c:LBe/J;

    invoke-virtual {p1, v0}, LBe/J;->f(Ljava/lang/Runnable;)LDe/c;

    move-result-object p1

    iget-object v0, v0, LKe/K$a;->c:LGe/h;

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method
