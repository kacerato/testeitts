.class public Lcom/android/tools/r8/shaking/G3;
.super Lcom/android/tools/r8/shaking/L3;
.source "SourceFile"


# static fields
.field public static final synthetic w:Z = true


# instance fields
.field public final t:Lcom/android/tools/r8/graph/E0;

.field final u:Lcom/android/tools/r8/shaking/K3;

.field public v:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/shaking/E3;

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->root()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/E3;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/K3;Lcom/android/tools/r8/graph/E0;)V
    .locals 17

    move-object/from16 v15, p0

    sget-object v14, Lcom/android/tools/r8/shaking/O3;->e:Lcom/android/tools/r8/shaking/O3;

    invoke-static {}, Lcom/android/tools/r8/shaking/M3;->a()Lcom/android/tools/r8/shaking/M3$a;

    move-result-object v0

    new-instance v16, Lcom/android/tools/r8/shaking/M3;

    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/M3$a;->a:Z

    iget-boolean v3, v0, Lcom/android/tools/r8/shaking/M3$a;->b:Z

    iget-boolean v4, v0, Lcom/android/tools/r8/shaking/M3$a;->c:Z

    iget-boolean v5, v0, Lcom/android/tools/r8/shaking/M3$a;->d:Z

    iget-boolean v6, v0, Lcom/android/tools/r8/shaking/M3$a;->e:Z

    iget-boolean v7, v0, Lcom/android/tools/r8/shaking/M3$a;->f:Z

    iget-boolean v8, v0, Lcom/android/tools/r8/shaking/M3$a;->g:Z

    iget-boolean v9, v0, Lcom/android/tools/r8/shaking/M3$a;->h:Z

    iget-boolean v10, v0, Lcom/android/tools/r8/shaking/M3$a;->i:Z

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v10}, Lcom/android/tools/r8/shaking/M3;-><init>(ZZZZZZZZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/android/tools/r8/shaking/L3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/O3;Lcom/android/tools/r8/shaking/M3;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/tools/r8/shaking/G3;->v:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/android/tools/r8/shaking/G3;->t:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    const-string v0, "if"

    return-object v0
.end method

.method public final E()Lcom/android/tools/r8/shaking/K3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    return-object v0
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Ux;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/v3;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    .line 2
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/v3;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    const/4 v1, 0x2

    .line 3
    new-array v1, v1, [Ljava/lang/Iterable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/v3;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/v3;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/shaking/G3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/shaking/G3;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/K3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/L3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/shaking/L3;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/L3;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final p()Lcom/android/tools/r8/shaking/G3;
    .locals 0

    return-object p0
.end method
