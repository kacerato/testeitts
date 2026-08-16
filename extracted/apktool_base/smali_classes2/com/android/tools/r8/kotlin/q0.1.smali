.class public final Lcom/android/tools/r8/kotlin/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final d:Lcom/android/tools/r8/internal/Xe0;

.field public static final e:Lcom/android/tools/r8/internal/Xe0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/BQ;

.field public final b:Lcom/android/tools/r8/internal/hC;

.field public final c:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/kotlin/q0;->d:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/kotlin/q0;->e:Lcom/android/tools/r8/internal/Xe0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/BQ;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/q0;->a:Lcom/android/tools/r8/internal/BQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/q0;->b:Lcom/android/tools/r8/internal/hC;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/q0;->c:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;
    .locals 12

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/kotlin/q0;->d:Lcom/android/tools/r8/internal/Xe0;

    return-object p0

    .line 3
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/BQ;

    .line 6
    new-instance v5, Lcom/android/tools/r8/kotlin/q0;

    .line 7
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/BQ;->c()Ljava/util/List;

    move-result-object v6

    .line 8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    sget-object v6, Lcom/android/tools/r8/kotlin/q0;->e:Lcom/android/tools/r8/internal/Xe0;

    goto :goto_2

    .line 10
    :cond_1
    sget v7, Lcom/android/tools/r8/internal/hC;->c:I

    .line 11
    new-array v7, v0, [Ljava/lang/Object;

    .line 12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/yQ;

    .line 13
    invoke-static {p1, p2, v9}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v9

    .line 14
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v10, v8, 0x1

    .line 15
    array-length v11, v7

    if-ge v11, v10, :cond_2

    .line 16
    array-length v11, v7

    invoke-static {v11, v10}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v11

    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    .line 17
    :cond_2
    aput-object v9, v7, v8

    move v8, v10

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {v8, v7}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    .line 19
    :goto_2
    sget-object v7, Lcom/android/tools/r8/internal/tM;->b:Lcom/android/tools/r8/internal/nQ;

    .line 20
    const-string v8, "type"

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v8, v4, Lcom/android/tools/r8/internal/BQ;->f:Ljava/util/ArrayList;

    .line 22
    invoke-static {v8, v7}, Lcom/android/tools/r8/internal/tv;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/nQ;)Lcom/android/tools/r8/internal/mQ;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/CQ;

    .line 23
    check-cast v7, Lcom/android/tools/r8/internal/tM;

    .line 24
    iget-object v7, v7, Lcom/android/tools/r8/internal/tM;->a:Ljava/util/ArrayList;

    .line 25
    invoke-static {v7, p1}, Lcom/android/tools/r8/kotlin/n;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7}, Lcom/android/tools/r8/kotlin/q0;-><init>(Lcom/android/tools/r8/internal/BQ;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V

    add-int/lit8 v4, v3, 0x1

    .line 26
    array-length v6, v1

    if-ge v6, v4, :cond_4

    .line 27
    array-length v6, v1

    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 28
    :cond_4
    aput-object v5, v1, v3

    move v3, v4

    goto :goto_0

    .line 29
    :cond_5
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/n;)Ljava/util/function/Consumer;
    .locals 1

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/z4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/z4;-><init>(Lcom/android/tools/r8/kotlin/n;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/p0;)Ljava/util/function/Consumer;
    .locals 1

    .line 30
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/b1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/b1;-><init>(Lcom/android/tools/r8/kotlin/p0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/q0;->b:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/J4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/J4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/q0;->c:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/K4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/K4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/BQ;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/q0;->a:Lcom/android/tools/r8/internal/BQ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BQ;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/q0;->a:Lcom/android/tools/r8/internal/BQ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/BQ;->a()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/q0;->a:Lcom/android/tools/r8/internal/BQ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/BQ;->d()Lcom/android/tools/r8/internal/FQ;

    move-result-object v3

    const-string v4, "name"

    invoke-static {v1, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "variance"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/tools/r8/internal/BQ;-><init>(ILjava/lang/String;ILcom/android/tools/r8/internal/FQ;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/q0;->a:Lcom/android/tools/r8/internal/BQ;

    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    sget-object v2, Lcom/android/tools/r8/internal/i5;->Y:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x31

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p1

    aget-object v1, v1, v3

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/q0;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BQ;->c()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v2}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    invoke-static {p2, p1, v1, v2}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/q0;->c:Lcom/android/tools/r8/internal/hC;

    sget-object v2, Lcom/android/tools/r8/internal/tM;->b:Lcom/android/tools/r8/internal/nQ;

    const-string v3, "type"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/BQ;->f:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/tv;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/nQ;)Lcom/android/tools/r8/internal/mQ;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/CQ;

    check-cast v0, Lcom/android/tools/r8/internal/tM;

    iget-object v0, v0, Lcom/android/tools/r8/internal/tM;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/kotlin/y4;

    invoke-direct {v2}, Lcom/android/tools/r8/kotlin/y4;-><init>()V

    invoke-static {p2, v1, v0, v2}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method
