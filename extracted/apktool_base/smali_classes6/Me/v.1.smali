.class public final LMe/v;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/v$b;,
        LMe/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LBe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/y<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LBe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/y<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/y;LBe/y;LFe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LFe/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LMe/v;->b:LBe/y;

    iput-object p2, p0, LMe/v;->c:LBe/y;

    iput-object p3, p0, LMe/v;->d:LFe/d;

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LMe/v$a;

    iget-object v1, p0, LMe/v;->d:LFe/d;

    invoke-direct {v0, p1, v1}, LMe/v$a;-><init>(LBe/N;LFe/d;)V

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    iget-object p1, p0, LMe/v;->b:LBe/y;

    iget-object v1, p0, LMe/v;->c:LBe/y;

    invoke-virtual {v0, p1, v1}, LMe/v$a;->c(LBe/y;LBe/y;)V

    return-void
.end method
