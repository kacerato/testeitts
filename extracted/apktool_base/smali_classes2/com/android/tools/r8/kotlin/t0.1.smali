.class public final Lcom/android/tools/r8/kotlin/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final d:Lcom/android/tools/r8/internal/Xe0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/EQ;

.field public final b:Lcom/android/tools/r8/kotlin/p0;

.field public final c:Lcom/android/tools/r8/kotlin/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/kotlin/t0;->d:Lcom/android/tools/r8/internal/Xe0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/EQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/t0;->a:Lcom/android/tools/r8/internal/EQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/t0;->b:Lcom/android/tools/r8/kotlin/p0;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/t0;->c:Lcom/android/tools/r8/kotlin/p0;

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/kotlin/t0;->d:Lcom/android/tools/r8/internal/Xe0;

    return-object p0

    .line 3
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/EQ;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/EQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object v3

    .line 7
    new-instance v4, Lcom/android/tools/r8/kotlin/t0;

    .line 8
    invoke-static {p1, p2, v3}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/EQ;->b()Lcom/android/tools/r8/internal/yQ;

    move-result-object v5

    invoke-static {p1, p2, v5}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lcom/android/tools/r8/kotlin/t0;-><init>(Lcom/android/tools/r8/internal/EQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;)V

    move-object v2, v4

    .line 10
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v1, 0x1

    .line 11
    array-length v4, v0

    if-ge v4, v3, :cond_2

    .line 12
    array-length v4, v0

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 13
    :cond_2
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/t0;->b:Lcom/android/tools/r8/kotlin/p0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/t0;->c:Lcom/android/tools/r8/kotlin/p0;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/EQ;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/t0;->a:Lcom/android/tools/r8/internal/EQ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/EQ;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/EQ;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/t0;->a:Lcom/android/tools/r8/internal/EQ;

    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    const-string v2, "<this>"

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/tools/r8/internal/i5;->g:Lcom/android/tools/r8/internal/Y6;

    const/4 v3, 0x5

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    invoke-static {p1}, Lcom/android/tools/r8/internal/i5;->a(Lcom/android/tools/r8/internal/EQ;)Z

    move-result v2

    sget-object v3, Lcom/android/tools/r8/internal/i5;->a0:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x33

    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    sget-object v2, Lcom/android/tools/r8/internal/i5;->b0:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x34

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    sget-object v2, Lcom/android/tools/r8/internal/i5;->c0:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x35

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p1

    aget-object v1, v1, v3

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/t0;->b:Lcom/android/tools/r8/kotlin/p0;

    new-instance v1, Lcom/android/tools/r8/kotlin/O4;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/O4;-><init>(Lcom/android/tools/r8/internal/EQ;)V

    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/kotlin/p0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/t0;->c:Lcom/android/tools/r8/kotlin/p0;

    new-instance v2, Lcom/android/tools/r8/kotlin/P4;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/P4;-><init>(Lcom/android/tools/r8/internal/EQ;)V

    new-instance v0, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v0}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    invoke-static {p2, v1, v2, v0}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method
