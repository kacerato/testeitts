.class public Lcom/android/tools/r8/internal/M6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/graph/x0;

.field public final c:Lcom/android/tools/r8/internal/hC;

.field public final d:Lcom/android/tools/r8/internal/nC;

.field public final e:Ljava/nio/file/Path;

.field public f:Ljava/util/ArrayList;

.field public g:Lcom/android/tools/r8/internal/K6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/x0;Ljava/nio/file/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    iput-object p2, p0, Lcom/android/tools/r8/internal/M6;->b:Lcom/android/tools/r8/graph/x0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/M6;->e:Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/android/tools/r8/internal/M6;->b(Lcom/android/tools/r8/graph/x0;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/M6;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/tools/r8/internal/M6;->b(Lcom/android/tools/r8/graph/x0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/M6;->a(Lcom/android/tools/r8/graph/x0;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/M6;->c:Lcom/android/tools/r8/internal/hC;

    new-instance p1, Lcom/android/tools/r8/internal/kC;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/M6;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/android/tools/r8/internal/M6;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/H2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/M6;->d:Lcom/android/tools/r8/internal/nC;

    return-void

    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Bisecting application classes do not match classes in reference APK"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)I
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/graph/n5;->a(Lcom/android/tools/r8/graph/n5;Lcom/android/tools/r8/naming/r0;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;)Ljava/util/ArrayList;
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    new-instance p0, Lcom/android/tools/r8/internal/rM0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/rM0;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static b(Lcom/android/tools/r8/graph/x0;)Ljava/lang/String;
    .locals 4

    .line 21
    invoke-static {p0}, Lcom/android/tools/r8/internal/M6;->a(Lcom/android/tools/r8/graph/x0;)Ljava/util/ArrayList;

    move-result-object p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 24
    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 27
    :cond_0
    sget p0, Lcom/android/tools/r8/internal/pA;->a:I

    .line 28
    sget-object p0, Lcom/android/tools/r8/internal/oA;->a:Lcom/android/tools/r8/internal/hW;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/ec;->a:Ljava/nio/charset/Charset;

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hW;->a()Lcom/android/tools/r8/internal/lA;

    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/tools/r8/internal/F;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/F;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/tools/r8/internal/lA;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/lA;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gA;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/x0;
    .locals 10

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/internal/M6;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/K6;

    invoke-direct {v0, v2, v2}, Lcom/android/tools/r8/internal/K6;-><init>(II)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    goto/16 :goto_5

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/K6;

    iget-object v3, p0, Lcom/android/tools/r8/internal/M6;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/tools/r8/internal/K6;-><init>(II)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    goto/16 :goto_5

    .line 19
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/K6;

    invoke-direct {v0, v2, v2}, Lcom/android/tools/r8/internal/K6;-><init>(II)V

    .line 20
    iget-object v4, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_13

    .line 21
    iget-object v5, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/L6;

    .line 22
    iget-boolean v6, v5, Lcom/android/tools/r8/internal/L6;->a:Z

    if-nez v6, :cond_12

    .line 23
    iget-object v4, v5, Lcom/android/tools/r8/internal/L6;->b:Lcom/android/tools/r8/internal/K6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget v5, v0, Lcom/android/tools/r8/internal/K6;->a:I

    .line 25
    iget v6, v0, Lcom/android/tools/r8/internal/K6;->b:I

    if-ne v5, v6, :cond_4

    goto :goto_4

    .line 26
    :cond_4
    sget-boolean v7, Lcom/android/tools/r8/internal/K6;->c:Z

    if-nez v7, :cond_6

    iget v8, v4, Lcom/android/tools/r8/internal/K6;->a:I

    if-gt v8, v5, :cond_5

    iget v8, v4, Lcom/android/tools/r8/internal/K6;->b:I

    if-gt v6, v8, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_6
    :goto_2
    iget v8, v4, Lcom/android/tools/r8/internal/K6;->a:I

    if-ne v8, v5, :cond_7

    .line 28
    new-instance v5, Lcom/android/tools/r8/internal/K6;

    iget v0, v0, Lcom/android/tools/r8/internal/K6;->b:I

    iget v4, v4, Lcom/android/tools/r8/internal/K6;->b:I

    invoke-direct {v5, v0, v4}, Lcom/android/tools/r8/internal/K6;-><init>(II)V

    move-object v4, v5

    goto :goto_4

    :cond_7
    if-nez v7, :cond_9

    .line 29
    iget v0, v4, Lcom/android/tools/r8/internal/K6;->b:I

    if-ne v0, v6, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_9
    :goto_3
    new-instance v4, Lcom/android/tools/r8/internal/K6;

    invoke-direct {v4, v8, v5}, Lcom/android/tools/r8/internal/K6;-><init>(II)V

    .line 31
    :goto_4
    iget v0, v4, Lcom/android/tools/r8/internal/K6;->a:I

    iget v5, v4, Lcom/android/tools/r8/internal/K6;->b:I

    if-eq v0, v5, :cond_11

    sub-int/2addr v5, v0

    if-ne v5, v3, :cond_a

    .line 32
    iput-object v4, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    return-object v1

    .line 33
    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last bad range: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    iget v0, v4, Lcom/android/tools/r8/internal/K6;->b:I

    iget v3, v4, Lcom/android/tools/r8/internal/K6;->a:I

    sub-int/2addr v0, v3

    .line 35
    div-int/lit8 v0, v0, 0x2

    .line 36
    new-instance v4, Lcom/android/tools/r8/internal/K6;

    add-int/2addr v0, v3

    invoke-direct {v4, v3, v0}, Lcom/android/tools/r8/internal/K6;-><init>(II)V

    .line 37
    iput-object v4, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    .line 38
    :goto_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v3, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next bisection range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v3, p0, Lcom/android/tools/r8/internal/M6;->b:Lcom/android/tools/r8/graph/x0;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 41
    iget-object v6, p0, Lcom/android/tools/r8/internal/M6;->d:Lcom/android/tools/r8/internal/nC;

    iget-object v7, v5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_c

    .line 42
    iget-object v7, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 43
    iget v9, v7, Lcom/android/tools/r8/internal/K6;->a:I

    if-gt v9, v8, :cond_b

    .line 44
    iget v7, v7, Lcom/android/tools/r8/internal/K6;->b:I

    if-ge v8, v7, :cond_b

    goto :goto_7

    .line 45
    :cond_b
    iget-object v7, p0, Lcom/android/tools/r8/internal/M6;->c:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H2;

    goto :goto_8

    :cond_c
    :goto_7
    move-object v6, v1

    :goto_8
    if-eqz v6, :cond_d

    .line 46
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 47
    :cond_d
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-boolean v5, Lcom/android/tools/r8/internal/M6;->h:Z

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    .line 49
    iget v6, v5, Lcom/android/tools/r8/internal/K6;->a:I

    .line 50
    iget v5, v5, Lcom/android/tools/r8/internal/K6;->b:I

    if-eq v6, v5, :cond_e

    goto :goto_9

    .line 51
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 52
    :cond_10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class split is good: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bad: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/android/tools/r8/internal/M6;->b:Lcom/android/tools/r8/graph/x0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/x0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/w0;->b()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    return-object v0

    .line 54
    :cond_11
    new-instance v0, Lcom/android/tools/r8/internal/If;

    const-string v1, "Bad range is empty. Cannot continue bisecting :-("

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_12
    iget-object v5, v5, Lcom/android/tools/r8/internal/L6;->b:Lcom/android/tools/r8/internal/K6;

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/K6;->a(Lcom/android/tools/r8/internal/K6;)Lcom/android/tools/r8/internal/K6;

    move-result-object v0

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    .line 56
    :cond_13
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Did not find any bad range in bisection state"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/android/tools/r8/internal/I6;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/M6;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    new-instance v2, Lcom/android/tools/r8/internal/K6;

    invoke-direct {v2, v1, v1}, Lcom/android/tools/r8/internal/K6;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/K6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/internal/I6;->c:Lcom/android/tools/r8/internal/I6;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected good state for reference application run, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/M6;->h:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    new-instance v2, Lcom/android/tools/r8/internal/K6;

    iget-object v3, p0, Lcom/android/tools/r8/internal/M6;->d:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/K6;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/K6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_5
    :goto_2
    sget-object v0, Lcom/android/tools/r8/internal/I6;->d:Lcom/android/tools/r8/internal/I6;

    if-ne p1, v0, :cond_6

    goto :goto_3

    .line 9
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected bad state for input application run, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/L6;

    iget-object v2, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/internal/L6;-><init>(Lcom/android/tools/r8/internal/I6;Lcom/android/tools/r8/internal/K6;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marked range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    return-void

    .line 13
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string v0, "Invalid bisection state. Could not find information on previous runs."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/M6;->e:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M6;->e:Ljava/nio/file/Path;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assuming initial run for non-existent state file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/M6;->e:Ljava/nio/file/Path;

    invoke-static {v2}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v2

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/M6;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return-void

    .line 13
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    .line 14
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/internal/L6;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/L6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/K6;

    .line 17
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/K6;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    return-void

    .line 19
    :cond_5
    :try_start_1
    new-instance v0, Lcom/android/tools/r8/internal/If;

    const-string v1, "Bisection state file does not match the reference build signature"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_6

    .line 20
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v0
.end method

.method public c()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\n"

    iget-object v1, p0, Lcom/android/tools/r8/internal/M6;->e:Ljava/nio/file/Path;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/M6;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/M6;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/L6;

    iget-boolean v6, v5, Lcom/android/tools/r8/internal/L6;->a:Z

    if-eqz v6, :cond_1

    const-string v6, "good"

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v6, "bad"

    :goto_1
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(I)V

    iget-object v5, v5, Lcom/android/tools/r8/internal/L6;->b:Lcom/android/tools/r8/internal/K6;

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/K6;->a(Ljava/io/BufferedWriter;)V

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/K6;->a(Ljava/io/BufferedWriter;)V

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-void

    :goto_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
.end method
