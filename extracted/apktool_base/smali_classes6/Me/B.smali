.class public final LMe/B;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/B$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/c;"
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

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/y;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LMe/B;->b:LBe/y;

    iput-object p2, p0, LMe/B;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    new-instance v0, LMe/B$a;

    iget-object v1, p0, LMe/B;->c:LFe/o;

    invoke-direct {v0, p1, v1}, LMe/B$a;-><init>(LBe/f;LFe/o;)V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    iget-object p1, p0, LMe/B;->b:LBe/y;

    invoke-interface {p1, v0}, LBe/y;->d(LBe/v;)V

    return-void
.end method
