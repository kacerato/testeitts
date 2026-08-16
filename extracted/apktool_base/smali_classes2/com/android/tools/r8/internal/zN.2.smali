.class public abstract Lcom/android/tools/r8/internal/zN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/tN;Lcom/android/tools/r8/internal/rN;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/rN;->a(Lcom/android/tools/r8/internal/tN;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/wN;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;)V
    .locals 1

    .line 12
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/TE1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/TE1;-><init>(Lcom/android/tools/r8/internal/wN;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/rN;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2

    if-nez p0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/wN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wN;-><init>()V

    if-nez p0, :cond_1

    .line 5
    sget-object p0, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/wN;->a(Lcom/android/tools/r8/internal/zN;)Lcom/android/tools/r8/internal/wN;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;->getConstraintsList()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/internal/RE1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/RE1;-><init>(Lcom/android/tools/r8/internal/wN;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    :goto_0
    new-instance p0, Lcom/android/tools/r8/internal/SE1;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/SE1;-><init>(Lcom/android/tools/r8/internal/wN;)V

    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    new-instance p0, Lcom/android/tools/r8/internal/xN;

    iget-object p1, v0, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/xN;-><init>(Ljava/util/HashSet;)V

    .line 10
    iget-boolean p1, v0, Lcom/android/tools/r8/internal/wN;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/tools/r8/internal/uN;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/uN;-><init>(Lcom/android/tools/r8/internal/xN;)V

    move-object p0, p1

    .line 11
    :cond_2
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/wN;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/TE1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/TE1;-><init>(Lcom/android/tools/r8/internal/wN;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/rN;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/internal/QC;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/cP;)Lcom/android/tools/r8/internal/cP;
.end method

.method public final a(Lcom/android/tools/r8/internal/yM;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zN;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/UE1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/UE1;-><init>(Lcom/android/tools/r8/internal/tN;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end method

.method public abstract b()Ljava/util/Set;
.end method
