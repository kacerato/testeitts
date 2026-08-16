.class public Lcom/android/tools/r8/graph/V;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/android/tools/r8/graph/E0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static c:Lcom/android/tools/r8/graph/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/graph/V<",
            "Lcom/android/tools/r8/graph/H2;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/android/tools/r8/graph/V;

.field public static final e:Lcom/android/tools/r8/graph/V;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/U;

.field public final b:Ljava/util/function/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/graph/V;

    new-instance v1, Lcom/android/tools/r8/graph/ib;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/ib;-><init>()V

    new-instance v2, Lcom/android/tools/r8/graph/jb;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/jb;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/V;-><init>(Lcom/android/tools/r8/graph/U;Ljava/util/function/Predicate;)V

    sput-object v0, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    new-instance v0, Lcom/android/tools/r8/graph/V;

    new-instance v1, Lcom/android/tools/r8/graph/kb;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/kb;-><init>()V

    new-instance v2, Lcom/android/tools/r8/graph/lb;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/lb;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/V;-><init>(Lcom/android/tools/r8/graph/U;Ljava/util/function/Predicate;)V

    sput-object v0, Lcom/android/tools/r8/graph/V;->d:Lcom/android/tools/r8/graph/V;

    new-instance v0, Lcom/android/tools/r8/graph/V;

    new-instance v1, Lcom/android/tools/r8/graph/mb;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/mb;-><init>()V

    new-instance v2, Lcom/android/tools/r8/graph/nb;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/nb;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/V;-><init>(Lcom/android/tools/r8/graph/U;Ljava/util/function/Predicate;)V

    sput-object v0, Lcom/android/tools/r8/graph/V;->e:Lcom/android/tools/r8/graph/V;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/U;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/V;->a:Lcom/android/tools/r8/graph/U;

    iput-object p2, p0, Lcom/android/tools/r8/graph/V;->b:Ljava/util/function/Predicate;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/internal/Jb0;)Lcom/android/tools/r8/graph/H2;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v18, p19

    move-object/from16 v19, p20

    move-object/from16 v21, p21

    move-object/from16 v20, p22

    .line 1
    new-instance v22, Lcom/android/tools/r8/graph/H2;

    move-object/from16 v0, v22

    move-object/from16 p0, v0

    move-object/from16 v23, v1

    move-object/from16 v0, p15

    move-object/from16 v1, p16

    .line 2
    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/q3;->a([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/q3;

    move-result-object v16

    .line 3
    invoke-static/range {p17 .. p18}, Lcom/android/tools/r8/graph/N4$a;->a([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/N4$a;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct/range {v0 .. v21}, Lcom/android/tools/r8/graph/H2;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;Lcom/android/tools/r8/synthesis/L;)V

    return-object v22
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/internal/Jb0;)Lcom/android/tools/r8/graph/I0;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v18, p19

    new-instance v19, Lcom/android/tools/r8/graph/I0;

    move-object/from16 v0, v19

    move-object/from16 p0, v0

    move-object/from16 p20, v1

    move-object/from16 v0, p15

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/q3;->a([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/q3;

    move-result-object v16

    invoke-static/range {p17 .. p18}, Lcom/android/tools/r8/graph/N4$a;->a([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/N4$a;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p20

    invoke-direct/range {v0 .. v18}, Lcom/android/tools/r8/graph/I0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;Z)V

    return-object v19
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/internal/Jb0;)Lcom/android/tools/r8/graph/u2;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v18, p19

    new-instance v19, Lcom/android/tools/r8/graph/u2;

    move-object/from16 v0, v19

    move-object/from16 p0, v0

    move-object/from16 p20, v1

    move-object/from16 v0, p15

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/q3;->a([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/q3;

    move-result-object v16

    invoke-static/range {p17 .. p18}, Lcom/android/tools/r8/graph/N4$a;->a([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/N4$a;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p20

    invoke-direct/range {v0 .. v18}, Lcom/android/tools/r8/graph/u2;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;Z)V

    return-object v19
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/V;->b:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
