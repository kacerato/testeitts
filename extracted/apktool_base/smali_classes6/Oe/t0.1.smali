.class public final LOe/t0;
.super LBe/B;
.source "SourceFile"

# interfaces
.implements LIe/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TT;>;",
        "LIe/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LOe/t0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LOe/Y0$a;

    iget-object v1, p0, LOe/t0;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, LOe/Y0$a;-><init>(LBe/I;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    invoke-virtual {v0}, LOe/Y0$a;->run()V

    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LOe/t0;->b:Ljava/lang/Object;

    return-object v0
.end method
