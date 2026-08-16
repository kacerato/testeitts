.class public final LNe/a;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/i;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/i;",
            "LBe/G<",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LNe/a;->b:LBe/i;

    iput-object p2, p0, LNe/a;->c:LBe/G;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, LNe/a$a;

    iget-object v1, p0, LNe/a;->c:LBe/G;

    invoke-direct {v0, p1, v1}, LNe/a$a;-><init>(LBe/I;LBe/G;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LNe/a;->b:LBe/i;

    invoke-interface {p1, v0}, LBe/i;->b(LBe/f;)V

    return-void
.end method
