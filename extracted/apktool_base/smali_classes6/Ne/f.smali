.class public final LNe/f;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/f$a;
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

.field public final d:Z


# direct methods
.method public constructor <init>(LBe/l;LFe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LNe/f;->b:LBe/l;

    iput-object p2, p0, LNe/f;->c:LFe/o;

    iput-boolean p3, p0, LNe/f;->d:Z

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 4

    iget-object v0, p0, LNe/f;->b:LBe/l;

    new-instance v1, LNe/f$a;

    iget-object v2, p0, LNe/f;->c:LFe/o;

    iget-boolean v3, p0, LNe/f;->d:Z

    invoke-direct {v1, p1, v2, v3}, LNe/f$a;-><init>(LBe/f;LFe/o;Z)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
