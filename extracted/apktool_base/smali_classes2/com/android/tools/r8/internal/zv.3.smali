.class public Lcom/android/tools/r8/internal/zv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/android/tools/r8/internal/zv;

.field public static final c:Lcom/android/tools/r8/internal/zv;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zv;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zv;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/zv;->c:Lcom/android/tools/r8/internal/zv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/tools/r8/internal/zv;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/zv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/zv;->c:Lcom/android/tools/r8/internal/zv;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/tools/r8/internal/zv;->a:Ljava/util/Map;

    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/zv;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/zv;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/zv;
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/zv;->b:Lcom/android/tools/r8/internal/zv;

    if-nez v0, :cond_3

    const-class v1, Lcom/android/tools/r8/internal/zv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/tools/r8/internal/zv;->b:Lcom/android/tools/r8/internal/zv;

    if-nez v0, :cond_2

    const-string v0, "getEmptyRegistry"

    sget-object v2, Lcom/android/tools/r8/internal/wv;->a:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zv;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :goto_0
    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/tools/r8/internal/zv;->c:Lcom/android/tools/r8/internal/zv;

    :goto_1
    sput-object v0, Lcom/android/tools/r8/internal/zv;->b:Lcom/android/tools/r8/internal/zv;

    :cond_2
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    return-object v0
.end method
