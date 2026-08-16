.class public final LQe/W;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/W$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LQe/W;->b:LBe/Q;

    return-void
.end method

.method public static j8(LBe/I;)LBe/N;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/I<",
            "-TT;>;)",
            "LBe/N<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LQe/W$a;

    invoke-direct {v0, p0}, LQe/W$a;-><init>(LBe/I;)V

    return-object v0
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/W;->b:LBe/Q;

    invoke-static {p1}, LQe/W;->j8(LBe/I;)LBe/N;

    move-result-object p1

    invoke-interface {v0, p1}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
