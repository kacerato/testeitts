.class public final Lcom/android/tools/r8/internal/Xq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Uq0;


# static fields
.field public static final d:Lcom/android/tools/r8/internal/Uq0;


# instance fields
.field public volatile b:Lcom/android/tools/r8/internal/Uq0;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/r21;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r21;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Xq0;->d:Lcom/android/tools/r8/internal/Uq0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Uq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xq0;->b:Lcom/android/tools/r8/internal/Uq0;

    return-void
.end method

.method public static synthetic a()Ljava/lang/Void;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xq0;->b:Lcom/android/tools/r8/internal/Uq0;

    sget-object v1, Lcom/android/tools/r8/internal/Xq0;->d:Lcom/android/tools/r8/internal/Uq0;

    if-eq v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xq0;->b:Lcom/android/tools/r8/internal/Uq0;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xq0;->b:Lcom/android/tools/r8/internal/Uq0;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xq0;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Xq0;->b:Lcom/android/tools/r8/internal/Uq0;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xq0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xq0;->b:Lcom/android/tools/r8/internal/Uq0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Suppliers.memoize("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/tools/r8/internal/Xq0;->d:Lcom/android/tools/r8/internal/Uq0;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<supplier that returned "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Xq0;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
