.class public final Lcom/android/tools/r8/internal/sK;
.super Lcom/android/tools/r8/internal/Vx;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lcom/android/tools/r8/internal/Jy;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Vx;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/Jy;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    new-instance v2, Lcom/android/tools/r8/internal/As1;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/As1;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/Jy;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Se;->a(Ljava/util/Spliterator;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Me;

    move-result-object v0

    return-object v0
.end method
