.class public final LMe/Q;
.super LBe/c;
.source "SourceFile"

# interfaces
.implements LIe/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/Q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/c;",
        "LIe/c<",
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

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LMe/Q;->b:LBe/y;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    iget-object v0, p0, LMe/Q;->b:LBe/y;

    new-instance v1, LMe/Q$a;

    invoke-direct {v1, p1}, LMe/Q$a;-><init>(LBe/f;)V

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

    return-void
.end method

.method public d()LBe/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LMe/P;

    iget-object v1, p0, LMe/Q;->b:LBe/y;

    invoke-direct {v0, v1}, LMe/P;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method
