.class public final LKe/P;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/P$a;
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
.field public final b:LBe/i;


# direct methods
.method public constructor <init>(LBe/i;)V
    .locals 0

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LKe/P;->b:LBe/i;

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

    iget-object v0, p0, LKe/P;->b:LBe/i;

    new-instance v1, LKe/P$a;

    invoke-direct {v1, p1}, LKe/P$a;-><init>(LBe/I;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
