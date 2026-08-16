.class public Lcom/android/tools/r8/shaking/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/android/tools/r8/shaking/o2;

.field public static final synthetic g:Z = true


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Set;

.field public c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/android/tools/r8/shaking/o2;

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/shaking/o2;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V

    sput-object v6, Lcom/android/tools/r8/shaking/o2;->f:Lcom/android/tools/r8/shaking/o2;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/o2;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/o2;->d:Ljava/util/Set;

    iput-boolean p5, p0, Lcom/android/tools/r8/shaking/o2;->e:Z

    sget-boolean p1, Lcom/android/tools/r8/shaking/o2;->g:Z

    if-nez p1, :cond_1

    invoke-interface {p4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lv/T0;

    invoke-direct {p3, p2}, Lv/T0;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/shaking/Kd;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/Kd;-><init>(Lcom/android/tools/r8/shaking/m2;)V

    invoke-static {p0, p2, v0}, Lcom/android/tools/r8/internal/SR;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    instance-of v0, p0, Lcom/android/tools/r8/synthesis/y;

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/tools/r8/shaking/Jd;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/shaking/Jd;-><init>(Lcom/android/tools/r8/shaking/m2;)V

    invoke-static {p0, p3, p2}, Lcom/android/tools/r8/internal/SR;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Consumer;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/synthesis/J;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/m2;->a(Lcom/android/tools/r8/synthesis/J;)Ljava/util/function/Consumer;

    move-result-object p1

    .line 70
    invoke-static {p0, p3, p1}, Lcom/android/tools/r8/internal/SR;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Consumer;)V

    return-void

    .line 71
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/tools/r8/shaking/Bd;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/shaking/Bd;-><init>(Lcom/android/tools/r8/shaking/m2;)V

    invoke-static {p0, p3, p2}, Lcom/android/tools/r8/internal/SR;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/shaking/Id;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/Id;-><init>(Ljava/util/Set;)V

    invoke-static {p0, p2, v0}, Lcom/android/tools/r8/internal/SR;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/tools/r8/shaking/m2;->c:Ljava/util/Set;

    .line 73
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 63
    iget-object p0, p0, Lcom/android/tools/r8/shaking/m2;->c:Ljava/util/Set;

    .line 64
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Z
    .locals 1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 17
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 19
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/android/tools/r8/shaking/o2;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/shaking/o2;->f:Lcom/android/tools/r8/shaking/o2;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/shaking/n2;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object p1, Lcom/android/tools/r8/shaking/n2;->b:Lcom/android/tools/r8/shaking/n2;

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    sget-object p1, Lcom/android/tools/r8/shaking/n2;->c:Lcom/android/tools/r8/shaking/n2;

    return-object p1

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/shaking/o2;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Lcom/android/tools/r8/shaking/n2;->d:Lcom/android/tools/r8/shaking/n2;

    return-object p1

    .line 13
    :cond_2
    sget-object p1, Lcom/android/tools/r8/shaking/n2;->e:Lcom/android/tools/r8/shaking/n2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/shaking/o2;
    .locals 4

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 39
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 40
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    new-instance v2, Lcom/android/tools/r8/shaking/Pd;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/shaking/Pd;-><init>(Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 42
    new-instance v1, Lcom/android/tools/r8/shaking/m2;

    iget-boolean v2, p0, Lcom/android/tools/r8/shaking/o2;->e:Z

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/m2;-><init>(Z)V

    .line 43
    iget-object v2, p0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    new-instance v3, Lcom/android/tools/r8/shaking/Qd;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/tools/r8/shaking/Qd;-><init>(Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Lcom/android/tools/r8/shaking/m2;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 44
    iget-object v2, p0, Lcom/android/tools/r8/shaking/o2;->c:Ljava/util/Set;

    new-instance v3, Lcom/android/tools/r8/shaking/Cd;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/tools/r8/shaking/Cd;-><init>(Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Lcom/android/tools/r8/shaking/m2;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    iget-object v2, p0, Lcom/android/tools/r8/shaking/o2;->d:Ljava/util/Set;

    new-instance v3, Lcom/android/tools/r8/shaking/Dd;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/tools/r8/shaking/Dd;-><init>(Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Lcom/android/tools/r8/shaking/m2;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/m2;->a(Ljava/util/Set;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/o2;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/o2;->b(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/o2;
    .locals 1

    .line 57
    new-instance v0, Lcom/android/tools/r8/shaking/Hd;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/shaking/Hd;-><init>(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;)V

    const-string p1, "Rewrite MainDexInfo"

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/o2;

    return-object p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/o2;->e:Z

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/o2;->c:Ljava/util/Set;

    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 53
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/Ed;

    invoke-direct {v1, p2, p3}, Lcom/android/tools/r8/shaking/Ed;-><init>(Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/graph/A2;)V

    .line 54
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/shaking/Kd;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/shaking/Kd;-><init>(Lcom/android/tools/r8/shaking/m2;)V

    .line 51
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 52
    invoke-interface {v0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 47
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/shaking/Id;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/shaking/Id;-><init>(Ljava/util/Set;)V

    .line 48
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    invoke-interface {v0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 3

    .line 34
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/bi;->a(Ljava/util/function/Consumer;Ljava/util/Set;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/bi;->a(Ljava/util/function/Consumer;Ljava/util/Set;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/shaking/o2;->d:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/bi;->a(Ljava/util/function/Consumer;Ljava/util/Set;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/shaking/n2;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/android/tools/r8/shaking/n2;->e:Lcom/android/tools/r8/shaking/n2;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/android/tools/r8/shaking/n2;->d:Lcom/android/tools/r8/shaking/n2;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcom/android/tools/r8/shaking/n2;->b:Lcom/android/tools/r8/shaking/n2;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    return v2

    .line 5
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/shaking/o2;->g:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/shaking/n2;->c:Lcom/android/tools/r8/shaking/n2;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/shaking/n2;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/shaking/n2;->c:Lcom/android/tools/r8/shaking/n2;

    if-ne p1, p2, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)Z
    .locals 4

    .line 22
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 23
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 24
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 26
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/shaking/n2;

    move-result-object p2

    .line 27
    sget-object v1, Lcom/android/tools/r8/shaking/n2;->e:Lcom/android/tools/r8/shaking/n2;

    if-eq p2, v1, :cond_6

    sget-object v1, Lcom/android/tools/r8/shaking/n2;->d:Lcom/android/tools/r8/shaking/n2;

    if-ne p2, v1, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    sget-object v1, Lcom/android/tools/r8/shaking/n2;->b:Lcom/android/tools/r8/shaking/n2;

    const/4 v3, 0x1

    if-ne p2, v1, :cond_3

    .line 29
    new-instance p2, Lcom/android/tools/r8/shaking/Fd;

    invoke-direct {p2, p0, v0}, Lcom/android/tools/r8/shaking/Fd;-><init>(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/synthesis/J;)V

    .line 30
    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/shaking/l2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 31
    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/shaking/o2;->g:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/tools/r8/shaking/n2;->c:Lcom/android/tools/r8/shaking/n2;

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_5
    :goto_0
    new-instance p2, Lcom/android/tools/r8/shaking/Gd;

    invoke-direct {p2, p0, v0}, Lcom/android/tools/r8/shaking/Gd;-><init>(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/synthesis/J;)V

    .line 33
    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/shaking/l2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    :goto_1
    return v2
.end method

.method public final a(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/o2;
    .locals 4

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    new-instance v2, Lcom/android/tools/r8/shaking/Ld;

    invoke-direct {v2, p2, v0}, Lcom/android/tools/r8/shaking/Ld;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    new-instance v1, Lcom/android/tools/r8/shaking/m2;

    iget-boolean v2, p0, Lcom/android/tools/r8/shaking/o2;->e:Z

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/m2;-><init>(Z)V

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    new-instance v3, Lcom/android/tools/r8/shaking/Md;

    invoke-direct {v3, p2, v1}, Lcom/android/tools/r8/shaking/Md;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/shaking/m2;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/shaking/o2;->c:Ljava/util/Set;

    new-instance v3, Lcom/android/tools/r8/shaking/Nd;

    invoke-direct {v3, v1, p2}, Lcom/android/tools/r8/shaking/Nd;-><init>(Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/internal/Hz;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/shaking/o2;->d:Ljava/util/Set;

    new-instance v3, Lcom/android/tools/r8/shaking/Od;

    invoke-direct {v3, p2, v1, p1}, Lcom/android/tools/r8/shaking/Od;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/synthesis/J;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/m2;->a(Ljava/util/Set;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/Set;Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/shaking/Bd;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/shaking/Bd;-><init>(Lcom/android/tools/r8/shaking/m2;)V

    .line 4
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-interface {v0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
