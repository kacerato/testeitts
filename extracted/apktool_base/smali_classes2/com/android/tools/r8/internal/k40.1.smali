.class public abstract Lcom/android/tools/r8/internal/k40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/uw;
.implements Lcom/android/tools/r8/internal/SW;


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

.method public static a()Lcom/android/tools/r8/internal/o40;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/j40;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/hg1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/hg1;-><init>(Lcom/android/tools/r8/internal/j40;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/util/Collection;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/j40;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/ig1;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/ig1;-><init>(Lcom/android/tools/r8/internal/j40;)V

    invoke-static {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    return-void
.end method
