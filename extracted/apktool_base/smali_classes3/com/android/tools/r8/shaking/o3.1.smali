.class public Lcom/android/tools/r8/shaking/o3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/o3$a;
    }
.end annotation


# instance fields
.field public final A:Lcom/android/tools/r8/internal/hC;

.field public final B:Lcom/android/tools/r8/internal/hC;

.field public final C:Z

.field public final D:Lcom/android/tools/r8/shaking/b3;

.field public final E:Lcom/android/tools/r8/shaking/c4;

.field public final F:Lcom/android/tools/r8/shaking/c4;

.field public final G:Lcom/android/tools/r8/shaking/c4;

.field public final H:Z

.field public final I:Z

.field public final J:Z

.field public final K:I

.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/hC;

.field public final d:Lcom/android/tools/r8/internal/nJ$m;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/nio/file/Path;

.field public final m:Z

.field public final n:Ljava/nio/file/Path;

.field public final o:Z

.field public final p:Ljava/nio/file/Path;

.field public final q:Ljava/nio/file/Path;

.field public final r:Ljava/lang/String;

.field public final s:Lcom/android/tools/r8/shaking/I3;

.field public t:Lcom/android/tools/r8/shaking/b3;

.field public final u:Lcom/android/tools/r8/shaking/b3;

.field public final v:Lcom/android/tools/r8/shaking/b3;

.field public final w:Lcom/android/tools/r8/internal/hC;

.field public final x:Z

.field public final y:Ljava/nio/file/Path;

.field public final z:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/nJ$m;Ljava/lang/String;ZZZZZZLjava/nio/file/Path;ZLjava/nio/file/Path;ZLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;Lcom/android/tools/r8/shaking/I3;Lcom/android/tools/r8/shaking/b3;Lcom/android/tools/r8/shaking/b3;Lcom/android/tools/r8/shaking/b3;Ljava/util/LinkedHashSet;ZLjava/nio/file/Path;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;ZLcom/android/tools/r8/shaking/b3;Lcom/android/tools/r8/shaking/c4;Lcom/android/tools/r8/shaking/c4;Lcom/android/tools/r8/shaking/c4;ZZZI)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    invoke-static {p4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->c:Lcom/android/tools/r8/internal/hC;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->d:Lcom/android/tools/r8/internal/nJ$m;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->e:Ljava/lang/String;

    move v1, p7

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->f:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->g:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->h:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->i:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->j:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->k:Z

    move-object v1, p13

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->l:Ljava/nio/file/Path;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->m:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->n:Ljava/nio/file/Path;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->o:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->p:Ljava/nio/file/Path;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->q:Ljava/nio/file/Path;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->r:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->s:Lcom/android/tools/r8/shaking/I3;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->t:Lcom/android/tools/r8/shaking/b3;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->u:Lcom/android/tools/r8/shaking/b3;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->v:Lcom/android/tools/r8/shaking/b3;

    invoke-static/range {p24 .. p24}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->w:Lcom/android/tools/r8/internal/hC;

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->x:Z

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->y:Ljava/nio/file/Path;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->z:Lcom/android/tools/r8/internal/hC;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->A:Lcom/android/tools/r8/internal/hC;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->B:Lcom/android/tools/r8/internal/hC;

    move/from16 v1, p30

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->C:Z

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->D:Lcom/android/tools/r8/shaking/b3;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->E:Lcom/android/tools/r8/shaking/c4;

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->F:Lcom/android/tools/r8/shaking/c4;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/android/tools/r8/shaking/o3;->G:Lcom/android/tools/r8/shaking/c4;

    move/from16 v1, p35

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->H:Z

    move/from16 v1, p36

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->I:Z

    move/from16 v1, p37

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o3;->J:Z

    move/from16 v1, p38

    iput v1, v0, Lcom/android/tools/r8/shaking/o3;->K:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/shaking/o3$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/o3$a;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/o3$a;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3;->j:Z

    return v0
.end method

.method public a()Lcom/android/tools/r8/shaking/b3;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->D:Lcom/android/tools/r8/shaking/b3;

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/shaking/c4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->F:Lcom/android/tools/r8/shaking/c4;

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/shaking/c4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->E:Lcom/android/tools/r8/shaking/c4;

    return-object v0
.end method

.method public d()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->q:Ljava/nio/file/Path;

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/shaking/b3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->v:Lcom/android/tools/r8/shaking/b3;

    return-object v0
.end method

.method public f()Lcom/android/tools/r8/shaking/I3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->s:Lcom/android/tools/r8/shaking/I3;

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/shaking/c4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->G:Lcom/android/tools/r8/shaking/c4;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/shaking/P0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->c:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/shaking/o3;->K:I

    return v0
.end method

.method public j()Lcom/android/tools/r8/internal/nJ$m;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->d:Lcom/android/tools/r8/internal/nJ$m;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->l:Ljava/nio/file/Path;

    return-object v0
.end method

.method public m()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->p:Ljava/nio/file/Path;

    return-object v0
.end method

.method public n()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->n:Ljava/nio/file/Path;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->r:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/shaking/v3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->w:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public q()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->y:Ljava/nio/file/Path;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->q:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->w:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/shaking/Rd;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Rd;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3;->H:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/o3;->s:Lcom/android/tools/r8/shaking/I3;

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->a:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->b:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->c:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->e:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->f:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->i:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->j:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->k:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->l:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->m:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->n:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->o:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->p:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->q:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->r:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->s:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/I3;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/o3;->w:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/v3;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/v3;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3;->C:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3;->i:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3;->h:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3;->k:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3;->x:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3;->m:Z

    return v0
.end method
