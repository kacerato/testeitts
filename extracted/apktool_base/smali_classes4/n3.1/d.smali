.class public Ln3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Ln3/d;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/d;->a:Ljava/util/Set;

    return-void
.end method

.method public static a()Ln3/d;
    .locals 2

    sget-object v0, Ln3/d;->b:Ln3/d;

    if-nez v0, :cond_1

    const-class v1, Ln3/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ln3/d;->b:Ln3/d;

    if-nez v0, :cond_0

    new-instance v0, Ln3/d;

    invoke-direct {v0}, Ln3/d;-><init>()V

    sput-object v0, Ln3/d;->b:Ln3/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ln3/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln3/d;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln3/d;->a:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ln3/d;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln3/d;->a:Ljava/util/Set;

    invoke-static {p1, p2}, Ln3/f;->a(Ljava/lang/String;Ljava/lang/String;)Ln3/f;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
