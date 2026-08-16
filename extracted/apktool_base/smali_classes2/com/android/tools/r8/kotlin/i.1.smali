.class public final Lcom/android/tools/r8/kotlin/i;
.super Lcom/android/tools/r8/kotlin/m;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/kotlin/i;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/kotlin/i;

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/i;-><init>(Lcom/android/tools/r8/internal/hC;)V

    sput-object v0, Lcom/android/tools/r8/kotlin/i;->c:Lcom/android/tools/r8/kotlin/i;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/kotlin/m;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/i;->b:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/JP$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/i;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JP$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/kotlin/i;->c:Lcom/android/tools/r8/kotlin/i;

    return-object p0

    .line 3
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JP$a;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/JP;

    .line 6
    invoke-static {v2, p1}, Lcom/android/tools/r8/kotlin/m;->a(Lcom/android/tools/r8/internal/JP;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/m;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v1, 0x1

    .line 8
    array-length v4, v0

    if-ge v4, v3, :cond_1

    .line 9
    array-length v4, v0

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 10
    :cond_1
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 11
    :cond_2
    new-instance p0, Lcom/android/tools/r8/kotlin/i;

    .line 12
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/android/tools/r8/kotlin/i;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object p0
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/JP;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/i;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/kotlin/m;

    .line 15
    invoke-interface {v1, p1}, Lcom/android/tools/r8/shaking/f0;->a(Lcom/android/tools/r8/graph/d1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/i;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/kotlin/m;

    new-instance v4, Lcom/android/tools/r8/kotlin/W3;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/kotlin/W3;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4, p2}, Lcom/android/tools/r8/kotlin/m;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/JP$a;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/JP$a;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v2
.end method
