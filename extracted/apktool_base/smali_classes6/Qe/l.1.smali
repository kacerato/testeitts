.class public final LQe/l;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/l$a;
    }
.end annotation

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
.field public final b:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "TT;>;"
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
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/l;->b:LBe/Q;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/l;->b:LBe/Q;

    new-instance v1, LQe/l$a;

    invoke-direct {v1, p1}, LQe/l$a;-><init>(LBe/N;)V

    invoke-interface {v0, v1}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
