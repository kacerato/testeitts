.class public final LMe/o;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/o$a;,
        LMe/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
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

.field public final c:LBe/i;


# direct methods
.method public constructor <init>(LBe/y;LBe/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;",
            "LBe/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LMe/o;->b:LBe/y;

    iput-object p2, p0, LMe/o;->c:LBe/i;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/o;->c:LBe/i;

    new-instance v1, LMe/o$b;

    iget-object v2, p0, LMe/o;->b:LBe/y;

    invoke-direct {v1, p1, v2}, LMe/o$b;-><init>(LBe/v;LBe/y;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
