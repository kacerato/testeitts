.class public final LLe/A1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/A1$a;,
        LLe/A1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(LBe/l;LFe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/A1;->d:LFe/o;

    iput p3, p0, LLe/A1;->e:I

    iput-boolean p4, p0, LLe/A1;->f:Z

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    iget-object v1, p0, LLe/A1;->d:LFe/o;

    invoke-static {v0, p1, v1}, LLe/k1;->b(Lhn/b;Lhn/c;LFe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/A1$b;

    iget-object v2, p0, LLe/A1;->d:LFe/o;

    iget v3, p0, LLe/A1;->e:I

    iget-boolean v4, p0, LLe/A1;->f:Z

    invoke-direct {v1, p1, v2, v3, v4}, LLe/A1$b;-><init>(Lhn/c;LFe/o;IZ)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
