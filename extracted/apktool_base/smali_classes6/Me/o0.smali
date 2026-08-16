.class public final LMe/o0;
.super LBe/B;
.source "SourceFile"

# interfaces
.implements LIe/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/o0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TT;>;",
        "LIe/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/y<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LMe/o0;->b:LBe/y;

    return-void
.end method

.method public static j8(LBe/I;)LBe/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/I<",
            "-TT;>;)",
            "LBe/v<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LMe/o0$a;

    invoke-direct {v0, p0}, LMe/o0$a;-><init>(LBe/I;)V

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

    iget-object v0, p0, LMe/o0;->b:LBe/y;

    invoke-static {p1}, LMe/o0;->j8(LBe/I;)LBe/v;

    move-result-object p1

    invoke-interface {v0, p1}, LBe/y;->d(LBe/v;)V

    return-void
.end method

.method public source()LBe/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/y<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LMe/o0;->b:LBe/y;

    return-object v0
.end method
