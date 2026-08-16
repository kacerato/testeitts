.class public final Lcom/android/tools/r8/ir/optimize/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/ir/optimize/e;

.field public final d:Ljava/util/List;

.field public final e:Lcom/android/tools/r8/ir/optimize/e;

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/nJ;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/tools/r8/ir/optimize/f;->f:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/f;->c:Lcom/android/tools/r8/ir/optimize/e;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/f;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/f;->e:Lcom/android/tools/r8/ir/optimize/e;

    return-void

    :cond_0
    new-instance v1, Lcom/android/tools/r8/ir/optimize/e;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->f1:Lcom/android/tools/r8/internal/A4;

    iget-object v2, v2, Lcom/android/tools/r8/internal/A4;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ir/optimize/e;-><init>(Lcom/android/tools/r8/AssertionsConfiguration;Lcom/android/tools/r8/graph/u1;)V

    iput-object v1, p0, Lcom/android/tools/r8/ir/optimize/f;->c:Lcom/android/tools/r8/ir/optimize/e;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->f1:Lcom/android/tools/r8/internal/A4;

    iget-object v0, v0, Lcom/android/tools/r8/internal/A4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lv/x0;

    invoke-direct {v1, p1}, Lv/x0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/f;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/g;->e:Lcom/android/tools/r8/kotlin/f;

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/f;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/ir/optimize/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/f;->e:Lcom/android/tools/r8/ir/optimize/e;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/dt;
    .locals 2

    .line 151
    new-instance v0, Lcom/android/tools/r8/internal/dt;

    const/4 v1, 0x1

    .line 152
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AssertionsConfiguration;)Lcom/android/tools/r8/ir/optimize/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/ir/optimize/e;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/ir/optimize/e;-><init>(Lcom/android/tools/r8/AssertionsConfiguration;Lcom/android/tools/r8/graph/u1;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;)Z
    .locals 4

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->f1:Lcom/android/tools/r8/internal/A4;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/A4;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/internal/A4;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration;->isPassthrough()Z

    move-result p0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/A4;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/A4;->b:Ljava/util/List;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v1}, Lcom/android/tools/r8/AssertionsConfiguration;->getScope()Lcom/android/tools/r8/AssertionsConfiguration$a;

    move-result-object v1

    sget-object v3, Lcom/android/tools/r8/AssertionsConfiguration$a;->b:Lcom/android/tools/r8/AssertionsConfiguration$a;

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/android/tools/r8/internal/A4;->b:Ljava/util/List;

    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration;->isPassthrough()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/EB;
    .locals 4

    .line 182
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 186
    new-instance v3, Lcom/android/tools/r8/internal/J21;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/J21;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 188
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/hw;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/g;->e:Lcom/android/tools/r8/kotlin/f;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/f;->b:Lcom/android/tools/r8/graph/l1;

    if-ne v2, v3, :cond_3

    .line 191
    :cond_2
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 192
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 194
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/ir/optimize/e;
    .locals 8

    .line 130
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/f;->c:Lcom/android/tools/r8/ir/optimize/e;

    .line 131
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ir/optimize/e;

    .line 132
    sget-object v3, Lcom/android/tools/r8/ir/optimize/d;->a:[I

    iget-object v4, v2, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v4}, Lcom/android/tools/r8/AssertionsConfiguration;->getScope()Lcom/android/tools/r8/AssertionsConfiguration$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1

    goto/16 :goto_1

    .line 133
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 134
    :cond_2
    iget-object v3, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v4, v2, Lcom/android/tools/r8/ir/optimize/e;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 135
    :cond_3
    iget-object v3, v2, Lcom/android/tools/r8/ir/optimize/e;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    if-ne v4, v3, :cond_4

    goto/16 :goto_1

    .line 136
    :cond_4
    iget v5, v4, Lcom/android/tools/r8/graph/L2;->e:I

    iget v6, v3, Lcom/android/tools/r8/graph/L2;->e:I

    if-ge v5, v6, :cond_5

    goto :goto_0

    .line 137
    :cond_5
    new-instance v5, Lcom/android/tools/r8/graph/K2;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3}, Lcom/android/tools/r8/graph/K2;-><init>(ILcom/android/tools/r8/graph/L2;)V

    .line 138
    new-instance v3, Lcom/android/tools/r8/graph/K2;

    invoke-direct {v3, v6, v4}, Lcom/android/tools/r8/graph/K2;-><init>(ILcom/android/tools/r8/graph/L2;)V

    .line 139
    :cond_6
    :try_start_0
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/K2;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 140
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/K2;->b()C

    move-result v4

    .line 141
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/K2;->b()C

    move-result v6

    const/16 v7, 0x3b

    if-ne v4, v7, :cond_8

    const/16 v7, 0x24

    if-ne v6, v7, :cond_8

    .line 142
    :cond_7
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/K2;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 143
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/K2;->b()C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_7

    goto :goto_0

    :cond_8
    if-eq v4, v6, :cond_6

    goto :goto_0

    .line 144
    :cond_9
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/f;->g:Z

    if-nez v2, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/K2;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_b
    iget-object v3, v2, Lcom/android/tools/r8/ir/optimize/e;->b:Lcom/android/tools/r8/graph/L2;

    .line 146
    iget v4, v3, Lcom/android/tools/r8/graph/L2;->e:I

    if-nez v4, :cond_c

    .line 147
    iget-object v3, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->F:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/L2;->c(Lcom/android/tools/r8/graph/L2;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 148
    :cond_c
    iget-object v4, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    iget-object v3, v3, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_d
    :goto_1
    move-object v0, v2

    goto/16 :goto_0

    .line 150
    :cond_e
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/f;->g:Z

    if-nez p1, :cond_10

    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_2
    return-object v0
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/internal/W5;)V
    .locals 2

    .line 174
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/EB;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 175
    iget-object v0, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 176
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/hw;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/internal/sR;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/W5;)V
    .locals 7

    .line 153
    invoke-interface {p1, p6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 154
    :cond_0
    invoke-virtual {p0, p6}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/EB;

    move-result-object p6

    if-eqz p6, :cond_9

    .line 155
    iget-object v0, p6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 156
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/hw;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 158
    sget-boolean v2, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v2, :cond_2

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 159
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    invoke-virtual {p6, v2}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 160
    iget-object v3, p2, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    .line 161
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    .line 162
    check-cast p2, Lcom/android/tools/r8/internal/dt;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v2, v3}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 164
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 165
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v4, :cond_5

    goto :goto_2

    .line 167
    :cond_5
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->R0()Lcom/android/tools/r8/internal/Or0;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_9

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-boolean p3, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez p3, :cond_8

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 170
    :cond_8
    :goto_3
    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p3

    invoke-virtual {p6, p3}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p3

    .line 171
    invoke-interface {p4, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance p3, Lv/y0;

    invoke-direct {p3, p0, p5}, Lv/y0;-><init>(Lcom/android/tools/r8/ir/optimize/f;Ljava/util/Map;)V

    invoke-interface {p2, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 173
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/fB;)Z
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/ir/optimize/e;

    move-result-object v9

    .line 9
    iget-object v0, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/AssertionsConfiguration;->isPassthrough()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    return v10

    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v11, p1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, v7, Lcom/android/tools/r8/ir/optimize/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_2

    return v10

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    move-object v11, v0

    .line 14
    :goto_0
    new-instance v12, Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/Uc0;-><init>()V

    .line 15
    new-instance v13, Ljava/util/IdentityHashMap;

    invoke-direct {v13}, Ljava/util/IdentityHashMap;-><init>()V

    .line 16
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 17
    new-instance v14, Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/Uc0;-><init>()V

    .line 18
    iget-object v0, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v0}, Lcom/android/tools/r8/AssertionsConfiguration;->isAssertionHandler()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    new-instance v3, Lcom/android/tools/r8/internal/sR;

    new-instance v0, Lv/z0;

    invoke-direct {v0, v8}, Lv/z0;-><init>(Lcom/android/tools/r8/internal/fB;)V

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    .line 20
    iget-object v15, v8, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 21
    new-instance v6, Lv/A0;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v5, v13

    move-object v10, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lv/A0;-><init>(Lcom/android/tools/r8/ir/optimize/f;Ljava/util/Set;Lcom/android/tools/r8/internal/sR;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 22
    invoke-interface {v15, v10}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 23
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/f;->g:Z

    if-nez v0, :cond_5

    .line 24
    iget v0, v12, Lcom/android/tools/r8/internal/Uc0;->h:I

    .line 25
    invoke-virtual {v13}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    const/4 v0, 0x1

    if-eqz v11, :cond_6

    .line 26
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 27
    iget-object v1, v11, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->z()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 29
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v2

    const/4 v3, 0x0

    .line 30
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 31
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 32
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_13

    .line 33
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v5

    .line 34
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    iget-object v11, v7, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v11, v11, Lcom/android/tools/r8/graph/G1;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v10, v11, :cond_16

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    iget-object v11, v7, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object v11, v11, Lcom/android/tools/r8/kotlin/g;->e:Lcom/android/tools/r8/kotlin/f;

    iget-object v11, v11, Lcom/android/tools/r8/kotlin/f;->a:Lcom/android/tools/r8/graph/M2;

    if-ne v10, v11, :cond_12

    .line 36
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 37
    iget-object v10, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    .line 38
    invoke-virtual {v10}, Lcom/android/tools/r8/AssertionsConfiguration;->isCompileTimeDisabled()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 39
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    .line 40
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 41
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v15, v7, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object v15, v15, Lcom/android/tools/r8/kotlin/g;->e:Lcom/android/tools/r8/kotlin/f;

    iget-object v15, v15, Lcom/android/tools/r8/kotlin/f;->a:Lcom/android/tools/r8/graph/M2;

    if-ne v11, v15, :cond_a

    .line 42
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v15, v7, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/u1;->m1:Lcom/android/tools/r8/graph/L2;

    if-ne v11, v15, :cond_a

    .line 43
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->W()I

    move-result v11

    if-ne v11, v0, :cond_a

    .line 44
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v11

    if-nez v11, :cond_a

    .line 45
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    if-ne v11, v10, :cond_a

    .line 46
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EE;->i()V

    .line 47
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    .line 48
    sget-boolean v11, Lcom/android/tools/r8/ir/optimize/f;->g:Z

    if-nez v11, :cond_9

    if-ne v10, v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_9
    :goto_4
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_8

    .line 50
    :cond_a
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/zE;

    .line 51
    sget-boolean v15, Lcom/android/tools/r8/ir/optimize/f;->g:Z

    if-nez v15, :cond_c

    if-ne v11, v10, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_c
    :goto_5
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    if-nez v15, :cond_e

    if-ne v10, v5, :cond_d

    goto :goto_6

    .line 53
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_e
    :goto_6
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    if-nez v15, :cond_f

    if-ne v10, v5, :cond_10

    :cond_f
    const/4 v5, 0x0

    goto :goto_7

    .line 55
    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :goto_7
    invoke-virtual {v8, v5, v6}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v10

    .line 57
    invoke-interface {v2, v10, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_8

    :cond_11
    const/4 v5, 0x0

    .line 58
    iget-object v10, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    .line 59
    invoke-virtual {v10}, Lcom/android/tools/r8/AssertionsConfiguration;->isCompileTimeEnabled()Z

    move-result v10

    .line 60
    invoke-virtual {v8, v10, v6}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v10

    .line 61
    invoke-interface {v2, v10, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_8

    :cond_12
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v10

    invoke-virtual {v8, v5, v10}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v10

    .line 63
    invoke-interface {v2, v10, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_8

    .line 64
    :cond_13
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 65
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v5

    if-eqz v1, :cond_16

    .line 66
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/hw;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 67
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EE;->remove()V

    goto :goto_8

    .line 68
    :cond_14
    instance-of v5, v4, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v5, :cond_16

    .line 69
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v5

    if-eqz v1, :cond_15

    .line 70
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/hw;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 71
    iget-object v10, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v10}, Lcom/android/tools/r8/AssertionsConfiguration;->isAssertionHandler()Z

    move-result v10

    if-nez v10, :cond_15

    .line 72
    iget-object v10, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v10}, Lcom/android/tools/r8/AssertionsConfiguration;->isCompileTimeDisabled()Z

    move-result v10

    .line 73
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v11

    .line 74
    invoke-virtual {v8, v10, v11}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v10

    .line 75
    invoke-interface {v2, v10, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 76
    :cond_15
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    iget-object v10, v7, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object v10, v10, Lcom/android/tools/r8/kotlin/g;->e:Lcom/android/tools/r8/kotlin/f;

    iget-object v10, v10, Lcom/android/tools/r8/kotlin/f;->b:Lcom/android/tools/r8/graph/l1;

    if-ne v5, v10, :cond_16

    .line 77
    iget-object v5, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v5}, Lcom/android/tools/r8/AssertionsConfiguration;->isAssertionHandler()Z

    move-result v5

    if-nez v5, :cond_16

    .line 78
    iget-object v5, v7, Lcom/android/tools/r8/ir/optimize/f;->e:Lcom/android/tools/r8/ir/optimize/e;

    .line 79
    iget-object v5, v5, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    .line 80
    invoke-virtual {v5}, Lcom/android/tools/r8/AssertionsConfiguration;->isCompileTimeDisabled()Z

    move-result v5

    xor-int/2addr v5, v0

    .line 81
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v10

    .line 82
    invoke-virtual {v8, v5, v10}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    .line 83
    invoke-interface {v2, v5, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 84
    :cond_16
    :goto_8
    iget-object v5, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v5}, Lcom/android/tools/r8/AssertionsConfiguration;->isAssertionHandler()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 85
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 86
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v4

    .line 87
    invoke-virtual {v12, v4}, Lcom/android/tools/r8/internal/Uc0;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 88
    invoke-virtual {v12, v4}, Lcom/android/tools/r8/internal/u1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v0

    .line 89
    sget-boolean v5, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v5, :cond_18

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    :goto_9
    invoke-static {v3}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->T()V

    .line 93
    iget-object v3, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 94
    iget-object v5, v3, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 95
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 96
    iput-object v6, v3, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 97
    new-instance v3, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    .line 98
    invoke-interface {v2, v3, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    move v3, v0

    .line 99
    :cond_19
    invoke-virtual {v14, v4}, Lcom/android/tools/r8/internal/Uc0;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 100
    invoke-virtual {v14, v4}, Lcom/android/tools/r8/internal/u1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v0

    .line 101
    sget-boolean v5, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v5, :cond_1b

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_a

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_1b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    :goto_a
    invoke-static {v3}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->T()V

    .line 105
    iget-object v3, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 106
    iget-object v5, v3, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 107
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 108
    iput-object v6, v3, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 109
    new-instance v3, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    .line 110
    invoke-interface {v2, v3, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    move v3, v0

    goto/16 :goto_3

    .line 111
    :cond_1c
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 112
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->R0()Lcom/android/tools/r8/internal/Or0;

    move-result-object v4

    .line 113
    invoke-virtual {v13, v4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 114
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    .line 115
    new-instance v10, Lcom/android/tools/r8/internal/gK;

    iget-object v11, v7, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    .line 116
    sget-boolean v15, Lcom/android/tools/r8/ir/optimize/e;->c:Z

    if-nez v15, :cond_1e

    .line 117
    iget-object v15, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v15}, Lcom/android/tools/r8/AssertionsConfiguration;->isAssertionHandler()Z

    move-result v15

    if-eqz v15, :cond_1d

    goto :goto_b

    .line 118
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_1e
    :goto_b
    iget-object v15, v9, Lcom/android/tools/r8/ir/optimize/e;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v15}, Lcom/android/tools/r8/AssertionsConfiguration;->getAssertionHandler()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v15

    .line 120
    invoke-virtual {v11, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    .line 121
    iget-object v15, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    .line 122
    sget v16, Lcom/android/tools/r8/internal/hC;->c:I

    .line 123
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, v15}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 124
    invoke-direct {v10, v11, v6, v0}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 125
    invoke-interface {v2, v10, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 126
    new-instance v0, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    .line 127
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 128
    invoke-virtual {v13, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 129
    invoke-interface {v2, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_1f
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_20
    return v3
.end method

.method public final a(Lcom/android/tools/r8/internal/hw;)Z
    .locals 2

    .line 180
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->K0:Lcom/android/tools/r8/graph/L2;

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/f;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
