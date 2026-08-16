.class public final LLe/e0;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final c:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lhn/b;LFe/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/e0;->c:Lhn/b;

    iput-object p2, p0, LLe/e0;->d:LFe/o;

    iput-boolean p3, p0, LLe/e0;->e:Z

    iput p4, p0, LLe/e0;->f:I

    iput p5, p0, LLe/e0;->g:I

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/e0;->c:Lhn/b;

    iget-object v1, p0, LLe/e0;->d:LFe/o;

    invoke-static {v0, p1, v1}, LLe/k1;->b(Lhn/b;Lhn/c;LFe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/e0;->c:Lhn/b;

    iget-object v1, p0, LLe/e0;->d:LFe/o;

    iget-boolean v2, p0, LLe/e0;->e:Z

    iget v3, p0, LLe/e0;->f:I

    iget v4, p0, LLe/e0;->g:I

    invoke-static {p1, v1, v2, v3, v4}, LLe/a0;->O8(Lhn/c;LFe/o;ZII)LBe/q;

    move-result-object p1

    invoke-interface {v0, p1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
