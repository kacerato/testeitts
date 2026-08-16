.class public final LQe/I;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
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

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/I;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {}, LDe/d;->a()LDe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    iget-object v0, p0, LQe/I;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, LBe/N;->b(Ljava/lang/Object;)V

    return-void
.end method
