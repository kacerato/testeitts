.class public Lw2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/q$b;,
        Lw2/q$a;,
        Lw2/q$d;,
        Lw2/q$c;
    }
.end annotation

.annotation build Lv2/c;
.end annotation

.annotation runtime Lw2/k;
.end annotation


# static fields
.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Ljava/lang/String; = "com.google.common.base.internal.Finalizer"

.field public static final g:Ljava/lang/reflect/Method;


# instance fields
.field public final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lw2/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lw2/q;->e:Ljava/util/logging/Logger;

    new-instance v0, Lw2/q$d;

    invoke-direct {v0}, Lw2/q$d;-><init>()V

    new-instance v1, Lw2/q$a;

    invoke-direct {v1}, Lw2/q$a;-><init>()V

    new-instance v2, Lw2/q$b;

    invoke-direct {v2}, Lw2/q$b;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Lw2/q$c;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lw2/q;->f([Lw2/q$c;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw2/q;->e(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lw2/q;->g:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lw2/q;->b:Ljava/lang/ref/ReferenceQueue;

    new-instance v1, Ljava/lang/ref/PhantomReference;

    invoke-direct {v1, p0, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, p0, Lw2/q;->c:Ljava/lang/ref/PhantomReference;

    :try_start_0
    sget-object v2, Lw2/q;->g:Ljava/lang/reflect/Method;

    const-class v3, Lw2/p;

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :goto_0
    sget-object v1, Lw2/q;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lw2/q;->d:Z

    return-void

    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static synthetic c()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lw2/q;->e:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    const-string v0, "startFinalizer"

    const-class v1, Ljava/lang/Class;

    const-class v2, Ljava/lang/ref/ReferenceQueue;

    const-class v3, Ljava/lang/ref/PhantomReference;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static varargs f([Lw2/q$c;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw2/q$c;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lw2/q$c;->a()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lw2/q;->c:Ljava/lang/ref/PhantomReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->enqueue()Z

    invoke-virtual {p0}, Lw2/q;->d()V

    return-void
.end method

.method public d()V
    .locals 4

    iget-boolean v0, p0, Lw2/q;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lw2/q;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :try_start_0
    check-cast v0, Lw2/p;

    invoke-interface {v0}, Lw2/p;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lw2/q;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error cleaning up after reference."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
