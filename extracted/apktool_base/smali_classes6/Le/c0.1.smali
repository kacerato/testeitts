.class public final LLe/c0;
.super LBe/c;
.source "SourceFile"

# interfaces
.implements LIe/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/c0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/c;",
        "LIe/b<",
        "TT;>;"
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

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(LBe/l;LFe/o;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;ZI)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LLe/c0;->b:LBe/l;

    iput-object p2, p0, LLe/c0;->c:LFe/o;

    iput-boolean p3, p0, LLe/c0;->e:Z

    iput p4, p0, LLe/c0;->d:I

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 5

    iget-object v0, p0, LLe/c0;->b:LBe/l;

    new-instance v1, LLe/c0$a;

    iget-object v2, p0, LLe/c0;->c:LFe/o;

    iget-boolean v3, p0, LLe/c0;->e:Z

    iget v4, p0, LLe/c0;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, LLe/c0$a;-><init>(LBe/f;LFe/o;ZI)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method

.method public f()LBe/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/b0;

    iget-object v1, p0, LLe/c0;->b:LBe/l;

    iget-object v2, p0, LLe/c0;->c:LFe/o;

    iget-boolean v3, p0, LLe/c0;->e:Z

    iget v4, p0, LLe/c0;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, LLe/b0;-><init>(LBe/l;LFe/o;ZI)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method
