.class public final LQe/L;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation build LCe/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "LBe/A<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/K;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/K<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/K;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/K<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/L;->b:LBe/K;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "LBe/A<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/L;->b:LBe/K;

    new-instance v1, LNe/i;

    invoke-direct {v1, p1}, LNe/i;-><init>(LBe/N;)V

    invoke-virtual {v0, v1}, LBe/K;->a(LBe/N;)V

    return-void
.end method
