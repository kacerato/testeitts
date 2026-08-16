.class public final Lcom/android/tools/r8/kotlin/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/zQ;

.field public final b:Lcom/android/tools/r8/kotlin/p0;

.field public final c:Lcom/android/tools/r8/kotlin/p0;

.field public final d:Lcom/android/tools/r8/internal/hC;

.field public final e:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/zQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/o0;->a:Lcom/android/tools/r8/internal/zQ;

    sget-boolean p1, Lcom/android/tools/r8/kotlin/o0;->f:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/android/tools/r8/kotlin/o0;->b:Lcom/android/tools/r8/kotlin/p0;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/o0;->c:Lcom/android/tools/r8/kotlin/p0;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/o0;->d:Lcom/android/tools/r8/internal/hC;

    iput-object p5, p0, Lcom/android/tools/r8/kotlin/o0;->e:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/n;)Ljava/util/function/Consumer;
    .locals 1

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/z4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/z4;-><init>(Lcom/android/tools/r8/kotlin/n;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/q0;)Ljava/util/function/Consumer;
    .locals 1

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/X0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/X0;-><init>(Lcom/android/tools/r8/kotlin/q0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o0;->b:Lcom/android/tools/r8/kotlin/p0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o0;->c:Lcom/android/tools/r8/kotlin/p0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o0;->d:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/A4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/A4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o0;->e:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/B4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/B4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/zQ;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/o0;->a:Lcom/android/tools/r8/internal/zQ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zQ;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/zQ;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/o0;->a:Lcom/android/tools/r8/internal/zQ;

    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    sget-object v2, Lcom/android/tools/r8/internal/i5;->h:Lcom/android/tools/r8/internal/Y6;

    const/4 v3, 0x6

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    sget-object v2, Lcom/android/tools/r8/internal/i5;->Z:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x32

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ax0;

    const-string v4, "<set-?>"

    invoke-static {p1, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v1, v1, v3

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/o0;->b:Lcom/android/tools/r8/kotlin/p0;

    new-instance v1, Lcom/android/tools/r8/kotlin/w4;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/w4;-><init>(Lcom/android/tools/r8/internal/zQ;)V

    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/kotlin/p0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/o0;->c:Lcom/android/tools/r8/kotlin/p0;

    new-instance v2, Lcom/android/tools/r8/kotlin/x4;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/x4;-><init>(Lcom/android/tools/r8/internal/zQ;)V

    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/kotlin/p0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/o0;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zQ;->c()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/kotlin/e1;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/e1;-><init>()V

    invoke-static {p2, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v1

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/o0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zQ;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/kotlin/y4;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/y4;-><init>()V

    invoke-static {p2, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p2

    or-int/2addr p1, p2

    iget-object p2, v0, Lcom/android/tools/r8/internal/zQ;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o0;->a:Lcom/android/tools/r8/internal/zQ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zQ;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return p1
.end method
