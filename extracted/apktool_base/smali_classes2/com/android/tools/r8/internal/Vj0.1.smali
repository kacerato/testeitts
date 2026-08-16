.class public final Lcom/android/tools/r8/internal/Vj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceMethodResult;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/JW;

.field public final b:Ljava/util/List;

.field public final c:Lcom/android/tools/r8/internal/wk0;

.field public d:Lcom/android/tools/r8/internal/t40;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Nj0;Ljava/util/List;Lcom/android/tools/r8/internal/JW;Lcom/android/tools/r8/internal/wk0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->d:Lcom/android/tools/r8/internal/t40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Vj0;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Vj0;->a:Lcom/android/tools/r8/internal/JW;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Vj0;->c:Lcom/android/tools/r8/internal/wk0;

    sget-boolean p3, Lcom/android/tools/r8/internal/Vj0;->e:Z

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/JV;)Lcom/android/tools/r8/internal/JV;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k$b;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v0, :cond_0

    .line 9
    iget v1, v0, Lcom/android/tools/r8/naming/M0;->a:I

    if-nez v1, :cond_0

    .line 10
    iget v0, v0, Lcom/android/tools/r8/naming/M0;->b:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/JV;

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/internal/JV;->b:Lcom/android/tools/r8/naming/V;

    .line 13
    sget-object v1, Lcom/android/tools/r8/naming/k$c;->b:Lcom/android/tools/r8/naming/k$c;

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/JV;-><init>(Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/k$c;)V

    return-object v0
.end method

.method public static a(ILcom/android/tools/r8/internal/JV;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/naming/k$c;->a(IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/function/Function;
    .locals 1

    .line 59
    new-instance v0, Lcom/android/tools/r8/internal/xZ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xZ0;-><init>()V

    return-object v0
.end method

.method public static a(I)Ljava/util/function/Function;
    .locals 1

    .line 58
    new-instance v0, Lcom/android/tools/r8/internal/zZ0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zZ0;-><init>(I)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/o50;Ljava/util/function/Function;Ljava/util/OptionalInt;Lcom/android/tools/r8/internal/Zj0;Ljava/util/ArrayList;)V
    .locals 6

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 30
    new-instance p1, Lcom/android/tools/r8/internal/Qj0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Mj0;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3, p2}, Lcom/android/tools/r8/internal/Qj0;-><init>(Lcom/android/tools/r8/internal/Mj0;Ljava/util/List;Ljava/util/OptionalInt;)V

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 31
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/JV;

    .line 33
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 34
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_5

    .line 35
    iget-object v4, p3, Lcom/android/tools/r8/internal/Zj0;->b:Ljava/util/OptionalInt;

    invoke-virtual {v4}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    invoke-static {v3}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    invoke-virtual {v4}, Lcom/android/tools/r8/naming/k$b;->d()Lcom/android/tools/r8/internal/hC;

    move-result-object v4

    .line 37
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 38
    sget-boolean p1, Lcom/android/tools/r8/internal/Vj0;->e:Z

    if-nez p1, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "There can only be one outline entry for a line"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 39
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/M40;

    .line 40
    iget-object p2, p3, Lcom/android/tools/r8/internal/Zj0;->b:Ljava/util/OptionalInt;

    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p2

    .line 41
    iget-object p1, p1, Lcom/android/tools/r8/internal/M40;->a:Lcom/android/tools/r8/internal/WE;

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 43
    invoke-static {p1}, Lcom/android/tools/r8/internal/Vj0;->a(I)Ljava/util/function/Function;

    move-result-object p2

    .line 44
    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p1

    .line 45
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    .line 46
    iget-object p3, p3, Lcom/android/tools/r8/internal/Zj0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 47
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/android/tools/r8/internal/Zj0;

    invoke-direct {v1, p3, v0}, Lcom/android/tools/r8/internal/Zj0;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/util/OptionalInt;)V

    .line 49
    invoke-static {p0, p2, p1, v1, p4}, Lcom/android/tools/r8/internal/Vj0;->a(Lcom/android/tools/r8/internal/o50;Ljava/util/function/Function;Ljava/util/OptionalInt;Lcom/android/tools/r8/internal/Zj0;Ljava/util/ArrayList;)V

    return-void

    .line 50
    :cond_5
    new-instance v4, Lcom/android/tools/r8/internal/JV;

    .line 51
    iget-object v2, v2, Lcom/android/tools/r8/internal/JV;->b:Lcom/android/tools/r8/naming/V;

    .line 52
    new-instance v5, Lcom/android/tools/r8/naming/k$c;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/naming/k$c;-><init>(Ljava/util/List;)V

    invoke-direct {v4, v2, v5}, Lcom/android/tools/r8/internal/JV;-><init>(Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/k$c;)V

    .line 53
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 54
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 55
    new-instance p1, Lcom/android/tools/r8/internal/Qj0;

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Mj0;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/tools/r8/internal/Qj0;-><init>(Lcom/android/tools/r8/internal/Mj0;Ljava/util/List;Ljava/util/OptionalInt;)V

    .line 57
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static b()Ljava/util/function/Function;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/yZ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yZ0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/o50;)Ljava/util/stream/Stream;
    .locals 4

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Mj0;

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    new-instance v3, Lcom/android/tools/r8/internal/vZ0;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/tools/r8/internal/vZ0;-><init>(Lcom/android/tools/r8/internal/Vj0;Ljava/util/Set;Lcom/android/tools/r8/internal/Mj0;Ljava/util/List;)V

    invoke-interface {p1, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 66
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 67
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/Uj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vj0;->a:Lcom/android/tools/r8/internal/JW;

    .line 68
    iget-object v2, v0, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    .line 69
    iget-object v2, v2, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 70
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/JW;->a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/JW;

    move-result-object v1

    .line 71
    sget-object v2, Lcom/android/tools/r8/internal/rk0;->c:Ljava/util/Comparator;

    .line 72
    instance-of v2, v1, Lcom/android/tools/r8/internal/IW;

    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/JW;->a()Lcom/android/tools/r8/internal/IW;

    move-result-object v1

    .line 74
    iget-object v1, v1, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 75
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v2

    .line 76
    new-instance v3, Lcom/android/tools/r8/internal/pk0;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/internal/pk0;-><init>(Lcom/android/tools/r8/references/MethodReference;Ljava/util/OptionalInt;)V

    goto :goto_1

    .line 77
    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/qk0;

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/internal/qk0;-><init>(Lcom/android/tools/r8/internal/JW;Ljava/util/OptionalInt;)V

    :goto_1
    const/4 v1, 0x0

    .line 78
    invoke-direct {p1, p0, v0, v3, v1}, Lcom/android/tools/r8/internal/Uj0;-><init>(Lcom/android/tools/r8/internal/Vj0;Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/internal/rk0;Lcom/android/tools/r8/internal/JV;)V

    .line 79
    invoke-static {p1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/internal/Mj0;Ljava/util/List;Lcom/android/tools/r8/internal/JV;)V
    .locals 2

    .line 15
    iget-object v0, p4, Lcom/android/tools/r8/internal/JV;->b:Lcom/android/tools/r8/naming/V;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Vj0;->isAmbiguous()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p4, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k$b;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$b;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p2, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    .line 24
    iget-object p1, p1, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 25
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/kk0;->a(Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/Uj0;

    .line 27
    invoke-static {p1}, Lcom/android/tools/r8/internal/rk0;->a(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/internal/pk0;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/android/tools/r8/internal/Uj0;-><init>(Lcom/android/tools/r8/internal/Vj0;Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/internal/rk0;Lcom/android/tools/r8/internal/JV;)V

    .line 28
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final isAmbiguous()Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->d:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->d:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->d:Lcom/android/tools/r8/internal/t40;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/JV;

    iget-object v3, v3, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    invoke-virtual {v3}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/k$b;

    iget-object v3, v3, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {v3}, Lcom/android/tools/r8/naming/V$b;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v3

    move v4, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/JV;

    iget-object v5, v5, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    invoke-virtual {v5}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/k$b;

    iget-object v5, v5, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {v5}, Lcom/android/tools/r8/naming/V$b;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/naming/V$b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->d:Lcom/android/tools/r8/internal/t40;

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->d:Lcom/android/tools/r8/internal/t40;

    return v2

    :cond_5
    :goto_1
    sget-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->d:Lcom/android/tools/r8/internal/t40;

    return v2
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Tj0;
    .locals 8

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    instance-of v1, p1, Lcom/android/tools/r8/internal/Zj0;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/Zj0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Vj0;->a(I)Ljava/util/function/Function;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/Vj0;->b()Ljava/util/function/Function;

    move-result-object v5

    .line 7
    :goto_2
    iget-object v6, p0, Lcom/android/tools/r8/internal/Vj0;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/o50;

    .line 8
    invoke-static {v7, v5, p2, v1, v0}, Lcom/android/tools/r8/internal/Vj0;->a(Lcom/android/tools/r8/internal/o50;Ljava/util/function/Function;Ljava/util/OptionalInt;Lcom/android/tools/r8/internal/Zj0;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/Vj0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/o50;

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/Vj0;->a()Ljava/util/function/Function;

    move-result-object v6

    .line 12
    invoke-static {v5, v6, p2, v1, v0}, Lcom/android/tools/r8/internal/Vj0;->a(Lcom/android/tools/r8/internal/o50;Ljava/util/function/Function;Ljava/util/OptionalInt;Lcom/android/tools/r8/internal/Zj0;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14
    invoke-static {p2}, Lcom/android/tools/r8/internal/DX0;->a(Ljava/util/OptionalInt;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    if-gtz v1, :cond_6

    :cond_5
    move v3, v4

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Vj0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/o50;

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Lcom/android/tools/r8/internal/wZ0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/wZ0;-><init>()V

    .line 19
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v4

    .line 20
    :cond_7
    new-instance v5, Lcom/android/tools/r8/internal/Qj0;

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Mj0;

    invoke-direct {v5, v2, v4, p2}, Lcom/android/tools/r8/internal/Qj0;-><init>(Lcom/android/tools/r8/internal/Mj0;Ljava/util/List;Ljava/util/OptionalInt;)V

    .line 22
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 23
    :cond_8
    new-instance p2, Lcom/android/tools/r8/internal/Tj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vj0;->a:Lcom/android/tools/r8/internal/JW;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Vj0;->c:Lcom/android/tools/r8/internal/wk0;

    check-cast p1, Lcom/android/tools/r8/internal/Zj0;

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Tj0;-><init>(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/JW;Lcom/android/tools/r8/internal/wk0;Lcom/android/tools/r8/internal/Zj0;)V

    return-object p2
.end method

.method public final bridge synthetic narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Vj0;->narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Tj0;

    move-result-object p1

    return-object p1
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vj0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/AZ0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/AZ0;-><init>(Lcom/android/tools/r8/internal/Vj0;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
