.class public Lz2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/f$a;
    }
.end annotation

.annotation runtime Lz2/e;
.end annotation


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lz2/l;

.field public final d:Lz2/m;

.field public final e:Lz2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lz2/f;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "default"

    invoke-direct {p0, v0}, Lz2/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3
    invoke-static {}, Lz2/d;->d()Lz2/d;

    move-result-object v1

    sget-object v2, Lz2/f$a;->a:Lz2/f$a;

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lz2/f;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lz2/d;Lz2/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lz2/d;Lz2/l;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lz2/m;

    invoke-direct {v0, p0}, Lz2/m;-><init>(Lz2/f;)V

    iput-object v0, p0, Lz2/f;->d:Lz2/m;

    .line 10
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lz2/f;->a:Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lz2/f;->b:Ljava/util/concurrent/Executor;

    .line 12
    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/d;

    iput-object p1, p0, Lz2/f;->e:Lz2/d;

    .line 13
    invoke-static {p4}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/l;

    iput-object p1, p0, Lz2/f;->c:Lz2/l;

    return-void
.end method

.method public constructor <init>(Lz2/l;)V
    .locals 3

    .line 5
    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 6
    invoke-static {}, Lz2/d;->d()Lz2/d;

    move-result-object v1

    .line 7
    const-string v2, "default"

    invoke-direct {p0, v2, v0, v1, p1}, Lz2/f;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lz2/d;Lz2/l;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lz2/f;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b(Ljava/lang/Throwable;Lz2/k;)V
    .locals 4

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lz2/f;->c:Lz2/l;

    invoke-interface {v0, p1, p2}, Lz2/l;->a(Ljava/lang/Throwable;Lz2/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object v0, Lz2/f;->f:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Exception %s thrown while handling exception: %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lz2/f;->d:Lz2/m;

    invoke-virtual {v0, p1}, Lz2/m;->f(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/f;->e:Lz2/d;

    invoke-virtual {v1, p1, v0}, Lz2/d;->a(Ljava/lang/Object;Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lz2/c;

    if-nez v0, :cond_1

    new-instance v0, Lz2/c;

    invoke-direct {v0, p0, p1}, Lz2/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lz2/f;->d(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lz2/f;->d:Lz2/m;

    invoke-virtual {v0, p1}, Lz2/m;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lz2/f;->d:Lz2/m;

    invoke-virtual {v0, p1}, Lz2/m;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget-object v1, p0, Lz2/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lw2/z$b;->s(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
