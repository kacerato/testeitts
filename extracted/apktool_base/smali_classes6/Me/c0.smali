.class public final LMe/c0;
.super LMe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/c0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LMe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/y<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(LBe/y;LFe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/y<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LMe/a;-><init>(LBe/y;)V

    iput-object p2, p0, LMe/c0;->c:LFe/o;

    iput-boolean p3, p0, LMe/c0;->d:Z

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/a;->b:LBe/y;

    new-instance v1, LMe/c0$a;

    iget-object v2, p0, LMe/c0;->c:LFe/o;

    iget-boolean v3, p0, LMe/c0;->d:Z

    invoke-direct {v1, p1, v2, v3}, LMe/c0$a;-><init>(LBe/v;LFe/o;Z)V

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

    return-void
.end method
