.class public final LMe/n0;
.super LBe/l;
.source "SourceFile"

# interfaces
.implements LIe/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/n0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;",
        "LIe/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/y;
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

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LMe/n0;->c:LBe/y;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/n0;->c:LBe/y;

    new-instance v1, LMe/n0$a;

    invoke-direct {v1, p1}, LMe/n0$a;-><init>(Lhn/c;)V

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

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

    iget-object v0, p0, LMe/n0;->c:LBe/y;

    return-object v0
.end method
