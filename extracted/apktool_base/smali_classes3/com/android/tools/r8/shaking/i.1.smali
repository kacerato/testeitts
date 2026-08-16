.class public Lcom/android/tools/r8/shaking/i;
.super Lcom/android/tools/r8/graph/j;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/f4;


# static fields
.field public static final synthetic J:Z = true


# instance fields
.field public final A:Lcom/android/tools/r8/internal/W60;

.field public final B:Ljava/util/Set;

.field public final C:Ljava/util/Map;

.field public final D:Ljava/util/Set;

.field public final E:Lcom/android/tools/r8/internal/Y10;

.field public final F:Ljava/util/Set;

.field public final G:Ljava/util/Map;

.field public final H:Lcom/android/tools/r8/shaking/N4;

.field public I:Lcom/android/tools/r8/internal/Ib;

.field public final j:Ljava/util/Set;

.field public final k:Ljava/util/Set;

.field public l:Ljava/util/Set;

.field public final m:Ljava/util/Set;

.field public final n:Ljava/util/Set;

.field public final o:Ljava/util/Set;

.field public final p:Ljava/util/Set;

.field public final q:Ljava/util/Set;

.field public r:Ljava/util/Set;

.field public final s:Lcom/android/tools/r8/graph/n3;

.field public final t:Lcom/android/tools/r8/graph/t5;

.field public final u:Ljava/util/Map;

.field public final v:Lcom/android/tools/r8/shaking/y1;

.field public final w:Ljava/util/Map;

.field public final x:Ljava/util/Set;

.field public final y:Ljava/util/Set;

.field public final z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/i;Ljava/util/IdentityHashMap;)V
    .locals 4

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object v0

    .line 30
    iget-object v1, p1, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v2

    .line 32
    iget-object v3, p1, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 33
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;)V

    .line 34
    new-instance v0, Lcom/android/tools/r8/shaking/N4;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/N4;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->I:Lcom/android/tools/r8/internal/Ib;

    .line 36
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->j:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->j:Ljava/util/Set;

    .line 37
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    .line 38
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    .line 39
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->m:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->m:Ljava/util/Set;

    .line 40
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    .line 41
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->o:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->o:Ljava/util/Set;

    .line 42
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->p:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->p:Ljava/util/Set;

    .line 43
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->q:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->q:Ljava/util/Set;

    .line 44
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    .line 45
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 46
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 47
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 48
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->w:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->w:Ljava/util/Map;

    .line 49
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->u:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->u:Ljava/util/Map;

    .line 50
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->x:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->x:Ljava/util/Set;

    .line 51
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    .line 52
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->z:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->z:Ljava/util/Set;

    .line 53
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->A:Lcom/android/tools/r8/internal/W60;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->A:Lcom/android/tools/r8/internal/W60;

    .line 54
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->E:Lcom/android/tools/r8/internal/Y10;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->E:Lcom/android/tools/r8/internal/Y10;

    .line 55
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    .line 56
    iput-object p2, p0, Lcom/android/tools/r8/shaking/i;->G:Ljava/util/Map;

    .line 57
    iget-object p2, p1, Lcom/android/tools/r8/shaking/i;->B:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/i;->B:Ljava/util/Set;

    .line 58
    iget-object p2, p1, Lcom/android/tools/r8/shaking/i;->C:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/i;->C:Ljava/util/Map;

    .line 59
    iget-object p2, p1, Lcom/android/tools/r8/shaking/i;->D:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/i;->D:Ljava/util/Set;

    .line 60
    iget-object p1, p1, Lcom/android/tools/r8/graph/h;->f:Lcom/android/tools/r8/internal/U6;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/U6;->e()V

    .line 61
    sget-boolean p1, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/i;->q()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/n3;Lcom/android/tools/r8/graph/t5;Ljava/util/Map;Lcom/android/tools/r8/shaking/y1;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Lcom/android/tools/r8/internal/Y10;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/shaking/N4;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/N4;-><init>()V

    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->I:Lcom/android/tools/r8/internal/Ib;

    move-object v1, p5

    .line 4
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->j:Ljava/util/Set;

    move-object v1, p6

    .line 5
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    move-object v1, p7

    .line 6
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    move-object v1, p8

    .line 7
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->m:Ljava/util/Set;

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->o:Ljava/util/Set;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->p:Ljava/util/Set;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->q:Ljava/util/Set;

    move-object v1, p13

    .line 12
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->w:Ljava/util/Map;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->u:Ljava/util/Map;

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->x:Ljava/util/Set;

    move-object/from16 v1, p20

    .line 19
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    move-object/from16 v1, p21

    .line 20
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->z:Ljava/util/Set;

    move-object/from16 v1, p22

    .line 21
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->A:Lcom/android/tools/r8/internal/W60;

    move-object/from16 v1, p23

    .line 22
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->E:Lcom/android/tools/r8/internal/Y10;

    move-object/from16 v1, p24

    .line 23
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    move-object/from16 v1, p25

    .line 24
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->G:Ljava/util/Map;

    move-object/from16 v1, p26

    .line 25
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->B:Ljava/util/Set;

    move-object/from16 v1, p27

    .line 26
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->C:Ljava/util/Map;

    move-object/from16 v1, p28

    .line 27
    iput-object v1, v0, Lcom/android/tools/r8/shaking/i;->D:Ljava/util/Set;

    .line 28
    sget-boolean v1, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/i;->q()V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Y10;Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/xr0;)Lcom/android/tools/r8/internal/Y10;
    .locals 1

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 10
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/shaking/Kc;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/shaking/Kc;-><init>(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/Y10;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/zx0;Lcom/android/tools/r8/internal/zx0;)Lcom/android/tools/r8/internal/zx0;
    .locals 2

    .line 212
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    sget-object v1, Lcom/android/tools/r8/internal/zx0;->d:Lcom/android/tools/r8/internal/zx0;

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    sget-object v0, Lcom/android/tools/r8/internal/zx0;->d:Lcom/android/tools/r8/internal/zx0;

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 217
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 218
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    sget-object v0, Lcom/android/tools/r8/internal/zx0;->b:Lcom/android/tools/r8/internal/zx0;

    if-ne p0, v0, :cond_4

    return-object v0

    .line 220
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    return-object v0

    .line 221
    :cond_5
    sget-object v0, Lcom/android/tools/r8/internal/zx0;->c:Lcom/android/tools/r8/internal/zx0;

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    if-ne p1, v0, :cond_7

    return-object v0

    .line 222
    :cond_7
    sget-object p0, Lcom/android/tools/r8/internal/zx0;->e:Lcom/android/tools/r8/internal/zx0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/J2;Ljava/util/List;)Lcom/android/tools/r8/shaking/R3;
    .locals 0

    .line 210
    invoke-static {p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/R3;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/shaking/i;Ljava/util/Collection;)Lcom/android/tools/r8/shaking/y1;
    .locals 2

    if-eqz p1, :cond_1

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    new-instance v1, Lcom/android/tools/r8/shaking/Oc;

    invoke-direct {v1, p1, p0}, Lcom/android/tools/r8/shaking/Oc;-><init>(Ljava/util/Collection;Lcom/android/tools/r8/shaking/i;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    move-result-object p0

    return-object p0

    .line 31
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    return-object p0
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/O5;)Ljava/util/Map;
    .locals 2

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/Ic;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/Ic;-><init>(Lcom/android/tools/r8/graph/O5;)V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Map;
    .locals 1

    .line 24
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/android/tools/r8/shaking/Jc;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/Jc;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/ds0;->b:Lcom/android/tools/r8/internal/ds0;

    if-ne p0, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/android/tools/r8/shaking/Gc;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/Gc;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    :cond_1
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/graph/s5;)V
    .locals 0

    .line 146
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/O5;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/Y10;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/shaking/Mc;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/Mc;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 14
    new-instance v0, Lcom/android/tools/r8/shaking/Nc;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/Nc;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/shaking/x1;)V
    .locals 0

    .line 147
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/x1;->b(Lcom/android/tools/r8/graph/O5;)V

    return-void
.end method

.method public static a(Ljava/util/Collection;Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/shaking/x1;)V
    .locals 2

    .line 32
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/J2;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    instance-of v1, v0, Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Lcom/android/tools/r8/shaking/Ec;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Ec;-><init>()V

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 39
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lcom/android/tools/r8/shaking/Pc;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Pc;-><init>()V

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/android/tools/r8/shaking/Tc;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Tc;-><init>()V

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/util/Set;)V
    .locals 2

    .line 26
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 27
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void

    .line 28
    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/Lc;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Lc;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 22
    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/Vc;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Vc;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/m80;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/m80;->a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/m80;

    move-result-object p0

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 20
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/shaking/x1;)V
    .locals 0

    .line 27
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/x1;->b(Lcom/android/tools/r8/graph/O5;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/shaking/i2;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/graph/H0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/shaking/i;",
            ">;",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/H5;",
            "Z",
            "Lcom/android/tools/r8/shaking/i2;",
            "Lcom/android/tools/r8/internal/xt;",
            ")",
            "Lcom/android/tools/r8/graph/H0;"
        }
    .end annotation

    .line 223
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p2, p4}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 225
    invoke-virtual/range {v1 .. v8}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/shaking/i2;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/shaking/i2;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/graph/H0;
    .locals 5

    .line 226
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez v0, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 228
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return-object v1

    .line 229
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 230
    iget-object v2, p1, Lcom/android/tools/r8/graph/y;->J:Lcom/android/tools/r8/internal/i40;

    .line 231
    new-instance v3, Lcom/android/tools/r8/shaking/Fc;

    invoke-direct {v3, p7}, Lcom/android/tools/r8/shaking/Fc;-><init>(Lcom/android/tools/r8/internal/xt;)V

    .line 232
    invoke-virtual {v2, p1, v3, v0}, Lcom/android/tools/r8/internal/i40;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/pu0;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    .line 233
    :cond_4
    iget-object v0, p3, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 234
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eq v0, p5, :cond_5

    return-object v1

    .line 235
    :cond_5
    invoke-static {p7, p2, p1}, Lcom/android/tools/r8/internal/lu0;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 236
    invoke-virtual {p0, p5}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v1

    .line 237
    :cond_6
    iget-object v2, p0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    invoke-virtual {v2, p5, p2}, Lcom/android/tools/r8/shaking/N4;->d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    iget-object p1, p0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    invoke-virtual {p1, p5, p2}, Lcom/android/tools/r8/shaking/N4;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    .line 239
    :cond_7
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xt;->e()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    .line 240
    invoke-virtual {v2, p5, p2}, Lcom/android/tools/r8/shaking/N4;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    .line 241
    :cond_8
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {p3, v2, p1}, Lcom/android/tools/r8/graph/Z4$c;->b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v1

    .line 243
    :cond_9
    iget-object v2, p3, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v3, p3, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v2, v3}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 245
    :cond_a
    instance-of v3, v2, Lcom/android/tools/r8/graph/A4;

    if-eqz v3, :cond_1e

    .line 246
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {p6, v3}, Lcom/android/tools/r8/shaking/i2;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result p6

    if-eqz p6, :cond_b

    goto/16 :goto_6

    .line 247
    :cond_b
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p6

    if-eqz p6, :cond_11

    .line 248
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p6

    if-ne p6, p5, :cond_11

    .line 249
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p6

    if-eqz p6, :cond_e

    .line 250
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p6

    invoke-virtual {p3, p6, p0}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/D4;

    move-result-object p6

    if-eqz p6, :cond_d

    .line 251
    invoke-interface {p6}, Lcom/android/tools/r8/graph/D4;->l()Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    instance-of v2, v2, Lcom/android/tools/r8/graph/H5;

    if-eqz v2, :cond_c

    .line 253
    iget-object v2, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 254
    invoke-interface {p6}, Lcom/android/tools/r8/graph/D4;->l()Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v2

    .line 256
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    .line 257
    :cond_c
    new-instance v2, Lcom/android/tools/r8/graph/T5;

    invoke-interface {p6}, Lcom/android/tools/r8/graph/D4;->l()Lcom/android/tools/r8/graph/H0;

    move-result-object p6

    invoke-direct {v2, p6, p3}, Lcom/android/tools/r8/graph/T5;-><init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;)V

    goto :goto_3

    .line 258
    :cond_d
    :goto_1
    new-instance v2, Lcom/android/tools/r8/graph/e6;

    invoke-direct {v2, p3}, Lcom/android/tools/r8/graph/e6;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    goto :goto_3

    .line 259
    :cond_e
    iget-object p6, p3, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 260
    iget-object v2, p3, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p6, v2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p6

    .line 261
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 262
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 263
    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    goto :goto_2

    :cond_f
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_10

    .line 264
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-static {p6, v3}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)Z

    move-result p6

    if-eqz p6, :cond_10

    .line 265
    new-instance p6, Lcom/android/tools/r8/graph/T5;

    invoke-direct {p6, v2, p3}, Lcom/android/tools/r8/graph/T5;-><init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;)V

    move-object v2, p6

    goto :goto_3

    .line 266
    :cond_10
    new-instance v2, Lcom/android/tools/r8/graph/e6;

    invoke-direct {v2, p3}, Lcom/android/tools/r8/graph/e6;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    goto :goto_3

    :cond_11
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_13

    .line 267
    instance-of p1, v2, Lcom/android/tools/r8/graph/T5;

    if-eqz p1, :cond_12

    .line 268
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h3;->a()Lcom/android/tools/r8/graph/T5;

    move-result-object p1

    .line 269
    iget-object p1, p1, Lcom/android/tools/r8/graph/T5;->b:Lcom/android/tools/r8/graph/H0;

    return-object p1

    :cond_12
    return-object v1

    .line 270
    :cond_13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p6

    if-eqz p6, :cond_14

    .line 271
    iget-object p1, p0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    invoke-virtual {p1, p5, p2}, Lcom/android/tools/r8/shaking/N4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)V

    return-object v1

    .line 272
    :cond_14
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p6

    .line 273
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 274
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 275
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 276
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/t5;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 277
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p6

    .line 278
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 280
    iget-object v3, p6, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 281
    iget-object v2, v2, Lcom/android/tools/r8/graph/t5;->c:Ljava/util/Set;

    .line 282
    invoke-interface {v2, p6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_16

    .line 283
    :cond_15
    iget-object p1, p0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    invoke-virtual {p1, p5, p2}, Lcom/android/tools/r8/shaking/N4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)V

    return-object v1

    .line 284
    :cond_16
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xt;->e()Z

    move-result p6

    if-eqz p6, :cond_17

    .line 285
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p6

    invoke-virtual {p0, p6}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p6

    if-eqz p6, :cond_17

    .line 286
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p6

    if-eqz p6, :cond_18

    .line 287
    iget-object v2, p6, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v2, p5}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    move-object p6, v1

    .line 288
    :cond_18
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p4

    .line 289
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 290
    invoke-virtual {p3, p4, p1, v0, p6}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H4;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H4;->a()Lcom/android/tools/r8/graph/H4$a;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 292
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H4$a;->g()Z

    move-result p3

    if-nez p3, :cond_1c

    .line 293
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H4$a;->g()Z

    move-result p3

    if-nez p3, :cond_1b

    iget-object p3, p1, Lcom/android/tools/r8/graph/H4$a;->a:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    iget-object p4, p1, Lcom/android/tools/r8/graph/H4$a;->b:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/2addr p4, p3

    const/4 p3, 0x1

    if-le p4, p3, :cond_19

    goto :goto_4

    .line 294
    :cond_19
    iget-object p4, p1, Lcom/android/tools/r8/graph/H4$a;->a:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p4

    if-ne p4, p3, :cond_1a

    .line 295
    iget-object p1, p1, Lcom/android/tools/r8/graph/H4$a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/I4;

    goto :goto_5

    .line 296
    :cond_1a
    iget-object p4, p1, Lcom/android/tools/r8/graph/H4$a;->b:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ne p4, p3, :cond_1b

    .line 297
    iget-object p1, p1, Lcom/android/tools/r8/graph/H4$a;->b:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/I4;

    goto :goto_5

    :cond_1b
    :goto_4
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_1c

    .line 298
    invoke-interface {p1}, Lcom/android/tools/r8/graph/I4;->f()Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 299
    invoke-interface {p1}, Lcom/android/tools/r8/graph/I4;->e()Lcom/android/tools/r8/graph/D4;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/D4;->l()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    .line 300
    :cond_1c
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xt;->e()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 301
    iget-object p1, p0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    invoke-virtual {p1, p5, p2, v1}, Lcom/android/tools/r8/shaking/N4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/H0;

    :cond_1d
    return-object v1

    .line 302
    :cond_1e
    :goto_6
    iget-object p1, p0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    invoke-virtual {p1, p5, p2, v2}, Lcom/android/tools/r8/shaking/N4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/h;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/h;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/h;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/h;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Un;
    .locals 7

    .line 71
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 72
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object p2

    .line 73
    sget-object v0, Lcom/android/tools/r8/internal/kR;->j:Lcom/android/tools/r8/internal/kR;

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p2, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    :goto_0
    if-eqz v1, :cond_a

    .line 75
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_4

    .line 76
    :cond_2
    sget-object p2, Lcom/android/tools/r8/internal/Un;->d:Lcom/android/tools/r8/internal/Sn;

    .line 77
    new-instance p2, Lcom/android/tools/r8/internal/Tn;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Tn;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 79
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 80
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 82
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 84
    :cond_4
    sget-boolean v3, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 85
    :cond_6
    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->C1()Lcom/android/tools/r8/internal/sK;

    move-result-object v3

    .line 86
    iget-object v4, v3, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v3, v3, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v3

    .line 87
    :cond_7
    :goto_3
    iget-object v4, v3, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 88
    iget-object v4, v3, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 89
    check-cast v4, Lcom/android/tools/r8/graph/H0;

    .line 90
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 92
    iget-object v6, p1, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 93
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 94
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_3

    .line 95
    :cond_8
    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-object p2

    .line 96
    :cond_a
    :goto_4
    sget-object p1, Lcom/android/tools/r8/internal/Un;->d:Lcom/android/tools/r8/internal/Sn;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/i;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 149
    sget-boolean v4, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez v4, :cond_3

    .line 150
    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->G:Ljava/util/Map;

    .line 151
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lv/K1;

    invoke-direct {v5, v0}, Lv/K1;-><init>(Lcom/android/tools/r8/shaking/i;)V

    .line 152
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/shaking/Xc;

    invoke-direct {v5}, Lcom/android/tools/r8/shaking/Xc;-><init>()V

    .line 153
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/shaking/Yc;

    invoke-direct {v5}, Lcom/android/tools/r8/shaking/Yc;-><init>()V

    .line 154
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 155
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 156
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/g1;

    .line 158
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    .line 159
    sget-boolean v6, Lcom/android/tools/r8/internal/Hz;->a:Z

    if-nez v6, :cond_1

    .line 160
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v6

    .line 161
    invoke-virtual {v2, v6, v5}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    if-ne v6, v5, :cond_2

    goto :goto_0

    .line 162
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 163
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object v6

    .line 164
    iget-object v4, v6, Lcom/android/tools/r8/synthesis/b;->a:Lcom/android/tools/r8/graph/x0;

    .line 165
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    new-instance v5, Lcom/android/tools/r8/graph/v0;

    invoke-direct {v5, v6, v4}, Lcom/android/tools/r8/graph/v0;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/graph/x0;)V

    .line 167
    new-instance v4, Lcom/android/tools/r8/shaking/i;

    .line 168
    iget-object v7, v0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 169
    invoke-virtual {v7, v2, v3}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Zd;

    move-result-object v7

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v9

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/o2;

    move-result-object v8

    .line 171
    iget-object v9, v0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 172
    iget-object v10, v0, Lcom/android/tools/r8/shaking/i;->j:Ljava/util/Set;

    iget-object v11, v0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    .line 173
    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    iget-object v12, v0, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    .line 174
    invoke-virtual {v2, v12}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v12

    iget-object v13, v0, Lcom/android/tools/r8/shaking/i;->m:Ljava/util/Set;

    .line 175
    invoke-virtual {v2, v13}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v13

    iget-object v14, v0, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    .line 176
    invoke-virtual {v2, v14}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    iget-object v15, v0, Lcom/android/tools/r8/shaking/i;->o:Ljava/util/Set;

    .line 177
    invoke-virtual {v2, v15, v3}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/ns0;)Ljava/util/Set;

    move-result-object v15

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/tools/r8/shaking/i;->p:Ljava/util/Set;

    .line 178
    invoke-virtual {v2, v15}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v17

    iget-object v15, v0, Lcom/android/tools/r8/shaking/i;->q:Ljava/util/Set;

    .line 179
    invoke-virtual {v2, v15}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v18

    iget-object v15, v0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    .line 180
    invoke-virtual {v2, v15}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v19

    iget-object v15, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 181
    invoke-virtual {v15, v5, v2, v3}, Lcom/android/tools/r8/graph/n3;->a(Lcom/android/tools/r8/graph/v0;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/n3;

    move-result-object v20

    iget-object v15, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    move-object/from16 v21, v14

    move-object/from16 v14, p3

    .line 182
    invoke-virtual {v15, v5, v2, v14, v3}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/v0;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/t5;

    move-result-object v22

    iget-object v14, v0, Lcom/android/tools/r8/shaking/i;->u:Ljava/util/Map;

    .line 183
    invoke-virtual {v2, v14, v5, v3}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/v0;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;

    move-result-object v23

    iget-object v5, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    .line 184
    invoke-virtual {v5, v2, v1, v3}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/x1;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/shaking/i;->w:Ljava/util/Map;

    new-instance v5, Lcom/android/tools/r8/shaking/Zc;

    invoke-direct {v5}, Lcom/android/tools/r8/shaking/Zc;-><init>()V

    .line 185
    invoke-virtual {v2, v3, v5}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Map;Ljava/util/function/BiFunction;)Ljava/util/IdentityHashMap;

    move-result-object v3

    iget-object v5, v0, Lcom/android/tools/r8/shaking/i;->x:Ljava/util/Set;

    .line 186
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v24

    iget-object v5, v0, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    .line 187
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v25

    iget-object v5, v0, Lcom/android/tools/r8/shaking/i;->z:Ljava/util/Set;

    .line 188
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v26

    iget-object v5, v0, Lcom/android/tools/r8/shaking/i;->A:Lcom/android/tools/r8/internal/W60;

    .line 189
    new-instance v14, Lcom/android/tools/r8/shaking/ad;

    invoke-direct {v14, v2}, Lcom/android/tools/r8/shaking/ad;-><init>(Lcom/android/tools/r8/internal/R00;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    new-instance v15, Lcom/android/tools/r8/internal/W60;

    invoke-direct {v15}, Lcom/android/tools/r8/internal/W60;-><init>()V

    move-object/from16 p1, v3

    .line 191
    iget-object v3, v5, Lcom/android/tools/r8/internal/W60;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    move-object/from16 p3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 p4, v3

    .line 192
    iget-object v3, v15, Lcom/android/tools/r8/internal/W60;->a:Ljava/util/Set;

    invoke-interface {v14, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    goto :goto_1

    :cond_4
    move-object/from16 p3, v1

    .line 193
    iget-object v1, v15, Lcom/android/tools/r8/internal/W60;->b:Ljava/util/ArrayList;

    iget-object v3, v5, Lcom/android/tools/r8/internal/W60;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->E:Lcom/android/tools/r8/internal/Y10;

    .line 195
    new-instance v3, Lcom/android/tools/r8/internal/Y10;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Y10;-><init>()V

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    new-instance v5, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    .line 198
    new-instance v1, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v1, v5}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    .line 199
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W10;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W10;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W0;

    .line 200
    iget-object v14, v5, Lcom/android/tools/r8/internal/W0;->b:Ljava/lang/Object;

    .line 201
    check-cast v14, Lcom/android/tools/r8/graph/J2;

    move-object/from16 p4, v1

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v2, v14, v1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    .line 203
    iget-boolean v5, v5, Lcom/android/tools/r8/internal/W0;->c:Z

    .line 204
    invoke-virtual {v3, v1, v5}, Lcom/android/tools/r8/internal/Y10;->a(Ljava/lang/Object;Z)Z

    move-object/from16 v1, p4

    goto :goto_2

    .line 205
    :cond_5
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->G:Ljava/util/Map;

    .line 206
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v30

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->B:Ljava/util/Set;

    .line 207
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v31

    .line 208
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/internal/R00;)Ljava/util/IdentityHashMap;

    move-result-object v32

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->D:Ljava/util/Set;

    .line 209
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v33

    move-object v5, v4

    move-object/from16 v14, v21

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, p3

    move-object/from16 v23, p1

    move-object/from16 v27, v1

    move-object/from16 v28, v3

    invoke-direct/range {v5 .. v33}, Lcom/android/tools/r8/shaking/i;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/n3;Lcom/android/tools/r8/graph/t5;Ljava/util/Map;Lcom/android/tools/r8/shaking/y1;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Lcom/android/tools/r8/internal/Y10;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    return-object v4
.end method

.method public final a(Lcom/android/tools/r8/internal/R00;)Ljava/util/IdentityHashMap;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->C:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/Hc;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Hc;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Hz;->b(Ljava/util/Map;Ljava/util/function/BiFunction;)Ljava/util/IdentityHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->H:Lcom/android/tools/r8/shaking/N4;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1, p0}, Lcom/android/tools/r8/shaking/N4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/i;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V
    .locals 4

    .line 46
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_1

    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

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

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_4

    .line 49
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_4

    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Ljava/util/ArrayList;

    move-result-object p2

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 52
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_8

    .line 53
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 54
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 55
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 56
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 57
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p2, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 59
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 60
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 61
    :cond_8
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 62
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 63
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 65
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 67
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 68
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    :cond_b
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/h;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 98
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/n3;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    .line 304
    iget-object v0, v0, Lcom/android/tools/r8/graph/g3;->l:Lcom/android/tools/r8/internal/XB;

    .line 305
    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;)Z
    .locals 3

    .line 105
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 107
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 108
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 109
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 110
    iget-object v2, v0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/d;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    iget v0, v0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    :cond_4
    :goto_0
    return v1

    .line 112
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/G0;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 113
    :cond_6
    instance-of p1, p1, Lcom/android/tools/r8/graph/F5;

    xor-int/2addr p1, v1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/j1;)Z
    .locals 2

    .line 114
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez v0, :cond_2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected field `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "` to be written"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 116
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/G0;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/G0;)Z
    .locals 2

    .line 141
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 142
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 143
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 144
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object p1

    .line 145
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 100
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 101
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 102
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/t5;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 119
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->V()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 122
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/l1;->n:Z

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/wf0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 124
    :cond_0
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->N:Lcom/android/tools/r8/naming/S0;

    if-eqz p2, :cond_2

    .line 125
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 126
    iget-object p2, p2, Lcom/android/tools/r8/naming/S0;->a:Lcom/android/tools/r8/internal/nC;

    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method public final a(Lcom/android/tools/r8/graph/b1;)Z
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->v0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->o0()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 131
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    .line 135
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->s0()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 136
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->l0()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez v0, :cond_6

    .line 138
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, v0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/j;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/j;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/j;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/F0;)Z
    .locals 2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 15
    :cond_2
    instance-of v0, p1, Lcom/android/tools/r8/graph/F5;

    xor-int/2addr v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/G0;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/j1;)Z
    .locals 2

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez v0, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected field `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "` to be written"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 19
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o3;

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/o3;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/i;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 18
    sget-boolean v1, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/shaking/i;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 20
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/O5;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_4

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 22
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->a:Lcom/android/tools/r8/graph/x0;

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    :goto_1
    return-object v0

    .line 24
    :cond_5
    const-string v1, "Pruning AppInfoWithLiveness"

    move-object/from16 v8, p3

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/O5;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    new-instance v2, Lcom/android/tools/r8/shaking/Qc;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/shaking/Qc;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/graph/t5;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/i;)V

    .line 27
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    new-instance v2, Lcom/android/tools/r8/shaking/Rc;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/shaking/Rc;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    goto :goto_2

    .line 28
    :cond_6
    iget-object v1, v7, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    iget-object v1, v7, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 30
    :cond_7
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    new-instance v2, Lcom/android/tools/r8/shaking/Sc;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/shaking/Sc;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    .line 31
    :cond_8
    :goto_2
    new-instance v9, Lcom/android/tools/r8/internal/xr0;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    const/4 v2, -0x1

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-direct {v9, v1, v3, v2}, Lcom/android/tools/r8/internal/xr0;-><init>(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;I)V

    .line 33
    new-instance v39, Lcom/android/tools/r8/shaking/i;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 35
    iget-object v2, v1, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    .line 36
    iget-object v3, v1, Lcom/android/tools/r8/synthesis/J;->e:Lcom/android/tools/r8/synthesis/A;

    iget-object v4, v1, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    iget v5, v1, Lcom/android/tools/r8/synthesis/J;->a:I

    iget-object v6, v1, Lcom/android/tools/r8/synthesis/J;->f:Lcom/android/tools/r8/synthesis/E;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/synthesis/F;Lcom/android/tools/r8/synthesis/A;Lcom/android/tools/r8/synthesis/d;ILcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;

    move-result-object v11

    .line 37
    iget-object v1, v0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 38
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/Zd;

    move-result-object v12

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/shaking/o2;

    move-result-object v13

    .line 40
    iget-object v14, v0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 41
    iget-object v15, v0, Lcom/android/tools/r8/shaking/i;->j:Ljava/util/Set;

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    .line 42
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 43
    invoke-static {v1, v2, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v16

    .line 44
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    .line 45
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 46
    invoke-static {v1, v2, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v17

    .line 47
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->m:Ljava/util/Set;

    .line 48
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 49
    invoke-static {v1, v2, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v18

    .line 50
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    .line 51
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 52
    invoke-static {v1, v2, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v19

    .line 53
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->o:Ljava/util/Set;

    .line 54
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    .line 55
    invoke-static {v1, v2, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v20

    .line 56
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->p:Ljava/util/Set;

    .line 57
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 58
    invoke-static {v1, v2, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v21

    .line 59
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->q:Ljava/util/Set;

    .line 60
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 61
    invoke-static {v1, v2, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v22

    .line 62
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    .line 63
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 64
    invoke-static {v1, v2, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v23

    .line 65
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 66
    iget-object v2, v1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 67
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 68
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v7, v4}, Lcom/android/tools/r8/graph/O5;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 72
    :cond_9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/o3;

    .line 73
    iget-object v5, v4, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    .line 74
    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/graph/d;

    move-result-object v5

    iput-object v5, v4, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    .line 75
    iget-object v5, v4, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/graph/d;

    move-result-object v5

    iput-object v5, v4, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    .line 76
    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 77
    :cond_a
    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 78
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/graph/t5;->b(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/graph/t5;

    move-result-object v25

    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->u:Ljava/util/Map;

    .line 79
    invoke-static {v2, v7}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/O5;)Ljava/util/Map;

    move-result-object v26

    .line 80
    iget-object v2, v7, Lcom/android/tools/r8/graph/O5;->b:Ljava/util/Set;

    .line 81
    invoke-static {v0, v2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/shaking/i;Ljava/util/Collection;)Lcom/android/tools/r8/shaking/y1;

    move-result-object v27

    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->w:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/i;->x:Ljava/util/Set;

    .line 82
    iget-object v4, v7, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 83
    invoke-static {v3, v4, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v29

    .line 84
    iget-object v3, v0, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    .line 85
    iget-object v4, v7, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 86
    invoke-static {v3, v4, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v30

    .line 87
    iget-object v3, v0, Lcom/android/tools/r8/shaking/i;->z:Ljava/util/Set;

    .line 88
    iget-object v4, v7, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 89
    invoke-static {v3, v4, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v31

    .line 90
    iget-object v3, v0, Lcom/android/tools/r8/shaking/i;->A:Lcom/android/tools/r8/internal/W60;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->E:Lcom/android/tools/r8/internal/Y10;

    .line 91
    invoke-static {v4, v7, v9}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/internal/Y10;Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/xr0;)Lcom/android/tools/r8/internal/Y10;

    move-result-object v33

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/O5;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 93
    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    .line 94
    iget-object v5, v7, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 95
    sget v6, Lcom/android/tools/r8/internal/QC;->c:I

    .line 96
    new-instance v6, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 97
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 98
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 99
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    :goto_4
    move-object/from16 v34, v4

    goto :goto_5

    .line 100
    :cond_b
    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    goto :goto_4

    :goto_5
    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->G:Ljava/util/Map;

    move-object/from16 v35, v4

    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->B:Ljava/util/Set;

    .line 101
    iget-object v5, v7, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 102
    invoke-static {v4, v5, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Set;

    move-result-object v36

    .line 103
    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->C:Ljava/util/Map;

    .line 104
    iget-object v5, v7, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 105
    invoke-static {v4, v5, v9}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/Map;Ljava/util/Set;Lcom/android/tools/r8/internal/xr0;)Ljava/util/Map;

    move-result-object v37

    .line 106
    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->D:Ljava/util/Set;

    move-object/from16 v38, v4

    move-object/from16 v10, v39

    move-object/from16 v24, v1

    move-object/from16 v28, v2

    move-object/from16 v32, v3

    .line 107
    invoke-direct/range {v10 .. v38}, Lcom/android/tools/r8/shaking/i;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/n3;Lcom/android/tools/r8/graph/t5;Ljava/util/Map;Lcom/android/tools/r8/shaking/y1;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Lcom/android/tools/r8/internal/Y10;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v39
.end method

.method public final c(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/shaking/i;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    .line 1
    new-instance v30, Lcom/android/tools/r8/shaking/i;

    move-object/from16 v1, v30

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 4
    iget-object v5, v0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 5
    iget-object v6, v0, Lcom/android/tools/r8/shaking/i;->j:Ljava/util/Set;

    iget-object v7, v0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    iget-object v8, v0, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    iget-object v9, v0, Lcom/android/tools/r8/shaking/i;->m:Ljava/util/Set;

    iget-object v10, v0, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    iget-object v11, v0, Lcom/android/tools/r8/shaking/i;->o:Ljava/util/Set;

    iget-object v12, v0, Lcom/android/tools/r8/shaking/i;->p:Ljava/util/Set;

    iget-object v13, v0, Lcom/android/tools/r8/shaking/i;->q:Ljava/util/Set;

    iget-object v14, v0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    iget-object v15, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->u:Ljava/util/Map;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->w:Ljava/util/Map;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->x:Ljava/util/Set;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->z:Ljava/util/Set;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->A:Lcom/android/tools/r8/internal/W60;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->E:Lcom/android/tools/r8/internal/Y10;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->G:Ljava/util/Map;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->B:Ljava/util/Set;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->C:Ljava/util/Map;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->D:Ljava/util/Set;

    move-object/from16 v29, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v29}, Lcom/android/tools/r8/shaking/i;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/n3;Lcom/android/tools/r8/graph/t5;Ljava/util/Map;Lcom/android/tools/r8/shaking/y1;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Lcom/android/tools/r8/internal/Y10;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    return-object v30
.end method

.method public final c(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/shaking/i;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 110
    new-instance v30, Lcom/android/tools/r8/shaking/i;

    move-object/from16 v1, v30

    .line 111
    iget-object v3, v0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v4

    .line 113
    iget-object v5, v0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 114
    iget-object v6, v0, Lcom/android/tools/r8/shaking/i;->j:Ljava/util/Set;

    iget-object v8, v0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    move-object v7, v8

    move-object/from16 v9, p1

    .line 115
    iget-object v9, v9, Lcom/android/tools/r8/synthesis/b;->d:Lcom/android/tools/r8/internal/hC;

    .line 116
    invoke-interface {v8, v9}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v8, v0, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    iget-object v9, v0, Lcom/android/tools/r8/shaking/i;->m:Ljava/util/Set;

    iget-object v10, v0, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    iget-object v11, v0, Lcom/android/tools/r8/shaking/i;->o:Ljava/util/Set;

    iget-object v12, v0, Lcom/android/tools/r8/shaking/i;->p:Ljava/util/Set;

    iget-object v13, v0, Lcom/android/tools/r8/shaking/i;->q:Ljava/util/Set;

    iget-object v14, v0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    iget-object v15, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->u:Ljava/util/Map;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->w:Ljava/util/Map;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->x:Ljava/util/Set;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->z:Ljava/util/Set;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->A:Lcom/android/tools/r8/internal/W60;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->E:Lcom/android/tools/r8/internal/Y10;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->G:Ljava/util/Map;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->B:Ljava/util/Set;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->C:Ljava/util/Map;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->D:Ljava/util/Set;

    move-object/from16 v29, v1

    move-object/from16 v1, v31

    .line 118
    invoke-direct/range {v1 .. v29}, Lcom/android/tools/r8/shaking/i;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/n3;Lcom/android/tools/r8/graph/t5;Ljava/util/Map;Lcom/android/tools/r8/shaking/y1;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Lcom/android/tools/r8/internal/Y10;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    return-object v30
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 119
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/i;->j(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not pruned"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/F0;)Z
    .locals 3

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected field `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "` to be written"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/G0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 12
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->f()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 15
    new-instance v2, Lcom/android/tools/r8/shaking/Wc;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/shaking/Wc;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 16
    iget-object p1, v0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/d;->b(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method public final d(Lcom/android/tools/r8/graph/F0;)Z
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected field `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "` to be written"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 3

    invoke-super {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/i;->j:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/u2;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "L$-vivified-$/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed lookup of non-missing type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final i(Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public final j(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final m()Lcom/android/tools/r8/shaking/i;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    return-object p0
.end method

.method public final n()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/ds0;->b:Lcom/android/tools/r8/internal/ds0;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    return-void
.end method

.method public final o()Lcom/android/tools/r8/graph/n3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    return-object v0
.end method

.method public final p()Ljava/util/Set;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->F:Ljava/util/Set;

    return-object v0
.end method

.method public final q()V
    .locals 6

    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/internal/nJ;Ljava/util/Set;)V

    :cond_0
    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    sget-boolean v5, Lcom/android/tools/r8/graph/t5;->g:Z

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v3, v0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    sget-boolean v5, Lcom/android/tools/r8/graph/t5;->g:Z

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    iget-object v3, v0, Lcom/android/tools/r8/graph/t5;->c:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    sget-boolean v5, Lcom/android/tools/r8/graph/t5;->g:Z

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    iget-object v3, v0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    sget-boolean v5, Lcom/android/tools/r8/graph/t5;->g:Z

    if-nez v5, :cond_a

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    iget-object v0, v0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    sget-boolean v4, Lcom/android/tools/r8/graph/t5;->g:Z

    if-nez v4, :cond_d

    iget-object v4, v2, Lcom/android/tools/r8/shaking/u2;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface {p0, v3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    return-void
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/Uc;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Uc;-><init>(Lcom/android/tools/r8/shaking/i;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
