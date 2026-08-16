.class public Lcom/android/tools/r8/internal/v8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/v8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/v8$a;->a:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/r8;)V
    .locals 2

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/r8;->c:Z

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p2, Lcom/android/tools/r8/internal/r8;->a:Ljava/util/Set;

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/android/tools/r8/internal/r8;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/s8;

    .line 16
    iget-object v1, p2, Lcom/android/tools/r8/internal/r8;->a:Ljava/util/Set;

    .line 17
    iget-boolean p2, p2, Lcom/android/tools/r8/internal/r8;->b:Z

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/internal/s8;-><init>(Ljava/util/Set;Z)V

    .line 18
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/v8;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/v8$a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/v8$a;->a:Ljava/util/IdentityHashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/v8$a;->a:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/Pv1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Pv1;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/v8;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/v8;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/hw;Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/v8$a;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/v8$a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/v8$a;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/Ov1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ov1;-><init>()V

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/r8;

    .line 4
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
