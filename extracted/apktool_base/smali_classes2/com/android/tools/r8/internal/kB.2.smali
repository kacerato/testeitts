.class public Lcom/android/tools/r8/internal/kB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic H:Z = true


# instance fields
.field public final A:Lcom/android/tools/r8/internal/o40;

.field public B:Ljava/util/List;

.field public final C:Lcom/android/tools/r8/graph/N5;

.field public final D:Lcom/android/tools/r8/internal/rJ;

.field public final E:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public G:Ljava/lang/String;

.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/S40;

.field public final c:Lcom/android/tools/r8/internal/ue;

.field public final d:Lcom/android/tools/r8/ir/optimize/w;

.field public final e:Lcom/android/tools/r8/internal/ba;

.field public f:Lcom/android/tools/r8/internal/Sv;

.field public final g:Lcom/android/tools/r8/shaking/h2;

.field public final h:Lcom/android/tools/r8/ir/optimize/M;

.field public final i:Lcom/android/tools/r8/internal/Xc;

.field public final j:Lcom/android/tools/r8/internal/nJ;

.field public final k:Lcom/android/tools/r8/ir/optimize/x;

.field public final l:Lcom/android/tools/r8/internal/ZV;

.field public final m:Lcom/android/tools/r8/internal/QR;

.field public final n:Lcom/android/tools/r8/ir/optimize/W;

.field public final o:Lcom/android/tools/r8/naming/E;

.field public final p:Lcom/android/tools/r8/ir/optimize/I;

.field public final q:Lcom/android/tools/r8/internal/nu0;

.field public r:Lcom/android/tools/r8/internal/xu;

.field public final s:Lcom/android/tools/r8/internal/E10;

.field public final t:Lcom/android/tools/r8/ir/optimize/v0;

.field public final u:Lcom/android/tools/r8/ir/optimize/q;

.field public final v:Lcom/android/tools/r8/ir/optimize/J;

.field public final w:Lcom/android/tools/r8/ir/optimize/f;

.field public final x:Lcom/android/tools/r8/ir/optimize/F;

.field public final y:Lcom/android/tools/r8/internal/VW;

.field public final z:Lcom/android/tools/r8/internal/l40;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/l40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/l40;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->A:Lcom/android/tools/r8/internal/o40;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/graph/N5;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/N5;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/kB;->C:Lcom/android/tools/r8/graph/N5;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/kB;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/kB;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->G:Ljava/lang/String;

    sget-boolean v1, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    new-instance v3, Lcom/android/tools/r8/ir/optimize/x;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/ir/optimize/x;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->k:Lcom/android/tools/r8/ir/optimize/x;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/tools/r8/internal/RQ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->N()Lcom/android/tools/r8/graph/y;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/RQ;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v4, Lcom/android/tools/r8/internal/it0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/it0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/Vu;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/Vu;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/KQ;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/KQ;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/bZ;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/bZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/lf;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/lf;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/K3;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/K3;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/dY;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/dY;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/np0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/np0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/sn0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/sn0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/Pr0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/Pr0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/K7;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/K7;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/wn0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/wn0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/Fc0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/Fc0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v4, :cond_5

    new-instance v4, Lcom/android/tools/r8/ir/optimize/t0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/ir/optimize/t0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v4, Lcom/android/tools/r8/internal/G6;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/G6;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/ir/optimize/z0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/ir/optimize/z0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v4, :cond_6

    new-instance v4, Lcom/android/tools/r8/internal/xn0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/xn0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/zk0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/zk0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v4, Lcom/android/tools/r8/internal/ue;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/ue;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/android/tools/r8/internal/kB;->c:Lcom/android/tools/r8/internal/ue;

    new-instance v3, Lcom/android/tools/r8/ir/optimize/w;

    invoke-direct {v3, p1, p0}, Lcom/android/tools/r8/ir/optimize/w;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->d:Lcom/android/tools/r8/ir/optimize/w;

    new-instance v3, Lcom/android/tools/r8/ir/optimize/F;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/ir/optimize/F;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    new-instance v3, Lcom/android/tools/r8/ir/optimize/f;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/ir/optimize/f;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->w:Lcom/android/tools/r8/ir/optimize/f;

    new-instance v3, Lcom/android/tools/r8/ir/optimize/M;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/ir/optimize/M;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->h:Lcom/android/tools/r8/ir/optimize/M;

    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->A:Lcom/android/tools/r8/internal/rJ;

    new-instance v4, Lcom/android/tools/r8/internal/sg1;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/sg1;-><init>(Lcom/android/tools/r8/internal/kB;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/rJ;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/rJ;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v3, :cond_9

    if-nez v1, :cond_8

    iget-object v1, v2, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    new-instance v1, Lcom/android/tools/r8/internal/Z9;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Z9;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/kB;->e:Lcom/android/tools/r8/internal/ba;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->v:Lcom/android/tools/r8/ir/optimize/J;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->i:Lcom/android/tools/r8/internal/Xc;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->g:Lcom/android/tools/r8/shaking/h2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    new-instance p1, Lcom/android/tools/r8/internal/R40;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/R40;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->l:Lcom/android/tools/r8/internal/ZV;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->m:Lcom/android/tools/r8/internal/QR;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->o:Lcom/android/tools/r8/naming/E;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->p:Lcom/android/tools/r8/ir/optimize/I;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->q:Lcom/android/tools/r8/internal/nu0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->y:Lcom/android/tools/r8/internal/VW;

    sget-object p1, Lcom/android/tools/r8/internal/Nt;->a:Lcom/android/tools/r8/internal/Nt;

    iput-object p1, p0, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    new-instance p1, Lcom/android/tools/r8/internal/D10;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/D10;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->u:Lcom/android/tools/r8/ir/optimize/q;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->t:Lcom/android/tools/r8/ir/optimize/v0;

    return-void

    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/tools/r8/internal/ba;->a:Lcom/android/tools/r8/internal/aa;

    goto :goto_3

    :cond_a
    new-instance v1, Lcom/android/tools/r8/internal/Z9;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Z9;-><init>(Lcom/android/tools/r8/graph/y;)V

    :goto_3
    iput-object v1, p0, Lcom/android/tools/r8/internal/kB;->e:Lcom/android/tools/r8/internal/ba;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/tools/r8/internal/C2;->I:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/android/tools/r8/ir/optimize/v0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/ir/optimize/v0;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_4

    :cond_b
    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lcom/android/tools/r8/internal/kB;->t:Lcom/android/tools/r8/ir/optimize/v0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/ir/optimize/q;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/ir/optimize/q;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->u:Lcom/android/tools/r8/ir/optimize/q;

    new-instance v3, Lcom/android/tools/r8/internal/QR;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/QR;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->m:Lcom/android/tools/r8/internal/QR;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object v4

    iget-boolean v5, v4, Lcom/android/tools/r8/internal/nJ$h;->c:Z

    if-eqz v5, :cond_c

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ$h;->n:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v4, :cond_c

    new-instance v4, Lcom/android/tools/r8/ir/optimize/W;

    invoke-direct {v4, v1, p0, v3}, Lcom/android/tools/r8/ir/optimize/W;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/QR;)V

    goto :goto_5

    :cond_c
    move-object v4, v0

    :goto_5
    iput-object v4, p0, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    iget-boolean v3, v2, Lcom/android/tools/r8/internal/nJ;->J:Z

    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    new-instance v3, Lcom/android/tools/r8/internal/Xc;

    invoke-direct {v3, v1, v4}, Lcom/android/tools/r8/internal/Xc;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/W;)V

    goto :goto_6

    :cond_d
    move-object v3, v0

    :goto_6
    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->i:Lcom/android/tools/r8/internal/Xc;

    new-instance v3, Lcom/android/tools/r8/ir/optimize/J;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/ir/optimize/J;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->v:Lcom/android/tools/r8/ir/optimize/J;

    new-instance v3, Lcom/android/tools/r8/internal/Sv;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/Sv;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    iget-boolean v3, v2, Lcom/android/tools/r8/internal/nJ;->S:Z

    if-eqz v3, :cond_e

    new-instance v3, Lcom/android/tools/r8/shaking/h2;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/shaking/h2;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_7

    :cond_e
    move-object v3, v0

    :goto_7
    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->g:Lcom/android/tools/r8/shaking/h2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ;->H:Z

    if-eqz v3, :cond_f

    new-instance v3, Lcom/android/tools/r8/internal/zu;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/zu;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_8

    :cond_f
    sget-object v3, Lcom/android/tools/r8/internal/Nt;->a:Lcom/android/tools/r8/internal/Nt;

    :goto_8
    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$p;->c:Z

    if-eqz v3, :cond_10

    new-instance v3, Lcom/android/tools/r8/internal/I10;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/I10;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_9

    :cond_10
    new-instance v3, Lcom/android/tools/r8/internal/D10;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/D10;-><init>()V

    :goto_9
    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$l;->a:Z

    if-eqz v3, :cond_11

    new-instance v3, Lcom/android/tools/r8/internal/f50;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/f50;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_a

    :cond_11
    new-instance v3, Lcom/android/tools/r8/internal/R40;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/R40;-><init>()V

    :goto_a
    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    new-instance v3, Lcom/android/tools/r8/internal/eb0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/eb0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->l:Lcom/android/tools/r8/internal/ZV;

    new-instance v3, Lcom/android/tools/r8/internal/VW;

    invoke-direct {v3, v1, p0}, Lcom/android/tools/r8/internal/VW;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->y:Lcom/android/tools/r8/internal/VW;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Lcom/android/tools/r8/naming/E;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/naming/E;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/kB;->o:Lcom/android/tools/r8/naming/E;

    goto :goto_b

    :cond_12
    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->o:Lcom/android/tools/r8/naming/E;

    :goto_b
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->G:Z

    if-eqz v2, :cond_13

    new-instance v0, Lcom/android/tools/r8/ir/optimize/I;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/ir/optimize/I;-><init>(Lcom/android/tools/r8/graph/y;)V

    :cond_13
    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->p:Lcom/android/tools/r8/ir/optimize/I;

    new-instance v0, Lcom/android/tools/r8/internal/nu0;

    new-instance v2, Lcom/android/tools/r8/internal/Vw0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Vw0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Vw0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->q:Lcom/android/tools/r8/internal/nu0;

    return-void

    :cond_14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_c

    :cond_15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->N()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    :goto_c
    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->u:Lcom/android/tools/r8/ir/optimize/q;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->i:Lcom/android/tools/r8/internal/Xc;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->v:Lcom/android/tools/r8/ir/optimize/J;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->g:Lcom/android/tools/r8/shaking/h2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    new-instance v1, Lcom/android/tools/r8/internal/R40;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/R40;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lcom/android/tools/r8/internal/Ji;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Ji;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_d

    :cond_16
    move-object v1, v0

    :goto_d
    iput-object v1, p0, Lcom/android/tools/r8/internal/kB;->l:Lcom/android/tools/r8/internal/ZV;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->m:Lcom/android/tools/r8/internal/QR;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->o:Lcom/android/tools/r8/naming/E;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->p:Lcom/android/tools/r8/ir/optimize/I;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->q:Lcom/android/tools/r8/internal/nu0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->y:Lcom/android/tools/r8/internal/VW;

    sget-object p1, Lcom/android/tools/r8/internal/Nt;->a:Lcom/android/tools/r8/internal/Nt;

    iput-object p1, p0, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    new-instance p1, Lcom/android/tools/r8/internal/D10;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/D10;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;
    .locals 1

    .line 1054
    iget-object v0, p3, Lcom/android/tools/r8/internal/nJ;->A0:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v0

    .line 1056
    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->A0:Lcom/android/tools/r8/internal/QC;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1057
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1058
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p3}, Ljava/io/PrintStream;->println()V

    .line 1059
    const-string v0, "-----------------------------------------------------------------------"

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1062
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1063
    const-string p1, "Unchanged"

    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_1
    invoke-virtual {p3, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1065
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p0

    :cond_2
    :goto_1
    return-object p2
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/l3;)V
    .locals 0

    .line 1015
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/l3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l3;)V
    .locals 3

    .line 25
    iget-object v0, p1, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->j:Lcom/android/tools/r8/internal/zX;

    .line 27
    iget-object v1, v0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    .line 28
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/zX;->a(Lcom/android/tools/r8/graph/H5;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/wX;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    const/4 v1, 0x2

    .line 34
    iget v0, v0, Lcom/android/tools/r8/graph/g;->b:I

    .line 35
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 37
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 38
    :cond_4
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 40
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 41
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 42
    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/aX;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    .line 44
    iget-object v2, p1, Lcom/android/tools/r8/internal/Et;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v2, p1, Lcom/android/tools/r8/internal/Et;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    .line 1066
    iget-object v0, p2, Lcom/android/tools/r8/internal/nJ;->A0:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->A0:Lcom/android/tools/r8/internal/QC;

    .line 1067
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1068
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->M0()Ljava/lang/String;

    move-result-object p0

    .line 1069
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 1070
    const-string v0, "-----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Oy;)V
    .locals 1

    .line 455
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/tools/r8/internal/Oy;->d:Ljava/util/IdentityHashMap;

    .line 457
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 458
    iget-object p0, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0x3c

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 460
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/internal/fB;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/cz;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 461
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 463
    iget-object v1, v7, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 464
    iget-object v1, v7, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/cz;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/La0;)Lcom/android/tools/r8/internal/VJ;

    move-result-object v8

    if-eqz v8, :cond_1e

    .line 465
    iget-object v1, v7, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    .line 466
    invoke-static {v8, v1}, Lcom/android/tools/r8/internal/Ra0;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/La0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 467
    iget-object v2, v7, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    .line 468
    invoke-static {v8, v2}, Lcom/android/tools/r8/internal/Ra0;->b(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/La0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 469
    invoke-static {v2, v8}, Lcom/android/tools/r8/internal/Ow0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/Nw0;

    move-result-object v9

    .line 470
    iget-object v2, v7, Lcom/android/tools/r8/internal/cz;->b:Lcom/android/tools/r8/internal/Hb0;

    invoke-virtual {v2, v0, v1, v9}, Lcom/android/tools/r8/internal/Hb0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Nw0;)Lcom/android/tools/r8/internal/ua0;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 471
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    new-instance v2, Lcom/android/tools/r8/internal/vh;

    iget-object v3, v7, Lcom/android/tools/r8/internal/cz;->f:Lcom/android/tools/r8/internal/de;

    const/4 v10, 0x0

    .line 472
    invoke-interface {v6, v3, v10}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 473
    iget-object v4, v7, Lcom/android/tools/r8/internal/cz;->c:Lcom/android/tools/r8/internal/Ib0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    new-instance v5, Lcom/android/tools/r8/internal/CH;

    const/16 v11, 0x10

    .line 475
    invoke-direct {v5, v11}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 476
    iget v11, v0, Lcom/android/tools/r8/internal/ua0;->b:I

    .line 477
    invoke-virtual {v5, v11}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 478
    iget-object v11, v0, Lcom/android/tools/r8/internal/ua0;->c:Ljava/util/LinkedList;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 479
    :goto_0
    invoke-virtual {v5, v11}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 480
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ua0;->a()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 481
    iget-object v11, v0, Lcom/android/tools/r8/internal/ua0;->c:Ljava/util/LinkedList;

    .line 482
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const v13, 0x7fffffff

    const/high16 v14, -0x80000000

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    check-cast v11, Lcom/android/tools/r8/internal/na0;

    move-object/from16 v16, v9

    .line 483
    iget v9, v11, Lcom/android/tools/r8/internal/na0;->a:I

    if-ge v9, v13, :cond_1

    move v13, v9

    :cond_1
    if-le v9, v14, :cond_2

    move v14, v9

    .line 484
    :cond_2
    iget-object v9, v11, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 485
    iget v11, v9, Lcom/android/tools/r8/internal/pa0;->a:I

    move/from16 v18, v13

    const/16 v13, 0x32

    if-ne v11, v13, :cond_3

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 486
    :cond_3
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/pa0;->c()Z

    move-result v11

    if-nez v11, :cond_4

    add-int/lit8 v10, v10, 0x1

    .line 487
    :cond_4
    :goto_2
    iget-boolean v9, v9, Lcom/android/tools/r8/internal/pa0;->d:Z

    if-eqz v9, :cond_5

    add-int/lit8 v12, v12, 0x1

    :cond_5
    move-object/from16 v9, v16

    move-object/from16 v11, v17

    move/from16 v13, v18

    goto :goto_1

    :cond_6
    move-object/from16 v16, v9

    .line 488
    iget-object v9, v0, Lcom/android/tools/r8/internal/ua0;->e:Ljava/util/LinkedList;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    .line 489
    :goto_3
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 490
    iget-object v9, v0, Lcom/android/tools/r8/internal/ua0;->d:Ljava/util/LinkedList;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    .line 491
    :goto_4
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 492
    invoke-virtual {v5, v13}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 493
    invoke-virtual {v5, v14}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 494
    iget-object v9, v0, Lcom/android/tools/r8/internal/ua0;->c:Ljava/util/LinkedList;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    .line 495
    :goto_5
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 496
    invoke-virtual {v5, v15}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 497
    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 498
    invoke-virtual {v5, v12}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 499
    iget-object v9, v0, Lcom/android/tools/r8/internal/ua0;->c:Ljava/util/LinkedList;

    .line 500
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/na0;

    .line 501
    iget v11, v10, Lcom/android/tools/r8/internal/na0;->a:I

    .line 502
    invoke-virtual {v5, v11}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 503
    iget-object v11, v10, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 504
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/pa0;->e()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 505
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/na0;->b()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 506
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_6

    :cond_b
    :goto_7
    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v16, v9

    goto :goto_7

    .line 507
    :goto_8
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/internal/CH;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v10

    const/4 v11, 0x1

    .line 508
    :goto_9
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    const v13, 0xe000

    const v14, 0xd800

    if-eqz v12, :cond_12

    .line 509
    invoke-interface {v10}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v12

    :goto_a
    const/16 v17, 0x2

    const/16 v9, 0x7ff

    const/16 v15, 0x7f

    if-lt v12, v14, :cond_f

    and-int/lit16 v14, v12, 0x1fff

    or-int/2addr v14, v13

    int-to-char v14, v14

    shr-int/lit8 v12, v12, 0xd

    .line 510
    sget-object v19, Lcom/android/tools/r8/graph/L2;->g:[Lcom/android/tools/r8/graph/L2;

    if-eqz v14, :cond_d

    if-gt v14, v15, :cond_d

    const/4 v15, 0x1

    goto :goto_b

    :cond_d
    if-gt v14, v9, :cond_e

    move/from16 v15, v17

    goto :goto_b

    :cond_e
    const/4 v15, 0x3

    :goto_b
    add-int/2addr v11, v15

    const v14, 0xd800

    goto :goto_a

    :cond_f
    int-to-char v12, v12

    .line 511
    sget-object v13, Lcom/android/tools/r8/graph/L2;->g:[Lcom/android/tools/r8/graph/L2;

    if-eqz v12, :cond_10

    if-gt v12, v15, :cond_10

    const/4 v15, 0x1

    goto :goto_c

    :cond_10
    if-gt v12, v9, :cond_11

    move/from16 v15, v17

    goto :goto_c

    :cond_11
    const/4 v15, 0x3

    :goto_c
    add-int/2addr v11, v15

    goto :goto_9

    .line 512
    :cond_12
    new-array v9, v11, [B

    const/4 v10, 0x0

    .line 513
    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/CH;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v11

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 514
    :goto_d
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 515
    invoke-interface {v11}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v14

    :goto_e
    const v15, 0xd800

    if-lt v14, v15, :cond_13

    and-int/lit16 v15, v14, 0x1fff

    or-int/2addr v15, v13

    int-to-char v15, v15

    .line 516
    invoke-static {v15, v9, v10}, Lcom/android/tools/r8/graph/L2;->a(C[BI)I

    move-result v10

    add-int/lit8 v12, v12, 0x1

    shr-int/lit8 v14, v14, 0xd

    goto :goto_e

    :cond_13
    int-to-char v14, v14

    .line 517
    invoke-static {v14, v9, v10}, Lcom/android/tools/r8/graph/L2;->a(C[BI)I

    move-result v10

    goto :goto_d

    :cond_14
    const/4 v14, 0x0

    .line 518
    aput-byte v14, v9, v10

    .line 519
    iget-object v4, v4, Lcom/android/tools/r8/internal/Ib0;->a:Lcom/android/tools/r8/graph/u1;

    .line 520
    iget v5, v5, Lcom/android/tools/r8/internal/CH;->c:I

    add-int/2addr v5, v12

    .line 521
    invoke-virtual {v4, v5, v9}, Lcom/android/tools/r8/graph/u1;->a(I[B)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 522
    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    .line 523
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    .line 524
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 525
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    new-instance v9, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v9, v1, v2}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    .line 527
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 528
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 529
    iput-object v2, v9, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    .line 530
    sget-boolean v2, Lcom/android/tools/r8/internal/cz;->g:Z

    if-nez v2, :cond_16

    if-ne v1, v8, :cond_15

    goto :goto_f

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 531
    :cond_16
    :goto_f
    iget-object v1, v7, Lcom/android/tools/r8/internal/cz;->c:Lcom/android/tools/r8/internal/Ib0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ib0;->a(Lcom/android/tools/r8/internal/ua0;)Ljava/util/ArrayList;

    move-result-object v10

    .line 532
    iget-object v0, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 533
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v3, v0

    .line 534
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v5

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 535
    iget-object v1, v7, Lcom/android/tools/r8/internal/cz;->e:Lcom/android/tools/r8/internal/pu0;

    const/4 v2, 0x0

    .line 536
    invoke-interface {v6, v1, v2}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    .line 537
    iget-object v1, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->b0()Lcom/android/tools/r8/internal/nJ$o;

    move-result-object v1

    .line 538
    sget-boolean v2, Lcom/android/tools/r8/internal/nJ$o;->c:Z

    if-nez v2, :cond_18

    .line 539
    iget-object v2, v1, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 540
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_10

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 541
    :cond_18
    :goto_10
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 542
    sget-object v2, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 543
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_1a

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v14

    .line 545
    :goto_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_19

    .line 546
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ba0;

    iget-object v2, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2, v6}, Lcom/android/tools/r8/internal/Ba0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 547
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 548
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 549
    :cond_19
    new-instance v1, Lcom/android/tools/r8/internal/qZ;

    iget-object v2, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 550
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v1, v2, v11, v0}, Lcom/android/tools/r8/internal/qZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 551
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_13

    .line 552
    :cond_1a
    new-instance v1, Lcom/android/tools/r8/internal/oZ;

    iget-object v2, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 553
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v1, v11, v0, v2}, Lcom/android/tools/r8/internal/oZ;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    .line 554
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    move v12, v14

    .line 555
    :goto_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_1b

    .line 556
    iget-object v0, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 557
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    int-to-long v3, v12

    .line 558
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v5

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 559
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ba0;

    iget-object v2, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2, v6}, Lcom/android/tools/r8/internal/Ba0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 560
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 561
    sget-object v2, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    .line 562
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 563
    invoke-static {v2, v11, v0, v1}, Lcom/android/tools/r8/internal/T3;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/T3;

    move-result-object v0

    .line 564
    invoke-virtual {v9, v0}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 565
    :cond_1b
    :goto_13
    iget-object v0, v7, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    invoke-static {v8, v11, v0}, Lcom/android/tools/r8/internal/Ra0;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/La0;)V

    if-eqz v16, :cond_1e

    move-object/from16 v0, v16

    .line 566
    iget-object v0, v0, Lcom/android/tools/r8/internal/Nw0;->c:Lcom/android/tools/r8/internal/xw0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 567
    invoke-static {v0}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_14

    .line 568
    :cond_1c
    sget-boolean v0, Lcom/android/tools/r8/internal/cz;->g:Z

    if-eqz v0, :cond_1d

    goto :goto_14

    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 569
    :cond_1e
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 570
    sget-boolean v0, Lcom/android/tools/r8/internal/cz;->g:Z

    if-nez v0, :cond_21

    iget-object v0, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_15

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 571
    :cond_20
    iget-object v0, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 572
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 574
    iget-object v0, v7, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Lcom/android/tools/r8/internal/cz;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    :cond_21
    :goto_15
    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l3;)V
    .locals 3

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/aX;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    .line 16
    iget-object v2, p1, Lcom/android/tools/r8/internal/Et;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v2, p1, Lcom/android/tools/r8/internal/Et;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 10
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/tT;Ljava/lang/String;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/fB;
    .locals 11

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IR->LIR ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1039
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v0

    .line 1040
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/tT;->a()Lcom/android/tools/r8/internal/bT;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 1041
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 1042
    invoke-static {v0, p1, v3, v2}, Lcom/android/tools/r8/internal/UA;->a(Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/bT;)Lcom/android/tools/r8/internal/WS;

    move-result-object v5

    .line 1043
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1044
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1045
    new-instance v0, Lcom/android/tools/r8/internal/jT;

    invoke-direct {v0, v5}, Lcom/android/tools/r8/internal/jT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jT;->j()Ljava/lang/String;

    move-result-object v0

    .line 1046
    sget-boolean v2, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1047
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIR->IR ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1048
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    new-instance p3, Lcom/android/tools/r8/internal/z10;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/z10;-><init>()V

    .line 1049
    invoke-virtual {p2, v5, p3}, Lcom/android/tools/r8/internal/tT;->a(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/z10;)Lcom/android/tools/r8/internal/aT;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 1050
    sget-object v9, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 1051
    iget-object v10, p1, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    const/4 v8, 0x0

    .line 1052
    invoke-static/range {v4 .. v10}, Lcom/android/tools/r8/internal/HS;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/aT;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    .line 1053
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;
    .locals 0

    .line 70
    invoke-virtual/range {p0 .. p6}, Lcom/android/tools/r8/internal/kB;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/gX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;
    .locals 3

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 65
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual/range {p0 .. p6}, Lcom/android/tools/r8/internal/kB;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/ir/optimize/O;)Z

    .line 69
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v14

    .line 72
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 73
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 74
    sget-boolean v3, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_1
    :goto_0
    const-string v2, "Initial IR (SSA)"

    .line 76
    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v4}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v2

    .line 77
    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ$p;->v0:Ljava/util/function/BiConsumer;

    if-eqz v4, :cond_2

    .line 78
    iget-object v6, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v4, v0, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :cond_2
    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ$p;->q:Z

    if-nez v4, :cond_78

    .line 80
    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->m:Lcom/android/tools/r8/internal/QR;

    if-eqz v4, :cond_3

    .line 81
    const-string v4, "Lens rewrite"

    invoke-virtual {v13, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 82
    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->m:Lcom/android/tools/r8/internal/QR;

    invoke-virtual {v4, v14, v0, v11}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V

    .line 83
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 84
    const-string v4, "IR after lens code rewriting (SSA)"

    .line 85
    iget-object v6, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v4, v2, v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v6, v2

    .line 86
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    const/4 v8, 0x1

    if-nez v2, :cond_5

    .line 87
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move/from16 v16, v8

    :goto_2
    if-nez v3, :cond_7

    .line 88
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->o1()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v16, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    .line 89
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {}, Lcom/android/tools/r8/internal/lv;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method already processed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7
    :goto_3
    if-nez v3, :cond_9

    .line 92
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->o1()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 93
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 94
    invoke-virtual {v2, v14}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/tools/r8/shaking/I1;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 95
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    .line 96
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected reprocessing of method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 97
    :cond_9
    :goto_4
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->q:Lcom/android/tools/r8/internal/nu0;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/nu0;->a(Lcom/android/tools/r8/internal/fB;)Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v3, :cond_b

    .line 98
    iget-object v0, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_5
    if-nez v3, :cond_d

    .line 99
    iget-object v0, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->P:Z

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_d
    :goto_6
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 101
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The method `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "` does not type check and will be assumed to be unreachable."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 103
    iget-object v0, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v14, v0}, Lcom/android/tools/r8/graph/H5;->d(Lcom/android/tools/r8/graph/y;)V

    return-object v13

    :cond_e
    if-nez v3, :cond_10

    .line 104
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_10
    :goto_7
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_9

    .line 107
    :cond_11
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    if-nez v3, :cond_13

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    instance-of v4, v2, Lcom/android/tools/r8/graph/c6;

    if-nez v4, :cond_12

    goto :goto_8

    .line 110
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_13
    :goto_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    instance-of v2, v2, Lcom/android/tools/r8/graph/l0;

    if-eqz v2, :cond_18

    .line 113
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 114
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 115
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 116
    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v4, v2}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 117
    instance-of v2, v2, Lcom/android/tools/r8/graph/H5;

    if-eqz v2, :cond_14

    goto :goto_c

    :cond_14
    :goto_9
    if-nez v3, :cond_16

    .line 118
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_a

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_16
    :goto_a
    const-string v1, "Collect optimization info"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 120
    sget-object v4, Lcom/android/tools/r8/ir/optimize/u;->b:Lcom/android/tools/r8/ir/optimize/u;

    .line 121
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->a()Lcom/android/tools/r8/internal/v8$a;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    .line 122
    invoke-virtual/range {v1 .. v8}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/u;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/v8$a;Lcom/android/tools/r8/internal/ns0;)V

    .line 123
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 124
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object v1

    goto :goto_b

    :cond_17
    sget-object v1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    .line 125
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v10, v0, v1}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/optimize/O;)V

    return-object v13

    .line 126
    :cond_18
    :goto_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/EW$a;->e()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 127
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    invoke-virtual {v1, v0, v13}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 128
    const-string v1, "Finalize IR"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 129
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v13

    .line 131
    :cond_19
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ$p;->c()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 132
    new-instance v2, Lcom/android/tools/r8/internal/tq0;

    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/tq0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 133
    invoke-virtual {v2, v0, v11, v12, v13}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 134
    :cond_1a
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    sget-object v3, Lcom/android/tools/r8/internal/C2;->E:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 136
    const-string v2, "Check for new-init issue"

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 137
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/mt0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 138
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    :cond_1b
    if-eqz v16, :cond_31

    .line 139
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->k:Lcom/android/tools/r8/ir/optimize/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    iget-object v3, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 141
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    .line 142
    :goto_e
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 143
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    .line 144
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 145
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    instance-of v15, v5, Lcom/android/tools/r8/internal/ej;

    if-eqz v15, :cond_2d

    .line 147
    sget-boolean v15, Lcom/android/tools/r8/ir/optimize/x;->b:Z

    if-nez v15, :cond_1d

    .line 148
    iget-object v15, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v8, :cond_1c

    goto :goto_f

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :cond_1d
    :goto_f
    iget-object v15, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v8, 0x0

    .line 151
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    .line 152
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v8

    move-object/from16 v17, v3

    .line 153
    iget-object v3, v8, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    .line 154
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v18

    if-nez v18, :cond_2c

    .line 155
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v10

    move-object/from16 v18, v14

    const/4 v14, 0x1

    if-ne v10, v14, :cond_2b

    iget-object v10, v15, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v10, :cond_2b

    .line 156
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    if-eq v14, v11, :cond_1e

    :goto_10
    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v3, v17

    move-object/from16 v14, v18

    :goto_11
    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_e

    .line 157
    :cond_1e
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v11

    .line 158
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v11

    if-nez v11, :cond_1f

    .line 159
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v11

    .line 160
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v11

    if-nez v11, :cond_1f

    .line 161
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-static {v11, v14}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    goto :goto_10

    .line 163
    :cond_1f
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;)Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/zE;

    if-nez v11, :cond_21

    .line 164
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v19

    .line 165
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v19

    if-nez v19, :cond_20

    .line 166
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v11

    :cond_20
    move-object/from16 v19, v10

    goto :goto_13

    .line 167
    :cond_21
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v19

    .line 168
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v19

    if-nez v19, :cond_20

    move-object/from16 v19, v10

    .line 169
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v10

    .line 170
    invoke-static {v11, v10}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_22

    goto :goto_10

    :cond_22
    :goto_13
    if-ne v14, v5, :cond_28

    .line 171
    invoke-virtual {v15, v8}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/j0;)V

    .line 172
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 173
    iget-object v3, v5, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-eqz v3, :cond_24

    .line 174
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 175
    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 176
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 177
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v11

    if-ne v11, v8, :cond_23

    .line 178
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 179
    invoke-virtual {v10, v5}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_14

    :cond_24
    const/4 v10, 0x0

    :goto_14
    if-eqz v10, :cond_25

    .line 180
    iget-object v3, v15, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v10, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/zE;)V

    :cond_25
    if-eqz v7, :cond_27

    .line 181
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 182
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 183
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 184
    :cond_26
    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/zE;)V

    .line 185
    :cond_27
    invoke-interface {v4}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_10

    .line 186
    :cond_28
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    if-eqz v10, :cond_29

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v10

    if-eqz v10, :cond_29

    .line 187
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v10

    iget-object v10, v10, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    if-ne v10, v3, :cond_29

    goto/16 :goto_10

    :cond_29
    move-object/from16 v10, v19

    goto/16 :goto_12

    .line 188
    :cond_2a
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0

    :cond_2b
    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move v8, v14

    move-object/from16 v3, v17

    move-object/from16 v14, v18

    :goto_15
    const/4 v5, 0x0

    goto/16 :goto_e

    :cond_2c
    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v3, v17

    goto/16 :goto_11

    :cond_2d
    move-object/from16 v10, p2

    move-object/from16 v11, p4

    goto :goto_15

    :cond_2e
    move-object/from16 v10, p2

    move-object/from16 v11, p4

    goto/16 :goto_d

    :cond_2f
    move-object/from16 v18, v14

    .line 189
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/x;->b:Z

    if-nez v3, :cond_32

    iget-object v2, v2, Lcom/android/tools/r8/ir/optimize/x;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_16

    :cond_30
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_31
    move-object/from16 v18, v14

    .line 190
    :cond_32
    :goto_16
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->w:Lcom/android/tools/r8/ir/optimize/f;

    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    .line 191
    iget-boolean v4, v2, Lcom/android/tools/r8/ir/optimize/f;->f:Z

    if-eqz v4, :cond_36

    .line 192
    const-string v4, "Rewrite assertions"

    invoke-virtual {v13, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 193
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/fB;)Z

    move-result v4

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    if-eqz v4, :cond_33

    .line 195
    invoke-virtual {v3, v0, v13}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 196
    :cond_33
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/f;->g:Z

    if-nez v3, :cond_35

    iget-object v2, v2, Lcom/android/tools/r8/ir/optimize/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_17

    :cond_34
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 197
    :cond_35
    :goto_17
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 198
    :cond_36
    const-string v2, "IR after assertions rewriter (SSA)"

    .line 199
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v6, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 201
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 202
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v4

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v5

    .line 204
    :cond_37
    iget-object v6, v5, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 205
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 206
    iget-object v6, v5, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    iput-object v6, v5, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 207
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v6

    .line 208
    :cond_38
    :goto_18
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 209
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 210
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 211
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v7

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v8

    .line 213
    invoke-virtual {v7, v4, v8}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v8

    if-eqz v8, :cond_38

    .line 214
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/TW;->y()Z

    move-result v10

    if-nez v10, :cond_39

    goto :goto_18

    .line 215
    :cond_39
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/VJ;->z2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 216
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 217
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 218
    :cond_3a
    iget-object v7, v4, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 219
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    .line 221
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v7

    .line 222
    iget-boolean v7, v7, Lcom/android/tools/r8/internal/F4;->c:Z

    if-nez v7, :cond_3c

    .line 223
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_19

    .line 224
    :cond_3b
    invoke-interface {v6, v4, v10}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_18

    .line 225
    :cond_3c
    :goto_19
    invoke-interface {v6}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_18

    .line 226
    :cond_3d
    sget-boolean v4, Lcom/android/tools/r8/ir/optimize/t;->a:Z

    if-nez v4, :cond_3f

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_1a

    :cond_3e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 227
    :cond_3f
    :goto_1a
    const-string v3, "IR after check not null converter (SSA)"

    .line 228
    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v3, v2, v4}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v2

    .line 229
    const-string v3, "Run proto shrinking tasks"

    invoke-virtual {v13, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 230
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/pg1;

    invoke-direct {v4, v1, v0}, Lcom/android/tools/r8/internal/pg1;-><init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/fB;)V

    .line 231
    iget-object v1, v3, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v1, :cond_40

    iget-object v1, v1, Lcom/android/tools/r8/internal/Oa0;->c:Lcom/android/tools/r8/internal/Oy;

    if-eqz v1, :cond_40

    .line 232
    invoke-interface {v4, v1}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 233
    :cond_40
    const-string v1, "IR after generated extension registry shrinking (SSA)"

    .line 234
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/qg1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/qg1;-><init>(Lcom/android/tools/r8/internal/fB;)V

    .line 236
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v2, :cond_41

    iget-object v2, v2, Lcom/android/tools/r8/internal/Oa0;->d:Lcom/android/tools/r8/internal/cz;

    if-eqz v2, :cond_41

    .line 237
    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 238
    :cond_41
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 239
    const-string v2, "IR after generated message lite shrinking (SSA)"

    .line 240
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->l:Lcom/android/tools/r8/internal/ZV;

    if-eqz v2, :cond_42

    .line 242
    const-string v2, "Propagate member values"

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 243
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->l:Lcom/android/tools/r8/internal/ZV;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 244
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 245
    const-string v2, "IR after member-value propagation (SSA)"

    .line 246
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_42
    const-string v2, "Remove switch maps"

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 248
    new-instance v2, Lcom/android/tools/r8/internal/Vu;

    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Vu;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Vu;->c(Lcom/android/tools/r8/internal/fB;)V

    .line 249
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 250
    const-string v2, "IR after enum-switch optimization (SSA)"

    .line 251
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 252
    new-instance v2, Lcom/android/tools/r8/internal/kE;

    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/kE;-><init>(Lcom/android/tools/r8/graph/y;)V

    move-object/from16 v10, p4

    .line 253
    invoke-virtual {v2, v0, v10, v12, v13}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 254
    const-string v2, "IR after instance initializer outlining (SSA)"

    .line 255
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->j()Lcom/android/tools/r8/internal/F8;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    instance-of v3, v2, Lcom/android/tools/r8/internal/jg;

    if-eqz v3, :cond_43

    .line 259
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 260
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    .line 261
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 262
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 263
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    .line 264
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F8;->a()Lcom/android/tools/r8/internal/jg;

    move-result-object v2

    .line 265
    invoke-static {v3, v0, v2}, Lcom/android/tools/r8/internal/v3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/jg;)V

    .line 266
    :cond_43
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->u:Lcom/android/tools/r8/ir/optimize/q;

    if-eqz v2, :cond_44

    .line 267
    invoke-virtual {v2, v0, v13}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 268
    const-string v2, "IR after inserting assume instructions (SSA)"

    .line 269
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    :cond_44
    move-object v8, v1

    .line 270
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    if-eqz v1, :cond_46

    if-nez v16, :cond_46

    .line 271
    const-string v1, "Inlining"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 272
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    .line 273
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/dX;)Lcom/android/tools/r8/internal/KD;

    move-result-object v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 274
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/KD;)V

    .line 275
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 276
    sget-boolean v1, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v1, :cond_45

    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 277
    :cond_45
    const-string v1, "IR after inlining (SSA)"

    .line 278
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1, v8, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v8

    .line 279
    :cond_46
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 280
    const-string v1, "Rewrite to const class"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 281
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/ir/optimize/u0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 282
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    :cond_47
    if-nez v16, :cond_4a

    .line 283
    new-instance v1, Lcom/android/tools/r8/internal/Mc;

    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Mc;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 284
    invoke-virtual {v1, v0, v10, v12, v13}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 285
    const-string v1, "Optimize library methods"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 286
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 287
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->B:Lcom/android/tools/r8/internal/XR;

    .line 288
    invoke-virtual {v1, v0, v10, v12}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V

    .line 289
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 291
    sget-boolean v1, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v1, :cond_49

    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_1b

    :cond_48
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_49
    :goto_1b
    const-string v1, "IR after class library method optimizer (SSA)"

    .line 293
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1, v8, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v8

    .line 294
    :cond_4a
    sget-boolean v11, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v11, :cond_4b

    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 295
    :cond_4b
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->p:Lcom/android/tools/r8/ir/optimize/I;

    if-eqz v1, :cond_4d

    if-nez v11, :cond_4c

    .line 296
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 297
    :cond_4c
    const-string v1, "Devirtualize invoke interface"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 298
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->p:Lcom/android/tools/r8/ir/optimize/I;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ir/optimize/I;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 299
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 300
    const-string v1, "IR after devirtualizer (SSA)"

    .line 301
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1, v8, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v8

    :cond_4d
    if-nez v11, :cond_4e

    .line 302
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 303
    :cond_4e
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 304
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 305
    instance-of v1, v10, Lcom/android/tools/r8/internal/Ki;

    if-eqz v1, :cond_50

    .line 306
    :cond_4f
    const-string v1, "Rewrite AssertionError"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 307
    new-instance v1, Lcom/android/tools/r8/ir/optimize/b;

    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/ir/optimize/b;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 308
    invoke-virtual {v1, v0, v10, v12}, Lcom/android/tools/r8/ir/optimize/b;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V

    .line 309
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 310
    :cond_50
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->c:Lcom/android/tools/r8/internal/ue;

    iget-object v7, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/ue;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/o50;

    .line 311
    const-string v1, "Optimize class initializers"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 312
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->d:Lcom/android/tools/r8/ir/optimize/w;

    move-object/from16 v14, p2

    .line 313
    invoke-virtual {v1, v0, v14}, Lcom/android/tools/r8/ir/optimize/w;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;)Lcom/android/tools/r8/ir/optimize/u;

    move-result-object v7

    .line 314
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 315
    const-string v1, "IR after class initializer optimisation (SSA)"

    .line 316
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1, v8, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 317
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    invoke-virtual {v2, v0, v13}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    if-nez v11, :cond_52

    .line 318
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_51

    goto :goto_1c

    :cond_51
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_52
    :goto_1c
    const-string v2, "IR after dead code removal (SSA)"

    .line 320
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 321
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->m0:Z

    if-eqz v2, :cond_59

    .line 322
    iget-object v2, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_53
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 323
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 324
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 326
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    .line 327
    sget-boolean v6, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v6, :cond_55

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v8

    if-ne v8, v3, :cond_54

    goto :goto_1e

    :cond_54
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 328
    :cond_55
    :goto_1e
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x2

    if-nez v6, :cond_57

    .line 329
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v11, :cond_56

    goto :goto_1f

    :cond_56
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :cond_57
    :goto_1f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-interface {v8, v6, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/EB;->a(Lcom/android/tools/r8/internal/W5;)V

    .line 332
    iget-object v4, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v4

    iput-object v4, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    goto :goto_1d

    .line 333
    :cond_58
    const-string v2, "IR after inverting conditionals for testing (SSA)"

    .line 334
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    :cond_59
    move-object v8, v1

    .line 335
    sget-boolean v11, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v11, :cond_5a

    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 336
    :cond_5a
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->i:Lcom/android/tools/r8/internal/Xc;

    if-eqz v1, :cond_5e

    .line 337
    const-string v1, "Inline classes"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 338
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->i:Lcom/android/tools/r8/internal/Xc;

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Xc;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V

    .line 339
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    if-nez v11, :cond_5c

    .line 341
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_20

    :cond_5b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5c
    :goto_20
    if-nez v11, :cond_5d

    .line 342
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 343
    :cond_5d
    const-string v1, "IR after class inlining (SSA)"

    .line 344
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1, v8, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v8

    :cond_5e
    if-nez v11, :cond_5f

    .line 345
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 346
    :cond_5f
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {v1, v0, v13}, Lcom/android/tools/r8/internal/S40;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    if-nez v11, :cond_60

    .line 347
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 348
    :cond_60
    const-string v1, "IR after outline handler (SSA)"

    .line 349
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1, v8, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 350
    iget-object v2, v0, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 351
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/EW$a;->c()Z

    move-result v2

    if-nez v2, :cond_61

    .line 352
    new-instance v2, Lcom/android/tools/r8/internal/Zw;

    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Zw;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 353
    invoke-virtual {v2, v0, v10, v12, v13}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 354
    const-string v2, "IR after filled-new-array rewriter (SSA)"

    .line 355
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 356
    :cond_61
    new-instance v2, Lcom/android/tools/r8/internal/xq0;

    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->o:Lcom/android/tools/r8/naming/E;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/xq0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/E;)V

    .line 357
    invoke-virtual {v2, v0, v10, v12, v13}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 358
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 359
    const-string v2, "Canonicalize constants"

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 360
    new-instance v2, Lcom/android/tools/r8/ir/optimize/z;

    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v15, v18

    invoke-direct {v2, v3, v15, v0}, Lcom/android/tools/r8/ir/optimize/z;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)V

    .line 361
    invoke-virtual {v2}, Lcom/android/tools/r8/ir/optimize/z;->a()V

    .line 362
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 363
    const-string v3, "IR after constant canonicalization (SSA)"

    .line 364
    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v3, v1, v4}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 365
    new-instance v3, Lcom/android/tools/r8/internal/qo;

    iget-object v4, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v3, v4, v2}, Lcom/android/tools/r8/internal/qo;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/z;)V

    .line 366
    invoke-virtual {v3, v0, v10, v12, v13}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 367
    const-string v2, "IR after DEX constant optimization (SSA)"

    .line 368
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_62
    move-object/from16 v15, v18

    .line 369
    :goto_21
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->t:Lcom/android/tools/r8/ir/optimize/v0;

    if-eqz v2, :cond_63

    .line 370
    const-string v3, "Compute and insert checkcast on return values"

    invoke-virtual {v13, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 371
    iget-object v3, v2, Lcom/android/tools/r8/ir/optimize/v0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v3

    .line 372
    invoke-virtual {v2, v3, v15, v0}, Lcom/android/tools/r8/ir/optimize/v0;->a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)Ljava/util/Set;

    move-result-object v3

    .line 373
    invoke-virtual {v2, v15, v0, v3}, Lcom/android/tools/r8/ir/optimize/v0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;)V

    .line 374
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 375
    :cond_63
    const-string v2, "Canonicalize idempotent calls"

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 376
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->h:Lcom/android/tools/r8/ir/optimize/M;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/ir/optimize/M;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 377
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 378
    const-string v2, "IR after idempotent function call canonicalization (SSA)"

    .line 379
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v8

    if-nez v11, :cond_64

    .line 380
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 381
    :cond_64
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    invoke-virtual {v1, v0, v13}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 382
    new-instance v1, Lcom/android/tools/r8/internal/w50;

    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/w50;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 383
    invoke-virtual {v1, v0, v10, v12, v13}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 384
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->a()Lcom/android/tools/r8/internal/v8$a;

    move-result-object v11

    .line 385
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 386
    const-string v1, "Collect optimization info"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v7

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v11

    move-object v14, v8

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p6

    .line 387
    invoke-virtual/range {v1 .. v8}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/u;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/v8$a;Lcom/android/tools/r8/internal/ns0;)V

    .line 388
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_22

    :cond_65
    move-object v14, v8

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 389
    :goto_22
    const-string v1, "Redundant catch/rethrow elimination"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 390
    new-instance v1, Lcom/android/tools/r8/internal/Pr0;

    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Pr0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    move/from16 v8, v16

    .line 392
    :cond_66
    :goto_23
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 393
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 394
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 395
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v4, v16

    .line 396
    :cond_67
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v5

    if-ge v4, v5, :cond_68

    .line 397
    iget-object v5, v3, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 398
    iget-object v5, v3, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 399
    check-cast v5, Lcom/android/tools/r8/internal/W5;

    invoke-static {v5}, Lcom/android/tools/r8/internal/Pr0;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v5

    if-nez v5, :cond_67

    goto :goto_23

    .line 400
    :cond_68
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v8, v16

    .line 401
    :goto_24
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v3

    if-ge v8, v3, :cond_69

    .line 402
    iget-object v3, v2, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 403
    iget-object v3, v2, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v8, v8, 0x1

    .line 404
    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->R()V

    goto :goto_24

    :cond_69
    move/from16 v8, v17

    goto :goto_23

    :cond_6a
    if-eqz v8, :cond_6b

    .line 405
    new-instance v1, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v1}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 406
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    .line 407
    :cond_6b
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 408
    const-string v1, "IR after redundant catch/rethrow elimination (SSA)"

    .line 409
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1, v14, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 410
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->u:Lcom/android/tools/r8/ir/optimize/q;

    if-eqz v2, :cond_6e

    .line 411
    const-string v2, "Remove assume instructions"

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 412
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v0}, Lcom/android/tools/r8/ir/optimize/x;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 414
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 415
    sget-boolean v2, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v2, :cond_6d

    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_6c

    goto :goto_25

    :cond_6c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 416
    :cond_6d
    :goto_25
    const-string v2, "IR after removing assume instructions (SSA)"

    .line 417
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 418
    new-instance v2, Lcom/android/tools/r8/internal/dY;

    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/dY;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v0, v10, v12, v13}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 419
    const-string v2, "IR after move result rewriter (SSA)"

    .line 420
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v1

    .line 421
    :cond_6e
    sget-boolean v2, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v2, :cond_6f

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->E()V

    :cond_6f
    if-nez v2, :cond_70

    .line 422
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    .line 423
    :cond_70
    const-string v2, "Optimized IR (SSA)"

    .line 424
    iget-object v3, v9, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v6

    .line 425
    const-string v1, "Finalize IR"

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 426
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/v8$a;->a()Lcom/android/tools/r8/internal/v8;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 428
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    instance-of v0, v10, Lcom/android/tools/r8/internal/P60;

    if-eqz v0, :cond_77

    .line 430
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/dX;->a()Lcom/android/tools/r8/internal/P60;

    move-result-object v0

    .line 431
    invoke-virtual {v15}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    .line 432
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object v2

    .line 433
    iget v2, v2, Lcom/android/tools/r8/internal/nJ$h;->d:I

    if-ltz v2, :cond_71

    goto :goto_26

    :cond_71
    const/4 v2, 0x5

    :goto_26
    add-int/lit8 v2, v2, 0x1

    .line 434
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/i0;->k(I)I

    move-result v1

    if-ltz v1, :cond_72

    goto :goto_27

    .line 435
    :cond_72
    iget-object v1, v9, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v2, v1, Lcom/android/tools/r8/internal/l40;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v15}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_77

    .line 437
    invoke-virtual {v15}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v1

    .line 438
    iget-object v2, v9, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    .line 439
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    invoke-virtual {v15}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object v2

    .line 441
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->i()Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    .line 442
    iget-object v4, v2, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 443
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    goto :goto_27

    .line 444
    :cond_73
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->n()Lcom/android/tools/r8/internal/xt;

    move-result-object v3

    .line 445
    iget-object v4, v2, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    .line 446
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto :goto_27

    .line 447
    :cond_74
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result v3

    if-eqz v3, :cond_75

    const/16 v3, 0x8

    .line 448
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v3

    if-nez v3, :cond_75

    goto :goto_27

    .line 449
    :cond_75
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->D()Z

    move-result v3

    if-nez v3, :cond_76

    const/16 v3, 0x20

    .line 450
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v3

    if-eqz v3, :cond_76

    goto :goto_27

    .line 451
    :cond_76
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->G()Z

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WY;->G()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 452
    :goto_27
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/internal/P60;->e(Lcom/android/tools/r8/graph/H5;)V

    return-object v13

    :catchall_0
    move-exception v0

    .line 453
    monitor-exit v1

    throw v0

    :cond_77
    return-object v13

    .line 454
    :cond_78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Forcing compilation failure for testing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/tools/r8/internal/fH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fH0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/lg1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/lg1;-><init>(Lcom/android/tools/r8/internal/kB;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 1075
    sget-boolean v0, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 1076
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1077
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/internal/jg1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/jg1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 1078
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    if-eqz v0, :cond_4

    .line 1079
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 1080
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xu;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 1081
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    if-eqz v0, :cond_5

    .line 1082
    iget-object v0, v0, Lcom/android/tools/r8/internal/Sv;->b:Lcom/android/tools/r8/internal/Xv;

    .line 1083
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1084
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1085
    iget-object v0, v0, Lcom/android/tools/r8/internal/Xv;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1087
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/S40;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 1088
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    if-eqz v0, :cond_8

    .line 1089
    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/W;->d:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)V

    .line 1090
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/W;->e:Lcom/android/tools/r8/ir/optimize/e0;

    .line 1091
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/e0;->d:Z

    if-nez v1, :cond_7

    .line 1092
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/e0;->b:Lcom/android/tools/r8/internal/h80;

    .line 1093
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 1094
    sget-object v1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 1095
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 1096
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    .line 1097
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1098
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/u;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/v8$a;Lcom/android/tools/r8/internal/ns0;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    .line 575
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/mg1;

    invoke-direct {v3, v1, v8, v11, v12}, Lcom/android/tools/r8/internal/mg1;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V

    .line 576
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    if-eqz v2, :cond_0

    .line 577
    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 578
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/xu;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 580
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/E10;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 581
    :cond_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    if-eqz v2, :cond_2

    .line 582
    iget-object v2, v2, Lcom/android/tools/r8/ir/optimize/W;->e:Lcom/android/tools/r8/ir/optimize/e0;

    .line 583
    invoke-virtual {v2, v1, v8, v11, v12}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V

    .line 584
    :cond_2
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->g:Lcom/android/tools/r8/shaking/h2;

    if-eqz v2, :cond_7

    .line 585
    const-string v2, "Analyze library method overrides"

    invoke-virtual {v12, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 586
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->g:Lcom/android/tools/r8/shaking/h2;

    .line 587
    iget-object v3, v2, Lcom/android/tools/r8/shaking/h2;->b:Ljava/util/Set;

    .line 588
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 589
    :cond_3
    new-instance v3, Lcom/android/tools/r8/internal/iv;

    iget-object v4, v2, Lcom/android/tools/r8/shaking/h2;->a:Lcom/android/tools/r8/graph/y;

    .line 590
    sget-object v5, Lcom/android/tools/r8/shaking/g2;->a:Lcom/android/tools/r8/shaking/g2;

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/iv;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/jv;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 592
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 593
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    .line 594
    iget-object v7, v2, Lcom/android/tools/r8/shaking/h2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 595
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    .line 596
    :cond_5
    iget-object v7, v2, Lcom/android/tools/r8/shaking/h2;->b:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 597
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lcom/android/tools/r8/internal/iv;->b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 598
    iget-object v5, v2, Lcom/android/tools/r8/shaking/h2;->b:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 599
    :cond_6
    :goto_1
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 600
    :cond_7
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    if-eqz v2, :cond_9

    .line 601
    const-string v2, "Analyze field accesses"

    invoke-virtual {v12, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 602
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    move-object/from16 v3, p6

    invoke-virtual {v2, v8, v3, v10, v11}, Lcom/android/tools/r8/internal/Sv;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8$a;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;)V

    .line 603
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    .line 604
    iget-object v2, v2, Lcom/android/tools/r8/internal/Sv;->b:Lcom/android/tools/r8/internal/Xv;

    if-eqz v2, :cond_8

    .line 605
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Xv;->a(Lcom/android/tools/r8/ir/optimize/u;)V

    .line 606
    :cond_8
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 607
    :cond_9
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_a0

    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/I1;->h(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_3f

    .line 608
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 610
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 611
    sget-boolean v3, Lcom/android/tools/r8/internal/Eo0;->k:Z

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_c
    :goto_2
    if-nez v3, :cond_e

    .line 612
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_3

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    :goto_3
    if-nez v3, :cond_10

    .line 613
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_4

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 614
    :cond_10
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ;->E:Z

    if-nez v3, :cond_11

    .line 615
    sget-object v2, Lcom/android/tools/r8/internal/Ho0;->a:Lcom/android/tools/r8/internal/Ho0;

    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 616
    :cond_11
    const-string v3, "Analyze class initializer"

    invoke-virtual {v12, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 617
    new-instance v3, Lcom/android/tools/r8/internal/Eo0;

    .line 618
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-direct {v3, v2, v8, v10}, Lcom/android/tools/r8/internal/Eo0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;)V

    .line 619
    invoke-virtual {v3, v9}, Lcom/android/tools/r8/internal/Eo0;->a(Lcom/android/tools/r8/ir/optimize/u;)V

    .line 620
    iget-object v2, v3, Lcom/android/tools/r8/internal/Eo0;->i:Lcom/android/tools/r8/internal/Fo0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Fo0;->a()Lcom/android/tools/r8/internal/Ko0;

    move-result-object v2

    .line 621
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_5

    .line 622
    :cond_12
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 623
    const-string v3, "Analyze instance initializer"

    invoke-virtual {v12, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 624
    sget-boolean v3, Lcom/android/tools/r8/internal/ZD;->m:Z

    if-nez v3, :cond_14

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_6

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_14
    :goto_6
    if-nez v3, :cond_16

    .line 625
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_7

    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_16
    :goto_7
    if-nez v3, :cond_18

    .line 626
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_8

    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 627
    :cond_18
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object v7

    if-nez v7, :cond_19

    .line 628
    sget-object v2, Lcom/android/tools/r8/internal/Qt;->a:Lcom/android/tools/r8/internal/Qt;

    goto :goto_9

    .line 629
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v6

    if-nez v6, :cond_1a

    .line 630
    sget-object v2, Lcom/android/tools/r8/internal/Qt;->a:Lcom/android/tools/r8/internal/Qt;

    goto :goto_9

    .line 631
    :cond_1a
    new-instance v14, Lcom/android/tools/r8/internal/ZD;

    .line 632
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    move-object v2, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/ZD;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/QJ;)V

    .line 633
    invoke-virtual {v14, v9}, Lcom/android/tools/r8/internal/Rw;->a(Lcom/android/tools/r8/ir/optimize/u;)V

    .line 634
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/ZD;->c()V

    .line 635
    iget-object v2, v14, Lcom/android/tools/r8/internal/ZD;->i:Lcom/android/tools/r8/internal/TD;

    .line 636
    iget-object v3, v2, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    .line 637
    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 638
    sget-object v2, Lcom/android/tools/r8/internal/Qt;->a:Lcom/android/tools/r8/internal/Qt;

    goto :goto_9

    .line 639
    :cond_1b
    new-instance v3, Lcom/android/tools/r8/internal/W00;

    iget-object v2, v2, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/W00;-><init>(Ljava/util/TreeMap;)V

    move-object v2, v3

    .line 640
    :goto_9
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_a

    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 641
    :goto_a
    iget-object v4, v0, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/android/tools/r8/internal/xu;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Ko0;)V

    .line 642
    iget-object v4, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v4

    .line 643
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ$n;->a()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 644
    iget-object v4, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 645
    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    .line 646
    iget-object v4, v4, Lcom/android/tools/r8/internal/Oa0;->g:Lcom/android/tools/r8/internal/ma0;

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_23

    .line 648
    instance-of v7, v2, Lcom/android/tools/r8/internal/Jo0;

    if-nez v7, :cond_1d

    goto :goto_e

    .line 649
    :cond_1d
    sget-boolean v7, Lcom/android/tools/r8/internal/ma0;->d:Z

    if-nez v7, :cond_1f

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v9

    if-eqz v9, :cond_1e

    goto :goto_b

    :cond_1e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 650
    :cond_1f
    :goto_b
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ko0;->a()Lcom/android/tools/r8/internal/Jo0;

    move-result-object v2

    if-nez v7, :cond_21

    .line 651
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_c

    :cond_20
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 652
    :cond_21
    :goto_c
    iget-object v7, v6, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v4, Lcom/android/tools/r8/internal/ma0;->a:Lcom/android/tools/r8/internal/La0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    if-ne v7, v9, :cond_22

    const/4 v7, 0x1

    goto :goto_d

    .line 653
    :cond_22
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    iget-object v9, v4, Lcom/android/tools/r8/internal/ma0;->a:Lcom/android/tools/r8/internal/La0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/La0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v9}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    :goto_d
    if-eqz v7, :cond_23

    .line 654
    iget-object v4, v4, Lcom/android/tools/r8/internal/ma0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v6, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_23
    :goto_e
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->y:Lcom/android/tools/r8/internal/VW;

    iget-object v4, v0, Lcom/android/tools/r8/internal/kB;->v:Lcom/android/tools/r8/ir/optimize/J;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    .line 657
    const-string v7, "Identify bridge info"

    invoke-virtual {v12, v7}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 658
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/L7;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/S7;

    move-result-object v7

    invoke-interface {v10, v1, v7}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/S7;)V

    .line 659
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 660
    const-string v7, "Identify returns argument"

    invoke-virtual {v12, v7}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 661
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v7

    .line 662
    iget-object v9, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v7}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v9

    iget-object v14, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v14, v7}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v9

    const/4 v14, 0x0

    if-nez v9, :cond_24

    goto/16 :goto_11

    .line 663
    :cond_24
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j1;

    .line 664
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->f()Ljava/util/List;

    move-result-object v15

    .line 665
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_25

    .line 666
    invoke-interface {v10, v7}, Lcom/android/tools/r8/internal/SW;->b(Lcom/android/tools/r8/graph/H5;)V

    goto/16 :goto_11

    .line 667
    :cond_25
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/tools/r8/internal/W5;

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v16

    .line 668
    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v17

    if-eqz v17, :cond_26

    goto/16 :goto_11

    .line 669
    :cond_26
    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    .line 670
    :goto_f
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_28

    .line 671
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v5

    .line 672
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-eq v5, v13, :cond_27

    const/4 v13, 0x0

    :cond_27
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    :cond_28
    if-eqz v13, :cond_2c

    .line 673
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 674
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v14

    if-nez v14, :cond_2c

    .line 675
    iget-object v14, v5, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 676
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v15

    if-eqz v15, :cond_29

    .line 677
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v15

    const/4 v0, 0x1

    .line 678
    invoke-virtual {v15, v0}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v15

    .line 679
    invoke-interface {v10, v9, v15}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;I)V

    .line 680
    :cond_29
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 681
    sget-object v15, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {v14, v0, v7, v15}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->b0()Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 683
    iget-object v5, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v10, v9, v5, v0}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    .line 684
    iget-object v5, v2, Lcom/android/tools/r8/internal/VW;->b:Lcom/android/tools/r8/internal/kc;

    if-eqz v5, :cond_2c

    .line 685
    invoke-virtual {v5, v7, v0, v11}, Lcom/android/tools/r8/internal/kc;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/dX;)V

    goto :goto_11

    .line 686
    :cond_2a
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 687
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 688
    invoke-static {v0, v7, v5}, Lcom/android/tools/r8/internal/R30;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q30;

    move-result-object v0

    .line 689
    iget-object v5, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 690
    sget-boolean v7, Lcom/android/tools/r8/internal/Co0;->c:Z

    .line 691
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 692
    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    goto :goto_10

    .line 693
    :cond_2b
    new-instance v7, Lcom/android/tools/r8/internal/Co0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/Co0;-><init>(Lcom/android/tools/r8/internal/Q30;)V

    move-object v0, v7

    .line 694
    :goto_10
    invoke-interface {v10, v9, v5, v0}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    .line 695
    :cond_2c
    :goto_11
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 696
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 697
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    .line 698
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 699
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H0;->v()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3e

    const/4 v7, 0x0

    .line 700
    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    iget-object v13, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 701
    invoke-virtual {v9, v13}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 702
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 703
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_13

    .line 704
    :cond_2d
    new-instance v0, Lcom/android/tools/r8/internal/jS;

    .line 705
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-direct {v0, v5, v7}, Lcom/android/tools/r8/internal/jS;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    .line 706
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v5

    .line 707
    sget-boolean v7, Lcom/android/tools/r8/internal/Nf;->a:Z

    if-nez v7, :cond_2f

    if-eqz v5, :cond_2e

    goto :goto_12

    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 708
    :cond_2f
    :goto_12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    const-wide/32 v13, 0x12492492

    invoke-virtual {v7, v13, v14}, Lcom/android/tools/r8/internal/zE;->a(J)Lcom/android/tools/r8/internal/qh;

    move-result-object v7

    if-nez v7, :cond_30

    goto/16 :goto_13

    .line 709
    :cond_30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v9, v13, v7}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/t2;

    move-result-object v7

    if-nez v7, :cond_31

    goto/16 :goto_13

    .line 710
    :cond_31
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    const-wide/32 v13, 0x24924924

    invoke-virtual {v9, v13, v14}, Lcom/android/tools/r8/internal/zE;->a(J)Lcom/android/tools/r8/internal/qh;

    move-result-object v9

    if-nez v9, :cond_32

    goto/16 :goto_13

    .line 711
    :cond_32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v13

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v13, v14, v9}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/t2;

    move-result-object v9

    if-nez v9, :cond_33

    goto/16 :goto_13

    .line 712
    :cond_33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v13

    const-wide/32 v14, -0x36db6db7

    invoke-virtual {v13, v14, v15}, Lcom/android/tools/r8/internal/zE;->a(J)Lcom/android/tools/r8/internal/qh;

    move-result-object v13

    if-nez v13, :cond_34

    goto/16 :goto_13

    .line 713
    :cond_34
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v14, v5, v13}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/t2;

    move-result-object v5

    if-nez v5, :cond_35

    goto/16 :goto_13

    .line 714
    :cond_35
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v13

    const-wide/16 v14, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/tools/r8/internal/zE;->a(J)Lcom/android/tools/r8/internal/qh;

    move-result-object v13

    if-nez v13, :cond_36

    goto/16 :goto_13

    .line 715
    :cond_36
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Sl0;

    move-result-object v13

    if-nez v13, :cond_37

    goto/16 :goto_13

    .line 716
    :cond_37
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/A40;

    move-result-object v13

    if-nez v13, :cond_38

    goto/16 :goto_13

    .line 717
    :cond_38
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v14, v5, v13}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/A40;

    move-result-object v5

    if-nez v5, :cond_39

    goto/16 :goto_13

    .line 718
    :cond_39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v13

    const-wide/16 v14, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/tools/r8/internal/zE;->a(J)Lcom/android/tools/r8/internal/qh;

    move-result-object v13

    if-nez v13, :cond_3a

    goto :goto_13

    .line 719
    :cond_3a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v14, v7, v13}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ol0;

    move-result-object v7

    if-nez v7, :cond_3b

    goto :goto_13

    .line 720
    :cond_3b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v13, v7, v9}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/t2;

    move-result-object v7

    if-nez v7, :cond_3c

    goto :goto_13

    .line 721
    :cond_3c
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    .line 722
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 723
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 724
    invoke-virtual {v9, v5, v7}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/A40;

    move-result-object v5

    if-nez v5, :cond_3d

    goto :goto_13

    .line 725
    :cond_3d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 726
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-ne v0, v5, :cond_3e

    .line 727
    new-instance v0, Lcom/android/tools/r8/internal/aX;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v0, v5, v7}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    .line 728
    new-instance v5, Lcom/android/tools/r8/internal/Yf;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/Yf;-><init>(Lcom/android/tools/r8/internal/Vf;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v10, v0, v5}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/Yf;)V

    .line 730
    :cond_3e
    :goto_13
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->d:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->J:Z

    if-eqz v0, :cond_3f

    .line 731
    const-string v0, "Compute class inlining constraint"

    invoke-virtual {v12, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 732
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 733
    invoke-static {v0, v1, v8, v12}, Lcom/android/tools/r8/internal/ad;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Zc;

    move-result-object v0

    .line 734
    invoke-interface {v10, v1, v0}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Zc;)V

    .line 735
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 736
    :cond_3f
    const-string v0, "Compute enum unboxer method classification"

    invoke-virtual {v12, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 737
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->w()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 738
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nu;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 739
    invoke-interface {v10, v1}, Lcom/android/tools/r8/internal/SW;->c(Lcom/android/tools/r8/graph/H5;)V

    goto :goto_15

    .line 740
    :cond_40
    sget-boolean v0, Lcom/android/tools/r8/internal/VW;->e:Z

    if-nez v0, :cond_47

    .line 741
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/TW;->o()Lcom/android/tools/r8/internal/Au;

    move-result-object v5

    .line 742
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    instance-of v7, v5, Lcom/android/tools/r8/internal/vc;

    if-eqz v7, :cond_44

    .line 744
    iget-object v7, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 745
    invoke-static {v7, v1, v8, v11}, Lcom/android/tools/r8/internal/Bu;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Lcom/android/tools/r8/internal/Au;

    move-result-object v7

    if-nez v0, :cond_42

    .line 746
    instance-of v9, v7, Lcom/android/tools/r8/internal/vc;

    if-eqz v9, :cond_41

    goto :goto_14

    .line 747
    :cond_41
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_42
    :goto_14
    if-nez v0, :cond_47

    .line 748
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Au;->a()Lcom/android/tools/r8/internal/vc;

    move-result-object v0

    .line 749
    iget v0, v0, Lcom/android/tools/r8/internal/vc;->a:I

    .line 750
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Au;->a()Lcom/android/tools/r8/internal/vc;

    move-result-object v5

    .line 751
    iget v5, v5, Lcom/android/tools/r8/internal/vc;->a:I

    if-ne v0, v5, :cond_43

    goto :goto_15

    .line 752
    :cond_43
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_44
    if-nez v0, :cond_47

    .line 753
    instance-of v0, v5, Lcom/android/tools/r8/internal/jv0;

    if-eqz v0, :cond_45

    goto :goto_15

    .line 754
    :cond_45
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 755
    :cond_46
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 756
    invoke-static {v0, v1, v8, v11}, Lcom/android/tools/r8/internal/Bu;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Lcom/android/tools/r8/internal/Au;

    move-result-object v0

    .line 757
    invoke-interface {v10, v1, v0}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Au;)V

    .line 758
    :cond_47
    :goto_15
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 759
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->I:Z

    if-eqz v0, :cond_4b

    .line 760
    const-string v0, "Compute simple inlining constraint"

    invoke-virtual {v12, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 761
    new-instance v0, Lcom/android/tools/r8/internal/Zl0;

    iget-object v5, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v5, v1}, Lcom/android/tools/r8/internal/Zl0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 762
    iget-object v5, v0, Lcom/android/tools/r8/internal/Zl0;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v5

    if-nez v5, :cond_48

    .line 763
    sget-object v0, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    :goto_16
    const/4 v9, 0x0

    goto :goto_17

    .line 764
    :cond_48
    iget-object v5, v0, Lcom/android/tools/r8/internal/Zl0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v5, v5, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v5, :cond_49

    .line 765
    sget-object v0, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    goto :goto_16

    .line 766
    :cond_49
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    .line 767
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->l()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/CE;->j(I)Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    const/4 v9, 0x0

    .line 768
    invoke-virtual {v0, v5, v9, v9, v7}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/W5;IILcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/dm0;

    move-result-object v0

    .line 769
    :goto_17
    iget v5, v0, Lcom/android/tools/r8/internal/dm0;->b:I

    if-nez v5, :cond_4a

    iget-object v5, v0, Lcom/android/tools/r8/internal/dm0;->a:Lcom/android/tools/r8/internal/Xl0;

    goto :goto_18

    :cond_4a
    sget-object v5, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    .line 770
    :goto_18
    iget-object v0, v0, Lcom/android/tools/r8/internal/dm0;->a:Lcom/android/tools/r8/internal/Xl0;

    .line 771
    invoke-interface {v10, v1, v5}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Xl0;)V

    .line 772
    invoke-interface {v10, v1, v0}, Lcom/android/tools/r8/internal/SW;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Xl0;)V

    .line 773
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_19

    :cond_4b
    const/4 v9, 0x0

    .line 774
    :goto_19
    const-string v0, "Compute dynamic return type"

    invoke-virtual {v12, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    if-eqz v4, :cond_4c

    .line 775
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 776
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    iget-object v5, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v5, v1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v0

    if-nez v0, :cond_4d

    :cond_4c
    const/4 v15, 0x0

    goto/16 :goto_1d

    .line 777
    :cond_4d
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/J;->b:Z

    if-nez v0, :cond_4f

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_1a

    :cond_4e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 778
    :cond_4f
    :goto_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    iget-object v5, v8, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 780
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_50
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 781
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    .line 782
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v11

    if-eqz v11, :cond_50

    .line 783
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 784
    iget-object v11, v4, Lcom/android/tools/r8/ir/optimize/J;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v11}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 785
    :cond_51
    iget-object v5, v4, Lcom/android/tools/r8/ir/optimize/J;->a:Lcom/android/tools/r8/graph/y;

    sget-boolean v7, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 786
    sget-object v7, Lcom/android/tools/r8/internal/zt;->c:Lcom/android/tools/r8/internal/zt;

    .line 787
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object v13, v7

    move v7, v9

    :goto_1c
    if-ge v7, v11, :cond_52

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v7, v7, 0x1

    check-cast v14, Lcom/android/tools/r8/internal/xt;

    const/4 v15, 0x0

    .line 788
    invoke-virtual {v13, v5, v14, v15, v15}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object v13

    goto :goto_1c

    :cond_52
    const/4 v15, 0x0

    .line 789
    iget-object v0, v4, Lcom/android/tools/r8/ir/optimize/J;->a:Lcom/android/tools/r8/graph/y;

    .line 790
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 791
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v0

    .line 793
    iget-object v0, v0, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    .line 794
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 795
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object v13

    .line 796
    :cond_53
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_1d

    .line 797
    :cond_54
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xt;->k()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 798
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    iget-object v4, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 799
    iget-object v5, v4, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 800
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/tools/r8/internal/G1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;

    move-result-object v5

    .line 801
    invoke-interface {v10, v0, v4, v5}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    .line 802
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 803
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v10, v0, v4, v13}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V

    goto :goto_1d

    .line 804
    :cond_55
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 805
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v10, v0, v4, v13}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V

    goto :goto_1d

    .line 807
    :cond_56
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v4, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    .line 809
    invoke-static {v0, v5, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 810
    invoke-static {v4, v0}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    .line 811
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v4

    iget-object v5, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 812
    invoke-virtual {v4, v5, v0}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 813
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 814
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v10, v0, v4, v13}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V

    .line 815
    :cond_57
    :goto_1d
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 816
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->d:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->L:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_5e

    .line 817
    const-string v0, "Compute initialized classes on normal exits"

    invoke-virtual {v12, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 818
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->d:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->L:Z

    if-eqz v0, :cond_5d

    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i;->i()Z

    .line 819
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 820
    new-instance v5, Lcom/android/tools/r8/internal/dt;

    invoke-direct {v5, v8, v4}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    .line 821
    new-instance v7, Lcom/android/tools/r8/internal/yD;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    invoke-direct {v7, v0, v11}, Lcom/android/tools/r8/internal/yD;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 822
    sget-boolean v0, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez v0, :cond_59

    iget-boolean v0, v5, Lcom/android/tools/r8/internal/dt;->e:Z

    if-nez v0, :cond_58

    goto :goto_1e

    :cond_58
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 823
    :cond_59
    :goto_1e
    iget-object v0, v5, Lcom/android/tools/r8/internal/dt;->c:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;)Ljava/lang/Iterable;

    move-result-object v0

    .line 824
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 825
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v11

    if-eqz v11, :cond_5b

    goto :goto_1f

    .line 826
    :cond_5b
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/zE;

    .line 827
    invoke-virtual {v11, v7}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;

    goto :goto_20

    .line 828
    :cond_5c
    iget-object v0, v7, Lcom/android/tools/r8/internal/yD;->c:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 829
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 830
    invoke-interface {v10, v0, v6}, Lcom/android/tools/r8/internal/SW;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/j1;)V

    .line 831
    :cond_5d
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 832
    :cond_5e
    const-string v0, "Compute instance initializer info"

    invoke-virtual {v12, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 833
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_34

    .line 834
    :cond_5f
    sget-boolean v0, Lcom/android/tools/r8/internal/VW;->e:Z

    if-nez v0, :cond_61

    if-eqz v3, :cond_60

    goto :goto_21

    :cond_60
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 835
    :cond_61
    :goto_21
    iget-object v0, v6, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-eqz v0, :cond_62

    goto/16 :goto_34

    .line 836
    :cond_62
    iget-object v0, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->w:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto/16 :goto_34

    .line 837
    :cond_63
    sget-object v0, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    .line 838
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    .line 839
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    iget-object v11, v2, Lcom/android/tools/r8/internal/VW;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v11, v11, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    iget-object v11, v11, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1$c;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7, v11}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    if-eqz v7, :cond_64

    goto/16 :goto_2e

    .line 841
    :cond_64
    sget-object v7, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    .line 842
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    .line 843
    iget-object v13, v8, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x7

    move/from16 v17, v9

    move-object v9, v15

    :goto_22
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/tools/r8/internal/W5;

    .line 844
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v19

    if-eqz v19, :cond_65

    const/16 v17, 0x1

    .line 845
    :cond_65
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v18

    :goto_23
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    check-cast v15, Lcom/android/tools/r8/internal/zE;

    .line 846
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 847
    :pswitch_0
    sget-object v0, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    const/4 v14, 0x0

    :goto_24
    const/4 v15, 0x0

    goto :goto_23

    .line 848
    :pswitch_1
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v15

    .line 849
    iget-object v4, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v13

    .line 850
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v13

    .line 851
    sget-object v1, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v15, v4, v5, v13, v1}, Lcom/android/tools/r8/internal/tZ;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 852
    sget-object v0, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    and-int/lit8 v14, v14, -0x3

    :cond_66
    move-object/from16 v1, p1

    :goto_25
    move-object/from16 v13, v19

    :goto_26
    const/4 v4, 0x2

    goto :goto_24

    :pswitch_2
    move-object/from16 v19, v13

    .line 853
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v1

    .line 854
    iget-object v4, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 855
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v13

    .line 856
    sget-object v15, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v1, v4, v5, v13, v15}, Lcom/android/tools/r8/internal/qZ;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v4

    if-eqz v4, :cond_67

    and-int/lit8 v4, v14, -0x3

    move v14, v4

    .line 857
    :cond_67
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 858
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x0

    :cond_68
    if-ge v13, v4, :cond_66

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    .line 859
    invoke-static {v15, v11}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v15

    if-eqz v15, :cond_68

    goto/16 :goto_2d

    :pswitch_3
    move-object/from16 v19, v13

    .line 860
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    .line 861
    sget-object v1, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    and-int/lit8 v14, v14, -0x3

    .line 862
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 863
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x0

    :cond_69
    if-ge v13, v4, :cond_6a

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    .line 864
    invoke-static {v15, v11}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v15

    if-eqz v15, :cond_69

    move-object v0, v1

    goto/16 :goto_2d

    :cond_6a
    move-object v0, v1

    move-object/from16 v13, v19

    const/4 v4, 0x2

    const/4 v15, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_23

    :pswitch_4
    move-object/from16 v19, v13

    .line 865
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v1

    .line 866
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 867
    iget-object v13, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 868
    iget-object v15, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v13, v15}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v13

    .line 869
    invoke-virtual {v4, v13}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/j1;

    move-result-object v13

    if-nez v13, :cond_6b

    goto/16 :goto_2e

    .line 870
    :cond_6b
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v15

    if-eqz v15, :cond_7d

    .line 871
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    if-ne v15, v11, :cond_7d

    if-eqz v9, :cond_6c

    const/4 v15, 0x1

    goto :goto_27

    :cond_6c
    const/4 v15, 0x0

    :goto_27
    if-eqz v15, :cond_6d

    .line 872
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v15

    if-eq v9, v15, :cond_6d

    goto/16 :goto_2e

    .line 873
    :cond_6d
    iget-object v15, v2, Lcom/android/tools/r8/internal/VW;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v15, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/J1;->k:Lcom/android/tools/r8/graph/A2;

    if-eq v4, v8, :cond_7a

    iget-object v8, v15, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v4, v8, :cond_6e

    goto/16 :goto_2a

    .line 874
    :cond_6e
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 875
    iget-object v8, v13, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 876
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object v8

    .line 877
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/fE;->f()Lcom/android/tools/r8/internal/p;

    move-result-object v13

    .line 878
    instance-of v15, v0, Lcom/android/tools/r8/internal/ov0;

    if-nez v15, :cond_72

    .line 879
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 880
    instance-of v15, v13, Lcom/android/tools/r8/internal/Ot;

    if-eqz v15, :cond_6f

    goto :goto_28

    .line 881
    :cond_6f
    instance-of v15, v13, Lcom/android/tools/r8/internal/ov0;

    if-eqz v15, :cond_70

    .line 882
    sget-object v0, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    goto :goto_28

    .line 883
    :cond_70
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v13

    .line 884
    instance-of v15, v0, Lcom/android/tools/r8/internal/Ot;

    if-eqz v15, :cond_71

    .line 885
    new-instance v0, Lcom/android/tools/r8/internal/qg;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qg;-><init>()V

    .line 886
    iget-object v15, v0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    iget-object v13, v13, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v15, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_28

    .line 887
    :cond_71
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v15

    .line 888
    iget-object v15, v15, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 889
    iget-object v13, v13, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v15, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 890
    :cond_72
    :goto_28
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/fE;->d()Z

    move-result v13

    if-eqz v13, :cond_73

    and-int/lit8 v14, v14, -0x2

    .line 891
    :cond_73
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/fE;->e()Z

    move-result v13

    if-eqz v13, :cond_74

    and-int/lit8 v14, v14, -0x3

    .line 892
    :cond_74
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/fE;->g()Z

    move-result v8

    if-nez v8, :cond_75

    and-int/lit8 v14, v14, -0x5

    :cond_75
    const/4 v8, 0x1

    .line 893
    :goto_29
    iget-object v13, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 894
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_78

    .line 895
    iget-object v13, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 896
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 897
    sget-object v15, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v13, v7, v15}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    .line 898
    invoke-static {v13, v11}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v15

    if-eqz v15, :cond_76

    and-int/lit8 v14, v14, -0x5

    .line 899
    :cond_76
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->X()Z

    move-result v13

    if-nez v13, :cond_77

    and-int/lit8 v13, v14, -0x2

    move v14, v13

    :cond_77
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 900
    :cond_78
    sget-boolean v1, Lcom/android/tools/r8/internal/X00;->a:Z

    if-nez v1, :cond_7c

    if-eqz v9, :cond_7c

    if-ne v9, v4, :cond_79

    goto :goto_2b

    :cond_79
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 901
    :cond_7a
    :goto_2a
    sget-boolean v1, Lcom/android/tools/r8/internal/X00;->a:Z

    if-nez v1, :cond_7c

    if-eqz v9, :cond_7c

    if-ne v9, v4, :cond_7b

    goto :goto_2b

    :cond_7b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7c
    :goto_2b
    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object v9, v4

    goto/16 :goto_25

    .line 902
    :cond_7d
    sget-object v0, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    and-int/lit8 v4, v14, -0x3

    .line 903
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 904
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v13, 0x0

    :cond_7e
    if-ge v13, v8, :cond_7f

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    .line 905
    invoke-static {v15, v11}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v15

    if-eqz v15, :cond_7e

    and-int/lit8 v1, v14, -0x7

    move v14, v1

    goto :goto_2c

    :cond_7f
    move v14, v4

    :cond_80
    :goto_2c
    move-object/from16 v1, p1

    move-object/from16 v8, p2

    goto/16 :goto_25

    :pswitch_5
    move-object/from16 v19, v13

    .line 906
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v1

    .line 907
    iget-object v4, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 908
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v4

    if-nez v4, :cond_81

    goto :goto_2e

    .line 909
    :cond_81
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 910
    sget-object v8, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v4, v7, v8}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-ne v4, v11, :cond_82

    .line 911
    iget-object v4, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 912
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v13

    .line 913
    sget-object v15, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v1, v4, v5, v13, v15}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v4

    if-eqz v4, :cond_83

    :cond_82
    and-int/lit8 v14, v14, -0x3

    .line 914
    :cond_83
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    invoke-virtual {v1, v7, v8}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 916
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->X()Z

    move-result v4

    if-nez v4, :cond_84

    and-int/lit8 v4, v14, -0x2

    move v14, v4

    .line 917
    :cond_84
    invoke-static {v1, v11}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-eqz v1, :cond_80

    :goto_2d
    and-int/lit8 v14, v14, -0x5

    goto :goto_2c

    :pswitch_6
    move-object/from16 v19, v13

    .line 918
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v1

    .line 919
    iget-object v4, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 920
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object v4

    if-nez v4, :cond_85

    :goto_2e
    const/4 v0, 0x0

    goto/16 :goto_32

    .line 921
    :cond_85
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p;->d()Z

    move-result v8

    if-eqz v8, :cond_87

    .line 922
    instance-of v8, v0, Lcom/android/tools/r8/internal/Ot;

    if-eqz v8, :cond_86

    .line 923
    new-instance v0, Lcom/android/tools/r8/internal/qg;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/g1;

    invoke-direct {v0, v8}, Lcom/android/tools/r8/internal/qg;-><init>(Lcom/android/tools/r8/graph/g1;)V

    goto :goto_2f

    .line 924
    :cond_86
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/g1;

    .line 925
    iget-object v8, v8, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 926
    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_87
    :goto_2f
    sget-boolean v8, Lcom/android/tools/r8/internal/X00;->a:Z

    if-nez v8, :cond_89

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/p;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v4

    if-eqz v4, :cond_88

    goto :goto_30

    :cond_88
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 928
    :cond_89
    :goto_30
    iget-object v4, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 929
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v8

    .line 930
    sget-object v13, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v1, v4, v5, v8, v13}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v4

    if-eqz v4, :cond_80

    and-int/lit8 v14, v14, -0x3

    .line 931
    instance-of v1, v1, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v1, :cond_80

    .line 932
    sget-object v0, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    goto/16 :goto_2c

    :pswitch_7
    move-object/from16 v19, v13

    and-int/lit8 v14, v14, -0x2

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    goto/16 :goto_26

    :pswitch_8
    move-object/from16 v19, v13

    goto :goto_31

    :pswitch_9
    move-object/from16 v19, v13

    goto/16 :goto_2c

    :pswitch_a
    move-object/from16 v19, v13

    .line 933
    iget-object v1, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 934
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v4

    .line 935
    sget-object v8, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v15, v1, v5, v4, v8}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v1

    if-eqz v1, :cond_80

    :goto_31
    and-int/lit8 v14, v14, -0x3

    goto/16 :goto_2c

    :cond_8a
    move-object/from16 v1, p1

    move-object/from16 v8, p2

    goto/16 :goto_22

    :cond_8b
    if-eqz v17, :cond_8c

    and-int/lit8 v1, v14, -0x3

    if-nez v1, :cond_8c

    and-int/lit8 v14, v14, -0x2

    .line 936
    :cond_8c
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/UD;->a()Z

    move-result v1

    if-eqz v1, :cond_8d

    if-nez v14, :cond_8d

    .line 937
    instance-of v1, v0, Lcom/android/tools/r8/internal/ov0;

    if-eqz v1, :cond_8d

    if-nez v9, :cond_8d

    .line 938
    sget-object v0, Lcom/android/tools/r8/internal/Dj;->a:Lcom/android/tools/r8/internal/Dj;

    goto :goto_32

    .line 939
    :cond_8d
    new-instance v1, Lcom/android/tools/r8/internal/Y00;

    invoke-direct {v1, v14, v3, v0, v9}, Lcom/android/tools/r8/internal/Y00;-><init>(ILcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/p;Lcom/android/tools/r8/graph/A2;)V

    move-object v0, v1

    :goto_32
    if-eqz v0, :cond_8e

    .line 940
    instance-of v1, v0, Lcom/android/tools/r8/internal/Y00;

    if-eqz v1, :cond_8e

    .line 941
    new-instance v1, Lcom/android/tools/r8/internal/ei;

    .line 942
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fE;->a()Lcom/android/tools/r8/internal/Y00;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/ei;-><init>(Lcom/android/tools/r8/internal/Y00;)V

    goto :goto_33

    .line 943
    :cond_8e
    sget-object v1, Lcom/android/tools/r8/internal/Rt;->a:Lcom/android/tools/r8/internal/Rt;

    .line 944
    :goto_33
    invoke-interface {v10, v6, v1}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/gE;)V

    .line 945
    :goto_34
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 946
    const-string v0, "Compute may have side effects"

    invoke-virtual {v12, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v0, p2

    .line 947
    invoke-virtual {v2, v10, v6, v0}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/fB;)V

    .line 948
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 949
    const-string v1, "Return value only depends on argument"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 950
    iget-object v1, v2, Lcom/android/tools/r8/internal/VW;->d:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->N:Z

    if-nez v1, :cond_8f

    goto :goto_35

    .line 951
    :cond_8f
    iget-object v1, v2, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 952
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Im;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 953
    invoke-interface {v10, v6}, Lcom/android/tools/r8/internal/SW;->c(Lcom/android/tools/r8/graph/j1;)V

    .line 954
    :cond_90
    :goto_35
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 955
    const-string v1, "Compute non-null-param-or-throw"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 956
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 957
    iget-object v1, v6, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 958
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->s()Ljava/util/BitSet;

    move-result-object v1

    if-eqz v1, :cond_91

    goto :goto_37

    .line 959
    :cond_91
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->d()Ljava/util/List;

    move-result-object v1

    .line 960
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    .line 961
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 962
    :goto_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_93

    .line 963
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 964
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v7

    if-eqz v7, :cond_92

    invoke-virtual {v2, v0, v5}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 965
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 966
    :cond_93
    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    .line 967
    invoke-interface {v10, v6, v3}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Ljava/util/BitSet;)V

    move-object v13, v3

    goto :goto_38

    :cond_94
    :goto_37
    const/4 v13, 0x0

    .line 968
    :goto_38
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 969
    const-string v1, "Compute non-null-param-on-normal-exits"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 970
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 971
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 972
    new-instance v3, Lcom/android/tools/r8/internal/dt;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->d()Ljava/util/List;

    move-result-object v4

    .line 974
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    if-eqz v13, :cond_95

    .line 975
    invoke-virtual {v5, v13}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 976
    :cond_95
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    .line 977
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    .line 978
    :goto_39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_98

    .line 979
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_96

    goto :goto_3a

    .line 980
    :cond_96
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 981
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v8

    if-eqz v8, :cond_97

    .line 982
    invoke-virtual {v2, v0, v7, v3, v1}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/dt;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 983
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    :cond_97
    :goto_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 984
    :cond_98
    invoke-virtual {v5}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_99

    .line 985
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    invoke-interface {v10, v1, v5}, Lcom/android/tools/r8/internal/SW;->b(Lcom/android/tools/r8/graph/j1;Ljava/util/BitSet;)V

    .line 986
    :cond_99
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 987
    const-string v1, "Compute parameters with bitwise operations"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 988
    new-instance v1, Ljava/util/BitSet;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v2

    .line 990
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v3

    :goto_3b
    if-eqz v3, :cond_9b

    .line 991
    invoke-static {v3}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/k3;)Z

    move-result v4

    if-eqz v4, :cond_9a

    const/4 v4, 0x1

    .line 992
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v3

    .line 993
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 994
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v5

    xor-int/2addr v5, v4

    .line 995
    invoke-static {v5}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v4

    sub-int/2addr v3, v4

    .line 996
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 997
    :cond_9a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v3

    goto :goto_3b

    .line 998
    :cond_9b
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9c

    move-object/from16 v2, p1

    .line 999
    invoke-interface {v10, v2, v1}, Lcom/android/tools/r8/internal/SW;->b(Lcom/android/tools/r8/graph/H5;Ljava/util/BitSet;)V

    goto :goto_3c

    :cond_9c
    move-object/from16 v2, p1

    .line 1000
    :goto_3c
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1001
    const-string v1, "Compute unused arguments"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1002
    new-instance v1, Ljava/util/BitSet;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 1003
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    .line 1004
    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v3

    .line 1005
    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    .line 1007
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v3

    :goto_3d
    if-eqz v3, :cond_9e

    .line 1008
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v4

    if-nez v4, :cond_9d

    const/4 v4, 0x1

    .line 1009
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v3

    .line 1010
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_3e

    :cond_9d
    const/4 v4, 0x1

    .line 1011
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v3

    goto :goto_3d

    .line 1012
    :cond_9e
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 1013
    invoke-interface {v10, v2, v1}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/H5;Ljava/util/BitSet;)V

    .line 1014
    :cond_9f
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    :cond_a0
    :goto_3f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 7

    .line 61
    iget-object v2, p0, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    .line 62
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    .line 63
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/gX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/fB;)V
    .locals 5

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 49
    sget-boolean v1, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    invoke-virtual {v2, p1, v1}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 52
    new-instance v2, Lcom/android/tools/r8/internal/tB;

    iget-object v3, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/tB;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)V

    .line 53
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 54
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/ns0;)V
    .locals 7

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EW$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Zw;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Zw;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, p1, p3}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/xq0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kB;->o:Lcom/android/tools/r8/naming/E;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/xq0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/E;)V

    invoke-virtual {v0, p1, p3}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    invoke-virtual {v0, p1, p3}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v4

    const-string v6, ""

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)V
    .locals 5

    .line 1016
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->d:Z

    if-eqz v0, :cond_4

    .line 1017
    new-instance v0, Lcom/android/tools/r8/internal/rT;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rT;-><init>()V

    .line 1018
    const-string v1, "indirect phis"

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/tT;Ljava/lang/String;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    .line 1019
    new-instance v1, Lcom/android/tools/r8/internal/k60;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/k60;-><init>()V

    .line 1020
    const-string v2, "inline phis"

    invoke-virtual {p0, v0, v1, v2, p4}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/tT;Ljava/lang/String;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    .line 1021
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->o()Lcom/android/tools/r8/internal/AE;

    move-result-object p1

    .line 1022
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->o()Lcom/android/tools/r8/internal/AE;

    move-result-object v1

    .line 1023
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1024
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 1025
    iget-object v4, p3, Lcom/android/tools/r8/internal/v8;->a:Ljava/util/Map;

    .line 1026
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/s8;

    if-eqz v2, :cond_0

    .line 1027
    iget-object v4, p3, Lcom/android/tools/r8/internal/v8;->a:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1028
    :cond_1
    sget-boolean v2, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    move-object p1, v0

    .line 1029
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 1030
    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 1031
    iget-object v2, p0, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    iget-object v3, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)Lcom/android/tools/r8/internal/lB;

    move-result-object v1

    .line 1032
    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)Lcom/android/tools/r8/graph/i0;

    move-result-object p3

    iget-object p4, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 1033
    invoke-virtual {v0, p3, p4}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 1034
    iget-object p3, p0, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p3

    goto :goto_2

    :cond_5
    sget-object p3, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    .line 1035
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    invoke-interface {p2, p4, p3}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/optimize/O;)V

    .line 1036
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    const-string p2, "After finalization"

    .line 1037
    iget-object p3, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/EW$a;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 57
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 59
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/graph/uc;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/graph/uc;-><init>(Lcom/android/tools/r8/internal/m80;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/EW$a;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/EW$a;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/d40;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/tools/r8/internal/d40;-><init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/m80;)V

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/tg1;

    invoke-direct {p1, p0, v1, p3}, Lcom/android/tools/r8/internal/tg1;-><init>(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/internal/EW$a;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p2

    .line 8
    invoke-virtual {v1, p1, p2, p4}, Lcom/android/tools/r8/internal/d40;->a(Lcom/android/tools/r8/internal/c40;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/EW$a;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/tools/r8/internal/rg1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/rg1;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/m80;->a(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/EW$a;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v1, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l40;->b()V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/og1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/og1;-><init>(Lcom/android/tools/r8/internal/kB;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;
    .locals 11

    move-object v2, p1

    .line 1
    iget-object v0, v2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 2
    iget-object v8, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 3
    new-instance v9, Lcom/android/tools/r8/position/MethodPosition;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    new-instance v10, Lcom/android/tools/r8/internal/kg1;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/kg1;-><init>(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)V

    .line 5
    invoke-static {v8, v9, v10}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->d(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->A0:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering phase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->a1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, v0, Lcom/android/tools/r8/graph/c6;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_3

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->F0:Z

    if-eqz v0, :cond_3

    :goto_0
    move v0, v1

    goto :goto_3

    .line 8
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    .line 10
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/EW$a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/EW$a;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_7
    :goto_2
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/EW$a;->b()Z

    move-result v0

    goto :goto_3

    .line 12
    :cond_8
    iget-object v0, v2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 13
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    xor-int/2addr v0, v1

    :goto_3
    if-eqz v0, :cond_b

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->h1:Z

    if-eqz v0, :cond_9

    goto :goto_4

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0, p5}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v2

    if-nez v2, :cond_a

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    sget-object p3, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    invoke-interface {p2, p1, p3}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/optimize/O;)V

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1

    :cond_a
    move-object v1, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    .line 18
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1

    .line 19
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    sget-object p3, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    invoke-interface {p2, p1, p3}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/optimize/O;)V

    .line 20
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 21
    sget-boolean v0, Lcom/android/tools/r8/internal/kB;->H:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/internal/ng1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ng1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    if-eqz v0, :cond_4

    .line 25
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xu;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, v0, Lcom/android/tools/r8/internal/Sv;->b:Lcom/android/tools/r8/internal/Xv;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/Xv;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/S40;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    if-eqz v0, :cond_6

    .line 35
    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/W;->d:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)V

    :cond_6
    return-void
.end method
