.class public final Lcom/android/tools/r8/graph/I0;
.super Lcom/android/tools/r8/graph/E0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/c0;
.implements Lcom/android/tools/r8/graph/f0;
.implements Lcom/android/tools/r8/graph/I5;
.implements Ljava/util/function/Supplier;
.implements Lcom/android/tools/r8/internal/Mq0;


# static fields
.field public static final synthetic u:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;Z)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v17, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v3, p6

    move-object/from16 v2, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v7, p16

    move-object/from16 v8, p17

    move/from16 v18, p18

    invoke-direct/range {v1 .. v18}, Lcom/android/tools/r8/graph/E0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/origin/Origin;Z)V

    sget-boolean v1, Lcom/android/tools/r8/graph/I0;->u:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid kind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for class-path class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/x8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/x8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/z8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/z8;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/A8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/A8;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/B8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/B8;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/C8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/C8;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/D8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/D8;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/E8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/E8;-><init>()V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->h(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/F8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/F8;-><init>()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/u8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/u8;-><init>()V

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/v8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/v8;-><init>()V

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->h(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/y8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/y8;-><init>()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->h(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/I0;)Z
    .locals 1

    .line 15
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final S0()Lcom/android/tools/r8/graph/V;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V;->d:Lcom/android/tools/r8/graph/V;

    return-object v0
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return p4

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return p4
.end method

.method public final synthetic b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/e0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/graph/e0;-><init>(Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/j1;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final i(Ljava/util/function/Consumer;)V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    new-instance v2, Lcom/android/tools/r8/graph/t8;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/graph/t8;-><init>(Lcom/android/tools/r8/graph/I0;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final k()Lcom/android/tools/r8/graph/I0;
    .locals 0

    return-object p0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/w8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/w8;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(classpath class)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z()Lcom/android/tools/r8/graph/f0;
    .locals 0

    return-object p0
.end method
