.class public abstract Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/util/TreeMap;

.field public final b:Ljava/util/TreeMap;

.field public final c:Ljava/util/TreeMap;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/tools/r8/graph/md;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/md;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/tools/r8/graph/I9;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/I9;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->b:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/tools/r8/graph/I9;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/I9;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->c:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->d:Ljava/lang/String;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/L4;)Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v1, "protected"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    sget-boolean v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->f:Z

    if-eqz v1, :cond_2

    .line 41
    const-string v1, "private"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 43
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    sget-boolean v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->f:Z

    if-eqz v1, :cond_4

    .line 45
    const-string v1, "/* package */"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 47
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 48
    const-string v1, "abstract"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50
    const-string v1, "static"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 52
    const-string p0, "final"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_8
    const-string p0, " "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/k3;)Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const-string v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    const-string v1, "protected"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    sget-boolean v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->f:Z

    if-eqz v1, :cond_2

    .line 23
    const-string v1, "private"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 25
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    sget-boolean v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->f:Z

    if-eqz v1, :cond_4

    .line 27
    const-string v1, "/* package */"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 29
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    const-string v1, "static"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 32
    const-string p0, "final"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_7
    const-string p0, " "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/j1;)Ljava/lang/String;
    .locals 13

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/high16 v5, 0x10000

    .line 57
    iget v2, v2, Lcom/android/tools/r8/graph/g;->c:I

    .line 58
    invoke-static {v2, v5}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 59
    :goto_1
    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v5, v0

    move v6, v3

    move v8, v6

    move v7, v4

    :goto_2
    if-ge v6, v5, :cond_b

    aget-object v9, v0, v6

    if-nez v7, :cond_2

    .line 61
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G;->F0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/G$a;

    .line 65
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G$a;->b()I

    move-result v12

    if-ne v12, v2, :cond_3

    .line 66
    sget-boolean v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->f:Z

    if-nez v7, :cond_5

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G$a;->c()Lcom/android/tools/r8/graph/j0;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v12, "this"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_5
    :goto_4
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G$a;->c()Lcom/android/tools/r8/graph/j0;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 68
    :cond_6
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 69
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 70
    :cond_7
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 71
    :goto_5
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 72
    :cond_8
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 73
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 74
    :cond_9
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    :goto_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " p"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    :goto_7
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    goto :goto_8

    :cond_a
    move v7, v4

    :goto_8
    add-int/2addr v2, v7

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v3

    goto/16 :goto_2

    .line 77
    :cond_b
    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->e:Ljava/lang/String;

    .line 7
    invoke-static {p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 10
    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 13
    const-string v0, "java.lang"

    invoke-static {p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 14
    const-string v0, "java.util.function"

    invoke-static {p1, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    const/16 v0, 0x24

    .line 15
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
