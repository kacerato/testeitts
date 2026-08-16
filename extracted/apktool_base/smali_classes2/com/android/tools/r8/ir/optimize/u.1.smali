.class public final Lcom/android/tools/r8/ir/optimize/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/ir/optimize/u;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/ir/optimize/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/ir/optimize/u;-><init>(Ljava/util/IdentityHashMap;)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/u;->b:Lcom/android/tools/r8/ir/optimize/u;

    return-void
.end method

.method public constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/u;->a:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/R2;)V
    .locals 0

    .line 6
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/u;->a:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 3
    new-instance v0, Lv/u1;

    invoke-direct {v0, p1, p2}, Lv/u1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/y;)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/u;->a:Ljava/util/IdentityHashMap;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method
