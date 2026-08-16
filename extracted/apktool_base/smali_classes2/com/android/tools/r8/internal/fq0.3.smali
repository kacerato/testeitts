.class public final Lcom/android/tools/r8/internal/fq0;
.super Lcom/android/tools/r8/internal/Do0;
.source "SourceFile"


# static fields
.field public static final e:Z

.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Z

.field public final d:Lcom/android/tools/r8/internal/nC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.tools.r8.debug.StringMethodOptimizer"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/tools/r8/internal/fq0;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Do0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, v1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/fq0;->c:Z

    new-instance p1, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->B4:Lcom/android/tools/r8/graph/N1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/N1;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->y4:Lcom/android/tools/r8/graph/E1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E1;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->I4:Lcom/android/tools/r8/graph/p2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/p2;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->C4:Lcom/android/tools/r8/graph/f2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/f2;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->j:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->z4:Lcom/android/tools/r8/graph/F1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/F1;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$b;->f:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->A4:Lcom/android/tools/r8/graph/K1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/K1;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->i:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->L4:Lcom/android/tools/r8/graph/I1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I1;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/q2;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kC;->a()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/fq0;->d:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/Yp0;)V
    .locals 4

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 7
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->o()I

    move-result v1

    .line 11
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->o()I

    move-result p2

    .line 13
    invoke-interface {p3, v0, v1, p2}, Lcom/android/tools/r8/internal/Yp0;->a(Lcom/android/tools/r8/graph/L2;II)I

    move-result p2

    .line 14
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/dq0;)V
    .locals 2

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 25
    invoke-interface {p3, v0, p2}, Lcom/android/tools/r8/internal/dq0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result p2

    .line 26
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Ljava/util/function/BiPredicate;)V
    .locals 2

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 19
    invoke-interface {p3, v0, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 20
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Z)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " method="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/f60;)V
    .locals 3

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p0, v0, v1}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/L2;I)Lcom/android/tools/r8/graph/L2;
    .locals 2

    if-ltz p2, :cond_1

    .line 173
    iget v0, p1, Lcom/android/tools/r8/graph/L2;->e:I

    if-gt p2, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    .line 175
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 177
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;II)Lcom/android/tools/r8/graph/L2;
    .locals 2

    if-ltz p2, :cond_1

    if-gt p2, p3, :cond_1

    .line 178
    iget v0, p1, Lcom/android/tools/r8/graph/L2;->e:I

    if-gt p3, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    .line 180
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/ir/optimize/a;)Lcom/android/tools/r8/internal/EE;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 207
    iget-boolean v5, v0, Lcom/android/tools/r8/internal/fq0;->c:Z

    if-nez v5, :cond_0

    goto/16 :goto_9

    .line 208
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$d;->z:Lcom/android/tools/r8/graph/A2;

    .line 209
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    .line 210
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 211
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v7

    if-nez v7, :cond_1

    .line 212
    sget-boolean v3, Lcom/android/tools/r8/internal/fq0;->e:Z

    if-eqz v3, :cond_14

    .line 213
    const-string v3, "optimizeFormat: Non-Const Spec"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;)V

    return-object v2

    .line 214
    :cond_1
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    .line 215
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    .line 216
    invoke-virtual {v3, v9}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 217
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v8

    goto :goto_0

    :cond_2
    move v10, v9

    .line 218
    :goto_0
    invoke-static {v7, v10}, Lcom/android/tools/r8/internal/Xp0;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Xp0;

    move-result-object v7

    if-nez v7, :cond_3

    .line 219
    sget-boolean v3, Lcom/android/tools/r8/internal/fq0;->e:Z

    if-eqz v3, :cond_14

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optimizeFormat: Unsupported format with allowNumbers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;)V

    return-object v2

    :cond_3
    add-int/2addr v5, v8

    .line 221
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 222
    iget-object v10, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 223
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    .line 224
    :cond_4
    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/Ow0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/Nw0;

    move-result-object v5

    if-nez v5, :cond_5

    goto/16 :goto_9

    .line 225
    :cond_5
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Nw0;->b()Ljava/util/List;

    move-result-object v5

    .line 226
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    iget v11, v7, Lcom/android/tools/r8/internal/Xp0;->b:I

    if-ge v10, v11, :cond_6

    goto/16 :goto_9

    :cond_6
    if-nez v11, :cond_7

    .line 227
    iget-object v3, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v7, Lcom/android/tools/r8/internal/Xp0;->a:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Wp0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/Wp0;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 229
    invoke-interface {v2, v3, v1, v5, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 230
    sget-boolean v3, Lcom/android/tools/r8/internal/fq0;->e:Z

    if-eqz v3, :cond_14

    .line 231
    const-string v3, "String.format(): Optimized no placeholders"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;)V

    return-object v2

    .line 232
    :cond_7
    iget-object v10, v7, Lcom/android/tools/r8/internal/Xp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v9

    :goto_2
    const/16 v13, 0x62

    if-ge v12, v11, :cond_16

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    check-cast v14, Lcom/android/tools/r8/internal/Wp0;

    .line 233
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Wp0;->a()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 234
    iget v15, v14, Lcom/android/tools/r8/internal/Wp0;->b:I

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    if-eqz v15, :cond_8

    .line 235
    iget-object v9, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v15, v9}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    move v9, v8

    goto/16 :goto_a

    .line 236
    :cond_9
    iget-char v9, v14, Lcom/android/tools/r8/internal/Wp0;->c:C

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    if-eq v9, v13, :cond_11

    const/16 v13, 0x64

    if-eq v9, v13, :cond_10

    .line 237
    sget-boolean v13, Lcom/android/tools/r8/internal/fq0;->f:Z

    if-nez v13, :cond_b

    const/16 v13, 0x73

    if-ne v9, v13, :cond_a

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 238
    :cond_b
    :goto_3
    iget-object v9, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 240
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v9

    if-nez v9, :cond_d

    :cond_c
    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    .line 241
    :cond_d
    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 242
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_4

    .line 243
    :cond_e
    iget-object v9, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->Q3:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v13}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    .line 244
    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8, v9, v13}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    goto :goto_6

    :goto_5
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_13

    goto :goto_7

    :cond_f
    const/4 v9, 0x1

    goto :goto_7

    :cond_10
    const/4 v9, 0x1

    .line 245
    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->b2:Lcom/android/tools/r8/graph/M2;

    .line 246
    invoke-virtual {v8, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->W1:Lcom/android/tools/r8/graph/M2;

    .line 247
    invoke-virtual {v8, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->c2:Lcom/android/tools/r8/graph/M2;

    .line 248
    invoke-virtual {v8, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_7

    :cond_11
    const/4 v9, 0x1

    .line 249
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result v13

    if-eqz v13, :cond_13

    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_12
    :goto_7
    move v8, v9

    goto :goto_8

    :cond_13
    const/4 v8, 0x0

    :goto_8
    if-nez v8, :cond_15

    .line 250
    sget-boolean v3, Lcom/android/tools/r8/internal/fq0;->e:Z

    if-eqz v3, :cond_14

    .line 251
    iget v3, v14, Lcom/android/tools/r8/internal/Wp0;->b:I

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-char v4, v14, Lcom/android/tools/r8/internal/Wp0;->c:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 253
    const-string v4, "String.format(): Unsupported param %s type %%%s: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;)V

    :cond_14
    :goto_9
    return-object v2

    :cond_15
    :goto_a
    move v8, v9

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_16
    move v9, v8

    .line 255
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 256
    sget-boolean v10, Lcom/android/tools/r8/internal/tZ;->m:Z

    .line 257
    new-instance v10, Lcom/android/tools/r8/internal/sZ;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/sZ;-><init>()V

    .line 258
    iget-object v11, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    .line 259
    iput-object v11, v10, Lcom/android/tools/r8/internal/sZ;->d:Lcom/android/tools/r8/graph/M2;

    .line 260
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v11

    .line 261
    iput-object v11, v10, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 262
    iget-object v11, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    iget-object v12, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    .line 263
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v14

    .line 264
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    invoke-static {v11, v14, v12}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v11

    const/4 v12, 0x0

    .line 266
    invoke-interface {v1, v11, v12}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    .line 267
    iput-object v11, v10, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 268
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/sZ;->a()Lcom/android/tools/r8/internal/sE;

    move-result-object v10

    .line 269
    check-cast v10, Lcom/android/tools/r8/internal/sZ;

    .line 270
    new-instance v11, Lcom/android/tools/r8/internal/tZ;

    iget-object v14, v10, Lcom/android/tools/r8/internal/sZ;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v15, v10, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v11, v14, v15}, Lcom/android/tools/r8/internal/tZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    .line 271
    iget-object v10, v10, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v10, :cond_17

    .line 272
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 273
    :cond_17
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 274
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-boolean v11, Lcom/android/tools/r8/internal/QJ;->p:Z

    .line 276
    new-instance v11, Lcom/android/tools/r8/internal/PJ;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/PJ;-><init>()V

    .line 277
    iget-object v14, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/q2;->o:Lcom/android/tools/r8/graph/A2;

    .line 278
    iput-object v14, v11, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 279
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/PJ;

    .line 280
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v14

    .line 281
    iput-object v14, v11, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 282
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/PJ;->c()Lcom/android/tools/r8/internal/QJ;

    move-result-object v11

    .line 283
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v7, v7, Lcom/android/tools/r8/internal/Xp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v11, :cond_25

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/tools/r8/internal/Wp0;

    .line 285
    iget-object v9, v15, Lcom/android/tools/r8/internal/Wp0;->a:Ljava/lang/String;

    if-eqz v9, :cond_18

    const/4 v9, 0x1

    goto :goto_c

    :cond_18
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_1a

    .line 286
    new-instance v9, Lcom/android/tools/r8/internal/uh;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/uh;-><init>()V

    .line 287
    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v15, v15, Lcom/android/tools/r8/internal/Wp0;->a:Ljava/lang/String;

    .line 288
    invoke-virtual {v13, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 289
    iput-object v13, v9, Lcom/android/tools/r8/internal/uh;->d:Lcom/android/tools/r8/graph/L2;

    .line 290
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v13

    .line 291
    iput-object v13, v9, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 292
    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    .line 293
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v13

    .line 294
    invoke-interface {v1, v13, v12}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    .line 295
    iput-object v13, v9, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 296
    new-instance v13, Lcom/android/tools/r8/internal/vh;

    iget-object v15, v9, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v12, v9, Lcom/android/tools/r8/internal/uh;->d:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v13, v15, v12}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    .line 297
    iget-object v9, v9, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v9, :cond_19

    .line 298
    invoke-virtual {v13, v9}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 299
    :cond_19
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 301
    iget-object v12, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v12, v12, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    :goto_d
    const/4 v15, 0x0

    goto/16 :goto_14

    .line 302
    :cond_1a
    iget v9, v15, Lcom/android/tools/r8/internal/Wp0;->b:I

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    if-eqz v9, :cond_1c

    .line 303
    iget-object v12, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v12}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v12

    if-eqz v12, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v12, 0x0

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v12, 0x1

    :goto_f
    if-eqz v12, :cond_1f

    .line 304
    new-instance v9, Lcom/android/tools/r8/internal/uh;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/uh;-><init>()V

    .line 305
    iget-object v12, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    .line 306
    iget-char v13, v15, Lcom/android/tools/r8/internal/Wp0;->c:C

    const/16 v15, 0x62

    if-ne v13, v15, :cond_1d

    const-string v13, "false"

    goto :goto_10

    :cond_1d
    const-string v13, "null"

    :goto_10
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    .line 307
    iput-object v12, v9, Lcom/android/tools/r8/internal/uh;->d:Lcom/android/tools/r8/graph/L2;

    .line 308
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v12

    .line 309
    iput-object v12, v9, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 310
    iget-object v12, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    .line 311
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v12

    const/4 v13, 0x0

    .line 312
    invoke-interface {v1, v12, v13}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    .line 313
    iput-object v12, v9, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 314
    new-instance v12, Lcom/android/tools/r8/internal/vh;

    iget-object v13, v9, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v15, v9, Lcom/android/tools/r8/internal/uh;->d:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v12, v13, v15}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    .line 315
    iget-object v9, v9, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v9, :cond_1e

    .line 316
    invoke-virtual {v12, v9}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 317
    :cond_1e
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 319
    iget-object v12, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v12, v12, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    goto :goto_d

    .line 320
    :cond_1f
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    .line 321
    invoke-interface {v12}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v13

    if-eqz v13, :cond_20

    const/4 v13, 0x0

    goto :goto_11

    :cond_20
    iget-object v12, v12, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v13

    :goto_11
    if-eqz v13, :cond_22

    .line 322
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 323
    iget-object v15, v0, Lcom/android/tools/r8/internal/fq0;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v15, v12}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    const/4 v15, 0x0

    if-eqz v12, :cond_21

    .line 324
    invoke-virtual {v13, v15}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    goto :goto_13

    :cond_21
    move-object v13, v12

    goto :goto_12

    :cond_22
    const/4 v15, 0x0

    const/4 v13, 0x0

    :goto_12
    move-object v12, v13

    :goto_13
    if-nez v12, :cond_24

    .line 325
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v12

    iget-object v13, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 327
    iget-object v12, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v12, v12, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    goto :goto_14

    .line 328
    :cond_23
    iget-object v12, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v12, v12, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    .line 329
    :cond_24
    :goto_14
    sget-boolean v13, Lcom/android/tools/r8/internal/mK;->o:Z

    .line 330
    new-instance v13, Lcom/android/tools/r8/internal/lK;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/lK;-><init>()V

    .line 331
    iput-object v12, v13, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 332
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v12

    .line 333
    iput-object v12, v13, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 334
    filled-new-array {v10, v9}, [Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 335
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v9

    .line 336
    check-cast v9, Lcom/android/tools/r8/internal/lK;

    .line 337
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object v9

    .line 338
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x62

    goto/16 :goto_b

    .line 339
    :cond_25
    sget-boolean v5, Lcom/android/tools/r8/internal/mK;->o:Z

    .line 340
    new-instance v5, Lcom/android/tools/r8/internal/lK;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/lK;-><init>()V

    .line 341
    iget-object v6, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    .line 342
    iput-object v6, v5, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 343
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    .line 344
    iput-object v3, v5, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 345
    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/lK;

    iget-object v5, v0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v6, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    .line 346
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    const/4 v6, 0x0

    .line 347
    invoke-interface {v1, v5, v6}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 348
    iput-object v5, v3, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 349
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object v3

    .line 350
    invoke-interface {v2, v3, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 351
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 352
    iget-object v3, v0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    .line 353
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    move-object/from16 v4, p3

    .line 354
    invoke-interface {v2, v1, v4, v8, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object v2

    .line 355
    sget-boolean v3, Lcom/android/tools/r8/internal/fq0;->e:Z

    if-eqz v3, :cond_26

    .line 356
    const-string v3, "String.format(): Optimized."

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;)V

    :cond_26
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
    .locals 7

    .line 27
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p7

    check-cast p7, Lcom/android/tools/r8/graph/A2;

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    .line 29
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p5

    .line 30
    iget-object p5, p5, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v1, 0x0

    .line 31
    aget-byte p5, p5, v1

    int-to-char p5, p5

    const/16 v2, 0x63

    if-eq p5, v2, :cond_1a

    const/16 v2, 0x6c

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p5, v2, :cond_15

    const/16 v2, 0x76

    if-eq p5, v2, :cond_12

    const/16 v2, 0x65

    if-eq p5, v2, :cond_d

    const/16 v2, 0x66

    if-eq p5, v2, :cond_b

    const/16 p2, 0x68

    if-eq p5, p2, :cond_a

    const/16 p2, 0x69

    if-eq p5, p2, :cond_5

    const/16 p2, 0x73

    if-eq p5, p2, :cond_2

    const/16 p2, 0x74

    if-eq p5, p2, :cond_0

    goto/16 :goto_0

    .line 32
    :cond_0
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->B:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 33
    new-instance p2, Lcom/android/tools/r8/internal/mb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/mb1;-><init>()V

    .line 34
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 35
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p5

    if-eqz p5, :cond_1e

    .line 36
    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/graph/L2;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/graph/L2;)V

    return-object p3

    .line 38
    :cond_1
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->C:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 39
    new-instance p2, Lcom/android/tools/r8/internal/ob1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/ob1;-><init>(Lcom/android/tools/r8/internal/fq0;)V

    .line 40
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 41
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p5

    if-eqz p5, :cond_1e

    .line 42
    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/graph/L2;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/graph/L2;)V

    return-object p3

    .line 44
    :cond_2
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 45
    new-instance p2, Lcom/android/tools/r8/internal/rb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/rb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Ljava/util/function/BiPredicate;)V

    return-object p3

    .line 46
    :cond_3
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 47
    new-instance p2, Lcom/android/tools/r8/internal/sb1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/sb1;-><init>(Lcom/android/tools/r8/internal/fq0;)V

    .line 48
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 49
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p5

    if-eqz p5, :cond_1e

    .line 50
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p7

    .line 51
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result p7

    if-eqz p7, :cond_1e

    .line 52
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p7

    .line 53
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->o()I

    move-result p7

    invoke-interface {p2, p5, p7}, Lcom/android/tools/r8/internal/bq0;->a(Lcom/android/tools/r8/graph/L2;I)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/graph/L2;)V

    return-object p3

    .line 55
    :cond_4
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->i:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 56
    new-instance p2, Lcom/android/tools/r8/internal/tb1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/tb1;-><init>(Lcom/android/tools/r8/internal/fq0;)V

    .line 57
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 58
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p5

    if-eqz p5, :cond_1e

    .line 59
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p7

    .line 60
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result p7

    if-eqz p7, :cond_1e

    .line 61
    invoke-virtual {p4, v3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p7

    .line 62
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result p7

    if-eqz p7, :cond_1e

    .line 63
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p7

    .line 64
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->o()I

    move-result p7

    .line 65
    invoke-virtual {p4, v3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->o()I

    move-result v0

    .line 67
    invoke-interface {p2, p5, p7, v0}, Lcom/android/tools/r8/internal/Zp0;->a(Lcom/android/tools/r8/graph/L2;II)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 68
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/graph/L2;)V

    return-object p3

    .line 69
    :cond_5
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->n:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 70
    new-instance p2, Lcom/android/tools/r8/internal/xb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/xb1;-><init>()V

    .line 71
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 72
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p5

    if-eqz p5, :cond_1e

    .line 73
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p6

    .line 74
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result p6

    if-eqz p6, :cond_1e

    .line 75
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 76
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->o()I

    move-result p4

    invoke-interface {p2, p5, p4}, Lcom/android/tools/r8/internal/aq0;->a(Lcom/android/tools/r8/graph/L2;I)I

    move-result p2

    .line 77
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-object p3

    .line 78
    :cond_6
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->o:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 79
    new-instance p2, Lcom/android/tools/r8/internal/Bb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Bb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/Yp0;)V

    return-object p3

    .line 80
    :cond_7
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->p:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 81
    new-instance p2, Lcom/android/tools/r8/internal/Cb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Cb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/dq0;)V

    return-object p3

    .line 82
    :cond_8
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->q:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 83
    new-instance p2, Lcom/android/tools/r8/internal/Db1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Db1;-><init>()V

    .line 84
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 85
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p5

    .line 86
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p6

    .line 87
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p6

    if-eqz p5, :cond_1e

    if-eqz p6, :cond_1e

    .line 88
    invoke-virtual {p4, v3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p7

    .line 89
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result p7

    if-eqz p7, :cond_1e

    .line 90
    invoke-virtual {p4, v3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 91
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->o()I

    move-result p4

    invoke-interface {p2, p5, p6, p4}, Lcom/android/tools/r8/internal/cq0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;I)I

    move-result p2

    .line 92
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-object p3

    .line 93
    :cond_9
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 94
    new-instance p2, Lcom/android/tools/r8/internal/Eb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Eb1;-><init>()V

    .line 95
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 96
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p4

    if-eqz p4, :cond_1e

    .line 97
    invoke-interface {p2, p4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    .line 98
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Z)V

    return-object p3

    .line 99
    :cond_a
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->x:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 100
    new-instance p2, Lcom/android/tools/r8/internal/Fb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Fb1;-><init>()V

    .line 101
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 102
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p4

    if-eqz p4, :cond_1e

    .line 103
    invoke-interface {p2, p4}, Lcom/android/tools/r8/internal/eq0;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result p2

    .line 104
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-object p3

    .line 105
    :cond_b
    iget-object p5, v0, Lcom/android/tools/r8/graph/u1$d;->y:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p5

    if-nez p5, :cond_c

    iget-object p5, v0, Lcom/android/tools/r8/graph/u1$d;->z:Lcom/android/tools/r8/graph/A2;

    .line 106
    invoke-virtual {p7, p5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p5

    if-eqz p5, :cond_1e

    .line 107
    :cond_c
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, p6

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/ir/optimize/a;)Lcom/android/tools/r8/internal/EE;

    move-result-object p1

    return-object p1

    .line 109
    :cond_d
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->j:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 110
    new-instance p2, Lcom/android/tools/r8/internal/Gb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Gb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Ljava/util/function/BiPredicate;)V

    return-object p3

    .line 111
    :cond_e
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->k:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 112
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p2

    .line 113
    iget-object p5, p0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p5

    if-eqz p5, :cond_10

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p5

    .line 115
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p6

    .line 116
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 117
    invoke-virtual {p0, p6, p2, p5}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;)Z

    move-result p7

    if-nez p7, :cond_f

    .line 118
    invoke-virtual {p0, p2, p6, p5}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 119
    :cond_f
    invoke-interface {p3, p1, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Z)V

    return-object p3

    .line 120
    :cond_10
    new-instance p2, Lcom/android/tools/r8/internal/Hb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Hb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Ljava/util/function/BiPredicate;)V

    return-object p3

    .line 121
    :cond_11
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 122
    new-instance p2, Lcom/android/tools/r8/internal/Ib1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Ib1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Ljava/util/function/BiPredicate;)V

    return-object p3

    .line 123
    :cond_12
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->A:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 124
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p2

    .line 125
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 126
    iget-object p5, p0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result p5

    if-eqz p5, :cond_13

    .line 127
    iget-object p2, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    const-string p4, "null"

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 128
    iget-object p4, p0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {p3, p4, p1, p2, p6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V

    return-object p3

    .line 129
    :cond_13
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result p5

    if-eqz p5, :cond_1e

    iget-object p5, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    .line 131
    iget-object p5, p5, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 132
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 133
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1, p4, p6}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 134
    :cond_14
    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    return-object p3

    .line 135
    :cond_15
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->r:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 136
    new-instance p2, Lcom/android/tools/r8/internal/ub1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/ub1;-><init>()V

    .line 137
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 138
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p5

    if-eqz p5, :cond_1e

    .line 139
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p6

    .line 140
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result p6

    if-eqz p6, :cond_1e

    .line 141
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 142
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->o()I

    move-result p4

    invoke-interface {p2, p5, p4}, Lcom/android/tools/r8/internal/aq0;->a(Lcom/android/tools/r8/graph/L2;I)I

    move-result p2

    .line 143
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-object p3

    .line 144
    :cond_16
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->s:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 145
    new-instance p2, Lcom/android/tools/r8/internal/vb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/vb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/Yp0;)V

    return-object p3

    .line 146
    :cond_17
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->t:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 147
    new-instance p2, Lcom/android/tools/r8/internal/wb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/wb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/dq0;)V

    return-object p3

    .line 148
    :cond_18
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->u:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 149
    new-instance p2, Lcom/android/tools/r8/internal/yb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/yb1;-><init>()V

    .line 150
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 151
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p5

    .line 152
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p6

    .line 153
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p6

    if-eqz p5, :cond_1e

    if-eqz p6, :cond_1e

    .line 154
    invoke-virtual {p4, v3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p7

    .line 155
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result p7

    if-eqz p7, :cond_1e

    .line 156
    invoke-virtual {p4, v3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 157
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->o()I

    move-result p4

    invoke-interface {p2, p5, p6, p4}, Lcom/android/tools/r8/internal/cq0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;I)I

    move-result p2

    .line 158
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-object p3

    .line 159
    :cond_19
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 160
    new-instance p2, Lcom/android/tools/r8/internal/zb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/zb1;-><init>()V

    .line 161
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 162
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object p4

    if-eqz p4, :cond_1e

    .line 163
    invoke-interface {p2, p4}, Lcom/android/tools/r8/internal/eq0;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result p2

    .line 164
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-object p3

    .line 165
    :cond_1a
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->v:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 166
    new-instance p2, Lcom/android/tools/r8/internal/nb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/nb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/dq0;)V

    return-object p3

    .line 167
    :cond_1b
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->w:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 168
    new-instance p2, Lcom/android/tools/r8/internal/pb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/pb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/dq0;)V

    return-object p3

    .line 169
    :cond_1c
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 170
    new-instance p2, Lcom/android/tools/r8/internal/qb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/qb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Ljava/util/function/BiPredicate;)V

    return-object p3

    .line 171
    :cond_1d
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1$d;->m:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 172
    new-instance p2, Lcom/android/tools/r8/internal/Hb1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Hb1;-><init>()V

    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Ljava/util/function/BiPredicate;)V

    :cond_1e
    :goto_0
    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    .line 183
    sget-boolean v0, Lcom/android/tools/r8/internal/fq0;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p5, :cond_2

    return-void

    .line 186
    :cond_2
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->q()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 189
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 190
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 191
    invoke-virtual {p1, p5, p4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 192
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/Ab1;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/internal/Ab1;-><init>(Lcom/android/tools/r8/ir/optimize/a;)V

    .line 194
    invoke-interface {p1, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 195
    :cond_3
    invoke-interface {p2}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void

    .line 196
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {p2, p3, p1, p5, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 200
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/J21;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J21;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 201
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->p5:Lcom/android/tools/r8/graph/a2;

    .line 204
    iget-object v3, v0, Lcom/android/tools/r8/graph/a2;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/tools/r8/graph/a2;->b:Lcom/android/tools/r8/graph/l1;

    .line 205
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, v0, Lcom/android/tools/r8/graph/a2;->c:Lcom/android/tools/r8/graph/l1;

    .line 206
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 357
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 359
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 360
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0, p3}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 361
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    iget-object p3, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/G1;->e:Lcom/android/tools/r8/graph/A2;

    if-eq p1, p3, :cond_2

    goto :goto_0

    .line 362
    :cond_2
    iget-object p1, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    instance-of p1, p1, Lcom/android/tools/r8/internal/uq;

    if-nez p1, :cond_3

    return v1

    .line 364
    :cond_3
    iget-object p1, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p1

    .line 365
    iget-object p2, p1, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 366
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    instance-of p3, p2, Lcom/android/tools/r8/graph/M2;

    if-eqz p3, :cond_4

    .line 368
    iget-object p3, p0, Lcom/android/tools/r8/internal/fq0;->a:Lcom/android/tools/r8/graph/y;

    .line 369
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/shaking/i;->j(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 370
    iget-object p1, p1, Lcom/android/tools/r8/internal/uq;->m:Lcom/android/tools/r8/internal/ZY;

    .line 371
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ZY;->d()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fq0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
