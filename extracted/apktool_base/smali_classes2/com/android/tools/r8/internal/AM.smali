.class public final Lcom/android/tools/r8/internal/AM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/j;

.field public final b:Lcom/android/tools/r8/internal/EM;

.field public c:Lcom/android/tools/r8/internal/CM;

.field public d:Lcom/android/tools/r8/internal/zM;

.field public e:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/EM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AM;->a:Lcom/android/tools/r8/graph/j;

    iput-object p2, p0, Lcom/android/tools/r8/internal/AM;->b:Lcom/android/tools/r8/internal/EM;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CM;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zM;->a(Lcom/android/tools/r8/internal/CM;)Lcom/android/tools/r8/internal/BM;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/BM;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->e:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CM;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/WM;

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/mP;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/AM;->a:Lcom/android/tools/r8/graph/j;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 11
    iget-object v2, v0, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 12
    iget-object v2, v2, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mP;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/AM;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 15
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/tools/r8/internal/AM;->a(IILcom/android/tools/r8/internal/TH;)V

    return-void

    .line 16
    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/AM;->b:Lcom/android/tools/r8/internal/EM;

    iget-object v5, p0, Lcom/android/tools/r8/internal/AM;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 18
    iget-object v7, v0, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 19
    iget-object v7, v7, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 20
    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mP;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v6

    .line 22
    iget-object v7, v0, Lcom/android/tools/r8/internal/WM;->c:Lcom/android/tools/r8/internal/x40;

    .line 23
    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/internal/x40;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 25
    iget-object v0, v0, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    .line 26
    invoke-virtual {v4, v1, v0, v5}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/DO;Lcom/android/tools/r8/graph/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/AM;->a(ILcom/android/tools/r8/graph/E0;)V

    return-void

    .line 28
    :cond_2
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/tools/r8/internal/AM;->a(IILcom/android/tools/r8/internal/TH;)V

    return-void

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/AM;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 30
    iget-object v3, p0, Lcom/android/tools/r8/internal/AM;->b:Lcom/android/tools/r8/internal/EM;

    iget-object v4, p0, Lcom/android/tools/r8/internal/AM;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 32
    iget-object v6, v0, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 33
    iget-object v6, v6, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 34
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mP;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v5

    .line 36
    iget-object v6, v0, Lcom/android/tools/r8/internal/WM;->c:Lcom/android/tools/r8/internal/x40;

    .line 37
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/internal/x40;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 38
    iget-object v5, v0, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 39
    iget-object v5, v5, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    .line 40
    invoke-virtual {v3, v2, v5, v4}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/DO;Lcom/android/tools/r8/graph/j;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 41
    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/AM;->a(ILcom/android/tools/r8/graph/E0;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(IILcom/android/tools/r8/internal/TH;)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    .line 48
    iget v0, v0, Lcom/android/tools/r8/internal/CM;->i:I

    if-lt p1, v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    .line 50
    iget-object v0, v0, Lcom/android/tools/r8/internal/zM;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 51
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/TH;->c(I)I

    move-result v3

    .line 53
    iget-object v2, v2, Lcom/android/tools/r8/internal/zM;->b:Ljava/util/List;

    .line 54
    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/AM;->a(I)V

    :cond_1
    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/E0;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/internal/zM;->a:Ljava/util/List;

    .line 44
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CM;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/TH;

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/android/tools/r8/internal/AM;->a(ILcom/android/tools/r8/internal/TH;Lcom/android/tools/r8/graph/E0;I)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/TH;Lcom/android/tools/r8/graph/E0;I)V
    .locals 10

    .line 56
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 57
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/AM;->a(I)V

    return-void

    .line 58
    :cond_0
    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/TH;->c(I)I

    move-result v4

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->c:Lcom/android/tools/r8/internal/CM;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/LO;

    .line 60
    new-instance v8, Lcom/android/tools/r8/internal/U6;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    .line 61
    new-instance v9, Lcom/android/tools/r8/internal/Fy0;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v8

    move v5, p1

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/Fy0;-><init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/U6;IILcom/android/tools/r8/internal/TH;I)V

    .line 62
    iget-object v0, v0, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    .line 63
    new-instance v1, Lcom/android/tools/r8/internal/Gy0;

    invoke-direct {v1, p0, p3, v9}, Lcom/android/tools/r8/internal/Gy0;-><init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/tools/r8/internal/Hy0;

    invoke-direct {v2, p0, p3, v9}, Lcom/android/tools/r8/internal/Hy0;-><init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)V

    new-instance v3, Lcom/android/tools/r8/internal/Iy0;

    invoke-direct {v3, p0, p3, v9}, Lcom/android/tools/r8/internal/Iy0;-><init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)V

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/OO;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 65
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/U6;->c()Z

    move-result p3

    if-eqz p3, :cond_1

    add-int/lit8 p4, p4, -0x1

    .line 66
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/tools/r8/internal/AM;->a(IILcom/android/tools/r8/internal/TH;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/OO;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    sget-object v0, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    if-ne p3, v0, :cond_0

    .line 81
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Dy0;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/tools/r8/internal/Dy0;-><init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/OO;Ljava/util/function/Consumer;)V

    .line 83
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;)V

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/WO;)V
    .locals 1

    .line 129
    new-instance v0, Lcom/android/tools/r8/internal/Ey0;

    invoke-direct {v0, p0, p3}, Lcom/android/tools/r8/internal/Ey0;-><init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/WO;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/xO;)V
    .locals 1

    .line 94
    new-instance v0, Lcom/android/tools/r8/internal/Jy0;

    invoke-direct {v0, p0, p3}, Lcom/android/tools/r8/internal/Jy0;-><init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/xO;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/OO;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/G0;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->b:Lcom/android/tools/r8/internal/EM;

    .line 86
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    sget-boolean v0, Lcom/android/tools/r8/internal/EM;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/OO;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    sget-object v0, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/OO;->e()Lcom/android/tools/r8/internal/x40;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/internal/x40;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/OO;->d()Lcom/android/tools/r8/internal/IO;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/g;Lcom/android/tools/r8/internal/IO;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 93
    :goto_1
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/U6;IILcom/android/tools/r8/internal/TH;ILcom/android/tools/r8/graph/o0;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/U6;->d()Z

    const/4 p1, 0x1

    add-int/2addr p3, p1

    .line 68
    invoke-interface {p6}, Lcom/android/tools/r8/graph/o0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    invoke-interface {p6}, Lcom/android/tools/r8/graph/o0;->g0()Lcom/android/tools/r8/graph/G0;

    move-result-object v0

    .line 70
    iget-object p1, p1, Lcom/android/tools/r8/internal/zM;->b:Ljava/util/List;

    .line 71
    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/AM;->f:Z

    if-nez v0, :cond_2

    invoke-interface {p6}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 73
    invoke-interface {p6}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f1()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 74
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->d:Lcom/android/tools/r8/internal/zM;

    .line 75
    iput-boolean p1, v0, Lcom/android/tools/r8/internal/zM;->c:Z

    .line 76
    iget-object p1, v0, Lcom/android/tools/r8/internal/zM;->b:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_2
    invoke-interface {p6}, Lcom/android/tools/r8/graph/o0;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/android/tools/r8/internal/AM;->a(ILcom/android/tools/r8/internal/TH;Lcom/android/tools/r8/graph/E0;I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/WO;Lcom/android/tools/r8/graph/j1;)Z
    .locals 10

    .line 130
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->b:Lcom/android/tools/r8/internal/EM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AM;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    iget-object v2, p1, Lcom/android/tools/r8/internal/WO;->b:Lcom/android/tools/r8/internal/x40;

    .line 132
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/x40;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    .line 133
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/QO;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/tools/r8/internal/WO;->d:Lcom/android/tools/r8/internal/RO;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    sget-object v4, Lcom/android/tools/r8/internal/RO;->b:Lcom/android/tools/r8/internal/RO;

    if-ne v4, v2, :cond_0

    .line 136
    iget-object v2, p1, Lcom/android/tools/r8/internal/WO;->e:Lcom/android/tools/r8/internal/ZO;

    .line 137
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ZO;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    instance-of v2, v2, Lcom/android/tools/r8/internal/SO;

    if-eqz v2, :cond_0

    return v3

    .line 140
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 141
    iget-object v4, p1, Lcom/android/tools/r8/internal/WO;->d:Lcom/android/tools/r8/internal/RO;

    .line 142
    iget-object v4, v4, Lcom/android/tools/r8/internal/RO;->a:Lcom/android/tools/r8/internal/vP;

    .line 143
    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/vP;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    .line 144
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Y0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 145
    iget-object v5, p1, Lcom/android/tools/r8/internal/WO;->e:Lcom/android/tools/r8/internal/ZO;

    .line 146
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ZO;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v3

    goto :goto_0

    .line 147
    :cond_1
    instance-of v6, v5, Lcom/android/tools/r8/internal/YO;

    if-eqz v6, :cond_2

    .line 148
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v2

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ZO;->a()Lcom/android/tools/r8/internal/DP;

    move-result-object v5

    invoke-virtual {v0, v2, v5, v1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/DP;Lcom/android/tools/r8/graph/j;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_9

    .line 150
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    .line 151
    iget-object v5, p1, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    .line 152
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    instance-of v6, v5, Lcom/android/tools/r8/internal/SO;

    if-eqz v6, :cond_3

    goto :goto_3

    .line 154
    :cond_3
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/UO;->a()Ljava/util/List;

    move-result-object v5

    .line 155
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_4

    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_6

    .line 157
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/DP;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/DP;Lcom/android/tools/r8/graph/j;)Z

    move-result v8

    if-nez v8, :cond_5

    :goto_2
    move v0, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    move v0, v3

    :goto_4
    if-eqz v0, :cond_9

    .line 158
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 159
    iget-object v1, p1, Lcom/android/tools/r8/internal/WO;->b:Lcom/android/tools/r8/internal/x40;

    .line 160
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/internal/x40;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    .line 162
    iget-object p1, p1, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    .line 163
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/QO;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 164
    :cond_7
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/g;Lcom/android/tools/r8/internal/IO;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v0

    .line 166
    iget-object v1, p1, Lcom/android/tools/r8/internal/QO;->f:Lcom/android/tools/r8/internal/LX;

    .line 167
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 168
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result v0

    .line 169
    iget-object v1, p1, Lcom/android/tools/r8/internal/QO;->g:Lcom/android/tools/r8/internal/LX;

    .line 170
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 171
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    .line 172
    iget-object v1, p1, Lcom/android/tools/r8/internal/QO;->h:Lcom/android/tools/r8/internal/LX;

    .line 173
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    .line 175
    iget-object v1, p1, Lcom/android/tools/r8/internal/QO;->i:Lcom/android/tools/r8/internal/LX;

    .line 176
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 177
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L4;->K()Z

    move-result p2

    .line 178
    iget-object p1, p1, Lcom/android/tools/r8/internal/QO;->j:Lcom/android/tools/r8/internal/LX;

    .line 179
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_5
    move p1, v3

    goto :goto_6

    :cond_8
    move p1, v4

    :goto_6
    if-eqz p1, :cond_9

    return v3

    :cond_9
    return v4
.end method

.method public final a(Lcom/android/tools/r8/internal/xO;Lcom/android/tools/r8/graph/g1;)Z
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/android/tools/r8/internal/AM;->b:Lcom/android/tools/r8/internal/EM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AM;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iget-object v2, p1, Lcom/android/tools/r8/internal/xO;->b:Lcom/android/tools/r8/internal/x40;

    .line 97
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/x40;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    .line 98
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/uO;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/tools/r8/internal/xO;->d:Lcom/android/tools/r8/internal/vO;

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    sget-object v4, Lcom/android/tools/r8/internal/vO;->b:Lcom/android/tools/r8/internal/vO;

    if-ne v4, v2, :cond_0

    .line 101
    iget-object v2, p1, Lcom/android/tools/r8/internal/xO;->e:Lcom/android/tools/r8/internal/zO;

    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    check-cast v2, Lcom/android/tools/r8/internal/yO;

    .line 104
    iget-object v2, v2, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    .line 105
    instance-of v2, v2, Lcom/android/tools/r8/internal/zP;

    if-eqz v2, :cond_0

    return v3

    .line 106
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 107
    iget-object v4, p1, Lcom/android/tools/r8/internal/xO;->d:Lcom/android/tools/r8/internal/vO;

    .line 108
    iget-object v4, v4, Lcom/android/tools/r8/internal/vO;->a:Lcom/android/tools/r8/internal/vP;

    .line 109
    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/vP;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 111
    iget-object v4, p1, Lcom/android/tools/r8/internal/xO;->e:Lcom/android/tools/r8/internal/zO;

    .line 112
    check-cast v4, Lcom/android/tools/r8/internal/yO;

    .line 113
    iget-object v4, v4, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    .line 114
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/DP;Lcom/android/tools/r8/graph/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 116
    iget-object v1, p1, Lcom/android/tools/r8/internal/xO;->b:Lcom/android/tools/r8/internal/x40;

    .line 117
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/internal/x40;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object p2

    .line 119
    iget-object p1, p1, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    .line 120
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uO;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/g;Lcom/android/tools/r8/internal/IO;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget v0, p2, Lcom/android/tools/r8/graph/g;->c:I

    const/16 v1, 0x40

    .line 123
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    .line 124
    iget-object v1, p1, Lcom/android/tools/r8/internal/uO;->f:Lcom/android/tools/r8/internal/LX;

    .line 125
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    .line 126
    iget p2, p2, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {p2, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result p2

    .line 127
    iget-object p1, p1, Lcom/android/tools/r8/internal/uO;->g:Lcom/android/tools/r8/internal/LX;

    .line 128
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return v3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
