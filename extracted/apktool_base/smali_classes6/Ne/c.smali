.class public final LNe/c;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/c$a;
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
.field public final b:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
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

.field public final d:Lio/reactivex/internal/util/j;

.field public final e:I


# direct methods
.method public constructor <init>(LBe/l;LFe/o;Lio/reactivex/internal/util/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;",
            "Lio/reactivex/internal/util/j;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LNe/c;->b:LBe/l;

    iput-object p2, p0, LNe/c;->c:LFe/o;

    iput-object p3, p0, LNe/c;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, LNe/c;->e:I

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 5

    iget-object v0, p0, LNe/c;->b:LBe/l;

    new-instance v1, LNe/c$a;

    iget-object v2, p0, LNe/c;->c:LFe/o;

    iget-object v3, p0, LNe/c;->d:Lio/reactivex/internal/util/j;

    iget v4, p0, LNe/c;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, LNe/c$a;-><init>(LBe/f;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
