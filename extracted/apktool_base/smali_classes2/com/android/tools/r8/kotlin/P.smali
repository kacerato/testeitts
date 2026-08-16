.class public final Lcom/android/tools/r8/kotlin/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final b:Lcom/android/tools/r8/kotlin/P;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/kotlin/P;

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/P;-><init>(Lcom/android/tools/r8/internal/hC;)V

    sput-object v0, Lcom/android/tools/r8/kotlin/P;->b:Lcom/android/tools/r8/kotlin/P;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/P;->a:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/P;
    .locals 5

    if-eqz p0, :cond_9

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/vQ;

    .line 5
    invoke-static {v2, p1, p2}, Lcom/android/tools/r8/kotlin/a;->a(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/a;

    move-result-object v2

    .line 6
    sget-boolean v3, Lcom/android/tools/r8/kotlin/P;->c:Z

    if-nez v3, :cond_2

    .line 7
    iget-object v4, v2, Lcom/android/tools/r8/kotlin/a;->f:Lcom/android/tools/r8/kotlin/L;

    if-nez v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    if-nez v3, :cond_4

    .line 9
    iget-object v4, v2, Lcom/android/tools/r8/kotlin/a;->g:Lcom/android/tools/r8/kotlin/N;

    if-nez v4, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_2
    if-nez v3, :cond_6

    .line 11
    iget-object v3, v2, Lcom/android/tools/r8/kotlin/a;->h:Lcom/android/tools/r8/kotlin/N;

    if-nez v3, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_3
    add-int/lit8 v3, v1, 0x1

    .line 13
    array-length v4, v0

    if-ge v4, v3, :cond_7

    .line 14
    array-length v4, v0

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 15
    :cond_7
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 16
    :cond_8
    new-instance p0, Lcom/android/tools/r8/kotlin/P;

    .line 17
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/android/tools/r8/kotlin/P;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object p0

    .line 19
    :cond_9
    :goto_4
    sget-object p0, Lcom/android/tools/r8/kotlin/P;->b:Lcom/android/tools/r8/kotlin/P;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/h0;)Ljava/util/function/Consumer;
    .locals 1

    .line 20
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/z0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/z0;-><init>(Lcom/android/tools/r8/kotlin/h0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/P;->a:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/k1;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/k1;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/P;->a:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/E0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/E0;-><init>()V

    invoke-static {p2, v0, p1, v1}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p1

    return p1
.end method
