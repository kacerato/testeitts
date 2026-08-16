.class public final Lcom/android/tools/r8/kotlin/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/Xe0;

.field public static final f:Lcom/android/tools/r8/kotlin/D;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/jQ;

.field public final b:Lcom/android/tools/r8/kotlin/p0;

.field public final c:Lcom/android/tools/r8/internal/hC;

.field public final d:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/kotlin/D;->e:Lcom/android/tools/r8/internal/Xe0;

    new-instance v1, Lcom/android/tools/r8/kotlin/D;

    new-instance v2, Lcom/android/tools/r8/internal/jQ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/jQ;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0, v0}, Lcom/android/tools/r8/kotlin/D;-><init>(Lcom/android/tools/r8/internal/jQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V

    sput-object v1, Lcom/android/tools/r8/kotlin/D;->f:Lcom/android/tools/r8/kotlin/D;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/jQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/D;->a:Lcom/android/tools/r8/internal/jQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/D;->b:Lcom/android/tools/r8/kotlin/p0;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/D;->c:Lcom/android/tools/r8/internal/hC;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/D;->d:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;
    .locals 5

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object p0, Lcom/android/tools/r8/kotlin/D;->e:Lcom/android/tools/r8/internal/Xe0;

    return-object p0

    .line 11
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jQ;

    .line 14
    invoke-static {v2, p1, p2}, Lcom/android/tools/r8/kotlin/D;->a(Lcom/android/tools/r8/internal/jQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/D;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v1, 0x1

    .line 16
    array-length v4, v0

    if-ge v4, v3, :cond_1

    .line 17
    array-length v4, v0

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 18
    :cond_1
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/jQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/D;
    .locals 4

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/tools/r8/kotlin/D;->f:Lcom/android/tools/r8/kotlin/D;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/android/tools/r8/kotlin/D;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/jQ;->d:Lcom/android/tools/r8/internal/yQ;

    .line 4
    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/jQ;->e:Ljava/util/ArrayList;

    .line 6
    invoke-static {v2, p1, p2}, Lcom/android/tools/r8/kotlin/D;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/android/tools/r8/internal/jQ;->f:Ljava/util/ArrayList;

    .line 8
    invoke-static {v3, p1, p2}, Lcom/android/tools/r8/kotlin/D;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/tools/r8/kotlin/D;-><init>(Lcom/android/tools/r8/internal/jQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/D;)Ljava/util/function/Consumer;
    .locals 1

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/I0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/I0;-><init>(Lcom/android/tools/r8/kotlin/D;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/kotlin/D;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/I0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/I0;-><init>(Lcom/android/tools/r8/kotlin/D;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/android/tools/r8/kotlin/D;->f:Lcom/android/tools/r8/kotlin/D;

    if-ne p0, v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/D;->b:Lcom/android/tools/r8/kotlin/p0;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/D;->c:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/M0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/M0;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/D;->d:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/N0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/N0;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 5

    .line 2
    sget-object v0, Lcom/android/tools/r8/kotlin/D;->f:Lcom/android/tools/r8/kotlin/D;

    if-ne p0, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/jQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jQ;-><init>()V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/D;->a:Lcom/android/tools/r8/internal/jQ;

    .line 6
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 7
    sget-object v2, Lcom/android/tools/r8/internal/i5;->d0:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x36

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 8
    aget-object v3, v1, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 9
    sget-object v2, Lcom/android/tools/r8/internal/i5;->e0:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x37

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p1

    .line 10
    aget-object v1, v1, v3

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/D;->a:Lcom/android/tools/r8/internal/jQ;

    .line 12
    iget-object v1, p1, Lcom/android/tools/r8/internal/jQ;->b:Ljava/lang/Integer;

    .line 13
    iput-object v1, v0, Lcom/android/tools/r8/internal/jQ;->b:Ljava/lang/Integer;

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/jQ;->c:Lcom/android/tools/r8/internal/dQ;

    if-eqz p1, :cond_1

    .line 15
    iput-object p1, v0, Lcom/android/tools/r8/internal/jQ;->c:Lcom/android/tools/r8/internal/dQ;

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/D;->b:Lcom/android/tools/r8/kotlin/p0;

    .line 17
    new-instance v1, Lcom/android/tools/r8/kotlin/J0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/J0;-><init>(Lcom/android/tools/r8/internal/jQ;)V

    new-instance v2, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v2}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    .line 18
    invoke-static {p2, p1, v1, v2}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p1

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/D;->c:Lcom/android/tools/r8/internal/hC;

    .line 20
    iget-object v2, v0, Lcom/android/tools/r8/internal/jQ;->e:Ljava/util/ArrayList;

    .line 21
    new-instance v3, Lcom/android/tools/r8/kotlin/L0;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/L0;-><init>()V

    .line 22
    invoke-static {p2, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v1

    or-int/2addr p1, v1

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/D;->d:Lcom/android/tools/r8/internal/hC;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/jQ;->f:Ljava/util/ArrayList;

    .line 25
    new-instance v2, Lcom/android/tools/r8/kotlin/L0;

    invoke-direct {v2}, Lcom/android/tools/r8/kotlin/L0;-><init>()V

    .line 26
    invoke-static {p2, v1, v0, v2}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method
