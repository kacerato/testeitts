.class public final Lcom/android/tools/r8/kotlin/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final i:Lcom/android/tools/r8/internal/Xe0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/yQ;

.field public final b:Lcom/android/tools/r8/kotlin/x;

.field public final c:Lcom/android/tools/r8/kotlin/p0;

.field public final d:Lcom/android/tools/r8/kotlin/p0;

.field public final e:Lcom/android/tools/r8/internal/hC;

.field public final f:Lcom/android/tools/r8/internal/hC;

.field public final g:Lcom/android/tools/r8/kotlin/J;

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/kotlin/p0;->i:Lcom/android/tools/r8/internal/Xe0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/yQ;Lcom/android/tools/r8/kotlin/x;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/J;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/p0;->a:Lcom/android/tools/r8/internal/yQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/p0;->b:Lcom/android/tools/r8/kotlin/x;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/p0;->c:Lcom/android/tools/r8/kotlin/p0;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/p0;->d:Lcom/android/tools/r8/kotlin/p0;

    iput-object p5, p0, Lcom/android/tools/r8/kotlin/p0;->e:Lcom/android/tools/r8/internal/hC;

    iput-object p6, p0, Lcom/android/tools/r8/kotlin/p0;->f:Lcom/android/tools/r8/internal/hC;

    iput-object p7, p0, Lcom/android/tools/r8/kotlin/p0;->g:Lcom/android/tools/r8/kotlin/J;

    iput-boolean p8, p0, Lcom/android/tools/r8/kotlin/p0;->h:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;
    .locals 10

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v9, Lcom/android/tools/r8/kotlin/p0;

    iget-object v0, p2, Lcom/android/tools/r8/internal/yQ;->b:Lcom/android/tools/r8/internal/cQ;

    .line 2
    instance-of v1, v0, Lcom/android/tools/r8/internal/cQ$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    check-cast v0, Lcom/android/tools/r8/internal/cQ$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cQ$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 6
    :goto_0
    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    new-instance v0, Lcom/android/tools/r8/kotlin/s;

    .line 9
    invoke-static {v3, p0, v3, v2}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Z)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v3

    .line 10
    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/kotlin/s;-><init>(Lcom/android/tools/r8/kotlin/s0;Z)V

    move-object v3, v0

    goto :goto_2

    .line 11
    :cond_2
    new-instance v1, Lcom/android/tools/r8/kotlin/v;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/v;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v3, v1

    goto :goto_2

    .line 12
    :cond_3
    instance-of v1, v0, Lcom/android/tools/r8/internal/cQ$b;

    if-eqz v1, :cond_4

    .line 13
    new-instance v1, Lcom/android/tools/r8/kotlin/t;

    check-cast v0, Lcom/android/tools/r8/internal/cQ$b;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cQ$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/t;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_4
    instance-of v1, v0, Lcom/android/tools/r8/internal/cQ$c;

    if-eqz v1, :cond_5

    .line 15
    new-instance v1, Lcom/android/tools/r8/kotlin/u;

    check-cast v0, Lcom/android/tools/r8/internal/cQ$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cQ$c;->a()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/u;-><init>(I)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/kotlin/T;->a(Ljava/lang/String;)Lcom/android/tools/r8/kotlin/T;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 17
    new-instance v1, Lcom/android/tools/r8/kotlin/w;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/w;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v4

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yQ;->e()Lcom/android/tools/r8/internal/yQ;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v5

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yQ;->b()Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    sget-object v0, Lcom/android/tools/r8/kotlin/p0;->i:Lcom/android/tools/r8/internal/Xe0;

    :goto_3
    move-object v6, v0

    goto :goto_5

    .line 23
    :cond_6
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v1, 0x4

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/DQ;

    .line 26
    new-instance v7, Lcom/android/tools/r8/kotlin/r0;

    .line 27
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/DQ;->b()Lcom/android/tools/r8/internal/FQ;

    move-result-object v8

    .line 28
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/DQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object v6

    invoke-static {p0, p1, v6}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lcom/android/tools/r8/kotlin/r0;-><init>(Lcom/android/tools/r8/internal/FQ;Lcom/android/tools/r8/kotlin/p0;)V

    add-int/lit8 v6, v2, 0x1

    .line 29
    array-length v8, v1

    if-ge v8, v6, :cond_7

    .line 30
    array-length v8, v1

    invoke-static {v8, v6}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 31
    :cond_7
    aput-object v7, v1, v2

    move v2, v6

    goto :goto_4

    .line 32
    :cond_8
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    goto :goto_3

    .line 33
    :goto_5
    invoke-static {p2}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/yQ;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/tools/r8/kotlin/n;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yQ;->d()Lcom/android/tools/r8/internal/oQ;

    move-result-object v0

    if-nez v0, :cond_9

    .line 35
    sget-object p0, Lcom/android/tools/r8/kotlin/J;->c:Lcom/android/tools/r8/kotlin/J;

    goto :goto_6

    .line 36
    :cond_9
    new-instance v1, Lcom/android/tools/r8/kotlin/J;

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/oQ;->b()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/oQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/android/tools/r8/kotlin/J;-><init>(Ljava/lang/String;Lcom/android/tools/r8/kotlin/p0;)V

    move-object p0, v1

    .line 39
    :goto_6
    invoke-static {p2}, Lcom/android/tools/r8/internal/BL;->b(Lcom/android/tools/r8/internal/yQ;)Z

    move-result v8

    move-object v0, v9

    move-object v1, p2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/kotlin/p0;-><init>(Lcom/android/tools/r8/internal/yQ;Lcom/android/tools/r8/kotlin/x;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/J;Z)V

    return-object v9
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/n;)Ljava/util/function/Consumer;
    .locals 1

    .line 49
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/z4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/z4;-><init>(Lcom/android/tools/r8/kotlin/n;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/r0;)Ljava/util/function/Consumer;
    .locals 1

    .line 48
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/G4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/G4;-><init>(Lcom/android/tools/r8/kotlin/r0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/p0;->b:Lcom/android/tools/r8/kotlin/x;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/shaking/f0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/p0;->c:Lcom/android/tools/r8/kotlin/p0;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/p0;->d:Lcom/android/tools/r8/kotlin/p0;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/p0;->e:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/H4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/H4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/p0;->g:Lcom/android/tools/r8/kotlin/J;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/J;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/p0;->f:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/I4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/I4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/yQ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/yQ;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/p0;->a:Lcom/android/tools/r8/internal/yQ;

    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    sget-object v2, Lcom/android/tools/r8/internal/i5;->V:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x2e

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    sget-object v2, Lcom/android/tools/r8/internal/i5;->W:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x2f

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    sget-object v2, Lcom/android/tools/r8/internal/i5;->X:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x30

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p1

    aget-object v1, v1, v3

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/p0;->b:Lcom/android/tools/r8/kotlin/x;

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/kotlin/x;->a(Lcom/android/tools/r8/internal/yQ;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/p0;->c:Lcom/android/tools/r8/kotlin/p0;

    new-instance v2, Lcom/android/tools/r8/kotlin/C4;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/C4;-><init>(Lcom/android/tools/r8/internal/yQ;)V

    new-instance v3, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    invoke-static {p2, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v1

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/p0;->d:Lcom/android/tools/r8/kotlin/p0;

    new-instance v2, Lcom/android/tools/r8/kotlin/D4;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/D4;-><init>(Lcom/android/tools/r8/internal/yQ;)V

    new-instance v3, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    invoke-static {p2, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v1

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/p0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yQ;->b()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/kotlin/E4;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/E4;-><init>()V

    invoke-static {p2, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v1

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/p0;->g:Lcom/android/tools/r8/kotlin/J;

    new-instance v2, Lcom/android/tools/r8/kotlin/F4;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/F4;-><init>(Lcom/android/tools/r8/internal/yQ;)V

    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/kotlin/J;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/p0;->f:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/tools/r8/kotlin/p0;->h:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/p0;->f:Lcom/android/tools/r8/internal/hC;

    invoke-static {v0}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/yQ;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/kotlin/y4;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/y4;-><init>()V

    invoke-static {p2, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p2

    or-int/2addr p1, p2

    iget-boolean p2, p0, Lcom/android/tools/r8/kotlin/p0;->h:Z

    invoke-static {v0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/sM;

    move-result-object v0

    iput-boolean p2, v0, Lcom/android/tools/r8/internal/sM;->a:Z

    return p1
.end method
