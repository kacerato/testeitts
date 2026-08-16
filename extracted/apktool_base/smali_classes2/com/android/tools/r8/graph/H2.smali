.class public Lcom/android/tools/r8/graph/H2;
.super Lcom/android/tools/r8/graph/E0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/D5;
.implements Lcom/android/tools/r8/graph/I5;
.implements Ljava/util/function/Supplier;
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/H2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/E0;",
        "Lcom/android/tools/r8/graph/D5;",
        "Lcom/android/tools/r8/graph/I5;",
        "Ljava/util/function/Supplier<",
        "Lcom/android/tools/r8/graph/H2;",
        ">;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/H2;",
        ">;"
    }
.end annotation


# static fields
.field public static final B:[Lcom/android/tools/r8/graph/H2;

.field public static final synthetic C:Z = true


# instance fields
.field public A:Lcom/android/tools/r8/synthesis/L;

.field public final u:Lcom/android/tools/r8/ProgramResource$Kind;

.field public v:Lcom/android/tools/r8/internal/Ib;

.field public w:Z

.field public x:Lcom/android/tools/r8/kotlin/p;

.field public final y:Lcom/android/tools/r8/internal/Jb0;

.field public final z:Lcom/android/tools/r8/graph/H2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/H2;

    sput-object v0, Lcom/android/tools/r8/graph/H2;->B:[Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/ProgramResource$Kind;",
            "Lcom/android/tools/r8/origin/Origin;",
            "Lcom/android/tools/r8/graph/Q;",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/O2;",
            "Lcom/android/tools/r8/graph/L2;",
            "Lcom/android/tools/r8/graph/o5;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/p5;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/A5;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/P5;",
            ">;",
            "Lcom/android/tools/r8/graph/i3;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/e4;",
            ">;",
            "Lcom/android/tools/r8/graph/H3$b;",
            "Lcom/android/tools/r8/graph/u0;",
            "Lcom/android/tools/r8/graph/q3;",
            "Lcom/android/tools/r8/graph/N4$a;",
            "Z",
            "Lcom/android/tools/r8/graph/H2$a;",
            "Lcom/android/tools/r8/internal/Jb0;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    const/16 v21, 0x0

    .line 12
    invoke-direct/range {v0 .. v21}, Lcom/android/tools/r8/graph/H2;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;Lcom/android/tools/r8/synthesis/L;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;Lcom/android/tools/r8/synthesis/L;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v6, p19

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v16, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v2, p6

    move-object/from16 v1, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move/from16 v17, p18

    .line 1
    invoke-direct/range {v0 .. v17}, Lcom/android/tools/r8/graph/E0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/origin/Origin;Z)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 2
    iput-object v0, v1, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v1, Lcom/android/tools/r8/graph/H2;->w:Z

    .line 4
    sget-object v0, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    .line 5
    iput-object v0, v1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/graph/H2;->C:Z

    move-object/from16 v2, p19

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-eqz p15, :cond_3

    :cond_2
    move-object/from16 v0, p2

    goto :goto_1

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8
    :goto_1
    iput-object v0, v1, Lcom/android/tools/r8/graph/H2;->u:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 9
    iput-object v2, v1, Lcom/android/tools/r8/graph/H2;->z:Lcom/android/tools/r8/graph/H2$a;

    move-object/from16 v0, p21

    .line 10
    iput-object v0, v1, Lcom/android/tools/r8/graph/H2;->A:Lcom/android/tools/r8/synthesis/L;

    move-object/from16 v0, p20

    .line 11
    iput-object v0, v1, Lcom/android/tools/r8/graph/H2;->y:Lcom/android/tools/r8/internal/Jb0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/g1;)I
    .locals 0

    .line 127
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, p2, p0}, Lcom/android/tools/r8/graph/n5;->a(Lcom/android/tools/r8/graph/n5;Lcom/android/tools/r8/naming/r0;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;)J
    .locals 3

    .line 170
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no checksum information while checksum encoding is requested"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    const/4 v2, 0x0

    .line 171
    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    throw v0
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H2;
    .locals 23

    move-object/from16 v0, p0

    .line 26
    new-instance v22, Lcom/android/tools/r8/graph/H2;

    move-object/from16 v1, v22

    .line 27
    const-string v2, "LMock;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 28
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v4

    const/4 v3, 0x0

    .line 29
    invoke-static {v3}, Lcom/android/tools/r8/graph/Q;->g(I)Lcom/android/tools/r8/graph/Q;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 30
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    .line 31
    sget-object v14, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    .line 32
    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v15

    .line 33
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v16

    .line 34
    invoke-static {}, Lcom/android/tools/r8/graph/q3;->empty()Lcom/android/tools/r8/graph/q3;

    move-result-object v17

    .line 35
    invoke-static {}, Lcom/android/tools/r8/graph/N4$a;->empty()Lcom/android/tools/r8/graph/N4$a;

    move-result-object v18

    new-instance v0, Lcom/android/tools/r8/l2;

    move-object/from16 v20, v0

    invoke-direct {v0}, Lcom/android/tools/r8/l2;-><init>()V

    sget-object v21, Lcom/android/tools/r8/internal/Jb0;->b:Lcom/android/tools/r8/internal/Jb0;

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/android/tools/r8/graph/H2;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;)V

    return-object v22
.end method

.method public static synthetic a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/F0;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 56
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 55
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/android/tools/r8/shaking/u3;)Ljava/lang/Iterable;
    .locals 1

    .line 168
    new-instance v0, Lcom/android/tools/r8/graph/M7;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/M7;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)Ljava/util/Iterator;
    .locals 1

    .line 169
    new-instance v0, Lcom/android/tools/r8/graph/G2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/G2;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/dex/X;Lcom/android/tools/r8/graph/F0;)V
    .locals 0

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/dex/X;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/X;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/X;->b(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/F5;)V
    .locals 1

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/graph/H5;)V
    .locals 8

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/graph/H5;->f:Z

    if-nez v1, :cond_1

    .line 12
    iget-boolean v1, v0, Lcom/android/tools/r8/graph/j1;->t:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 15
    invoke-virtual {v1, p0, p1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v1, p0, p1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    .line 19
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object v2

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 22
    iget-object p2, v0, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    .line 23
    iget-object p2, p2, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    .line 24
    array-length p3, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_4

    aget-object v1, p2, v0

    .line 25
    invoke-virtual {v1, p0, p1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/android/tools/r8/graph/K7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/K7;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/P7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/P7;-><init>()V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Q7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Q7;-><init>()V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/R7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/R7;-><init>()V

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/S7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/S7;-><init>()V

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/T7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/T7;-><init>()V

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/U7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/U7;-><init>()V

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/V7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/V7;-><init>()V

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/W7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/W7;-><init>()V

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->h(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Y7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Y7;-><init>()V

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/L7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/L7;-><init>()V

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/N7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/N7;-><init>()V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->h(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/O7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/O7;-><init>()V

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->h(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/r3;)Z
    .locals 1

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/r3;->b()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/Function;Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 12
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/O2;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/Q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    return-object p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Ib;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/tools/r8/graph/H2;->w:Z

    return p0
.end method

.method public static synthetic i(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 1
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

.method public final E1()Lcom/android/tools/r8/internal/sK;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/g8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/g8;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    return-object v0
.end method

.method public F1()J
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/H2;->z:Lcom/android/tools/r8/graph/H2$a;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/graph/H2$a;->a(Lcom/android/tools/r8/graph/H2;)J

    move-result-wide v0

    return-wide v0
.end method

.method public G1()Lcom/android/tools/r8/internal/Ib;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    return-object v0
.end method

.method public H1()Lcom/android/tools/r8/graph/H5;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    return-object v0
.end method

.method public final I1()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/H2;->y:Lcom/android/tools/r8/internal/Jb0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/tools/r8/internal/Jb0;->c:Lcom/android/tools/r8/internal/Jb0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J1()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/H2;->u:Lcom/android/tools/r8/ProgramResource$Kind;

    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K1()Lcom/android/tools/r8/internal/sK;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/e8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/e8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    return-object v0
.end method

.method public final L1()Lcom/android/tools/r8/internal/Ux;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H2;->E1()Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H2;->M1()Lcom/android/tools/r8/internal/sK;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Iterable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    return-object v0
.end method

.method public final M1()Lcom/android/tools/r8/internal/sK;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/k8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/k8;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    return-object v0
.end method

.method public final S()Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public final S0()Lcom/android/tools/r8/graph/V;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    return-object v0
.end method

.method public final a()Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/graph/H2;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/f1;
    .locals 8

    .line 128
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 129
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 131
    invoke-static {v1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/a3;

    move-result-object v1

    if-ne v3, v1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    new-instance v1, Lcom/android/tools/r8/graph/H7;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/H7;-><init>(Lcom/android/tools/r8/naming/r0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    .line 135
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 136
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/g1;

    .line 137
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v6

    .line 138
    sget-boolean v7, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 139
    :cond_3
    :goto_2
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-static {v5}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/a3;

    move-result-object v5

    if-ne v6, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v3, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-lez v4, :cond_6

    .line 142
    new-instance v0, Lcom/android/tools/r8/graph/f1;

    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/graph/R2;->b:[Lcom/android/tools/r8/graph/R2;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/R2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/f1;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object v0

    :cond_6
    return-object v2
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 51
    new-instance v1, Lcom/android/tools/r8/graph/a8;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/a8;-><init>(Ljava/util/function/Function;)V

    .line 52
    iget-object p1, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 53
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->a:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 57
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Z7;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/tools/r8/graph/Z7;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;Ljava/util/function/Function;)V

    .line 59
    iget-object p1, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 60
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/util/function/Predicate;Ljava/util/function/Function;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 61
    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    new-instance p1, Lcom/android/tools/r8/graph/H5;

    invoke-direct {p1, p0, p3}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1

    .line 63
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 2

    .line 91
    sget-boolean v0, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$b;->b()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 94
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 95
    monitor-enter v0

    .line 96
    :try_start_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/N4;->b()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_7

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 98
    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/r3;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 99
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 100
    :cond_7
    :goto_3
    new-instance v0, Lcom/android/tools/r8/graph/s0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/s0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/s0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/internal/RR;)V
    .locals 3

    .line 64
    invoke-interface {p2, p0}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 65
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    goto :goto_0

    .line 68
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 69
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_3

    .line 70
    invoke-interface {p2, v0}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    .line 76
    iget-object v1, v0, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_5

    .line 77
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 78
    :cond_5
    iget-object v0, v0, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_6

    .line 79
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 81
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/e4;

    .line 82
    iget-object v2, v1, Lcom/android/tools/r8/graph/e4;->b:Lcom/android/tools/r8/graph/M2;

    .line 83
    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 84
    iget-object v2, v1, Lcom/android/tools/r8/graph/e4;->c:Lcom/android/tools/r8/graph/M2;

    if-eqz v2, :cond_8

    .line 85
    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 86
    :cond_8
    iget-object v1, v1, Lcom/android/tools/r8/graph/e4;->d:Lcom/android/tools/r8/graph/L2;

    if-eqz v1, :cond_7

    .line 87
    invoke-interface {p2, v1}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    goto :goto_1

    .line 88
    :cond_9
    new-instance v0, Lcom/android/tools/r8/graph/i8;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/graph/i8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 89
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 90
    new-instance v0, Lcom/android/tools/r8/graph/j8;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/j8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/internal/RR;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    :cond_a
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/Ib;)V
    .locals 1

    .line 166
    sget-boolean v0, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 167
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/C40;->c(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ib;

    iput-object p1, p0, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)V
    .locals 3

    .line 143
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 145
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/M2;

    .line 146
    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    sub-int v2, v1, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H3$c;

    .line 148
    iget-object v2, v2, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    .line 149
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    new-instance v1, Lcom/android/tools/r8/graph/O2;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    iput-object v1, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    .line 151
    sget-boolean v0, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 152
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    return-void

    .line 153
    :cond_4
    sget-object v0, Lcom/android/tools/r8/graph/H3$b;->d:Lcom/android/tools/r8/graph/H3$b;

    .line 154
    new-instance v0, Lcom/android/tools/r8/graph/J3;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/J3;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    .line 156
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v1

    .line 157
    iget-object v2, v0, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v1, v0, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object p1, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    .line 160
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$b;->d()Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    .line 161
    iput-object p1, v0, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    .line 162
    iget-object p1, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    .line 163
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object p1

    .line 164
    iget-object v1, v0, Lcom/android/tools/r8/graph/J3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/J3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 36
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/graph/H2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z

    move-result p1

    return p1

    .line 108
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 109
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    if-nez v0, :cond_7

    .line 110
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 111
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 112
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 114
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 115
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->f()Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 116
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->G0()Z

    move-result v0

    if-nez v0, :cond_c

    .line 117
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_9

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 119
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 123
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_b
    return v1

    :cond_c
    :goto_3
    return v2

    :cond_d
    :goto_4
    return v1
.end method

.method public final asClass()Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final asClass()Lcom/android/tools/r8/graph/H2;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final b(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 4
    new-instance v1, Lcom/android/tools/r8/graph/C7;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/C7;-><init>(Ljava/util/function/BiFunction;)V

    .line 5
    iget-object p1, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->a:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/dex/X;)V
    .locals 3

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$b;->b()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->f1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/H2;)Z

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    new-instance v1, Lcom/android/tools/r8/graph/c8;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/c8;-><init>(Lcom/android/tools/r8/dex/X;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    new-instance v1, Lcom/android/tools/r8/graph/d8;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/d8;-><init>(Lcom/android/tools/r8/dex/X;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/r3;->a(Ljava/util/function/Consumer;)V

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/u0;)Z

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/O2;)Z

    :cond_7
    return-void
.end method

.method public final synthetic b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/F5;

    invoke-direct {v0, p2, p0}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Function;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 8
    new-instance v1, Lcom/android/tools/r8/graph/l8;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/l8;-><init>(Ljava/util/function/Function;)V

    .line 9
    iget-object p1, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->a:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/s3;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z
    .locals 3

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

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

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-ne p0, p2, :cond_7

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->f()Z

    move-result p1

    if-nez p1, :cond_6

    return v0

    .line 34
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->G0()Z

    move-result p1

    return p1

    .line 35
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 38
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->f()Z

    move-result v1

    if-nez v1, :cond_8

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/graph/F7;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/F7;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    .line 41
    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_a

    .line 42
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 43
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    return v0

    .line 44
    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 47
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_c
    return v0

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Lcom/android/tools/r8/graph/F5;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/E7;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/E7;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Function;)V

    .line 5
    iget-object p1, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/F5;

    invoke-direct {v0, p2, p0}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic c(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/y;)Z
    .locals 4

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->h()Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    .line 19
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    .line 21
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final synthetic d(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/graph/b1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic d(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/F5;

    invoke-direct {v0, p2, p0}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic d(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public d0()Lcom/android/tools/r8/graph/H2;
    .locals 0

    return-object p0
.end method

.method public e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public final synthetic e(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/F5;

    invoke-direct {v0, p2, p0}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    new-instance v1, Lcom/android/tools/r8/graph/o8;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/o8;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/graph/N4;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final e0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic f(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public final f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/I7;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/I7;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final synthetic g(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public final g(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/f8;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/graph/f8;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/H2;->e(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final getContext()Lcom/android/tools/r8/graph/o0;
    .locals 0

    return-object p0
.end method

.method public final h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    new-instance v1, Lcom/android/tools/r8/graph/n8;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/n8;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final i(Ljava/util/function/Consumer;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/b8;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/b8;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/graph/E0;->d(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final j(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/sK;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/B7;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/B7;-><init>(Lcom/android/tools/r8/graph/H2;)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sK;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/sK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)V

    return-object v1
.end method

.method public final j(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/m8;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/m8;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/E0;->f(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    new-instance v1, Lcom/android/tools/r8/graph/h8;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/h8;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/graph/N4;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public j0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/sK;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E0;->i(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/D7;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/D7;-><init>(Lcom/android/tools/r8/graph/H2;)V

    .line 4
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public l(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/tools/r8/graph/H5;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/J7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/J7;-><init>()V

    return-object v0
.end method

.method public final m(Ljava/util/function/Consumer;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/X7;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/X7;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/E0;->d(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final n(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/G7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/G7;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/H2;->e(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final o(Ljava/util/function/Consumer;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
