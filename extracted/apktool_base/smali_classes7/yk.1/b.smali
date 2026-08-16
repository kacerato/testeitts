.class public Lyk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk/d;


# instance fields
.field public final a:Lyk/f$b;

.field public b:Lyk/c;


# direct methods
.method public constructor <init>(Lyk/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk/b;->a:Lyk/f$b;

    return-void
.end method


# virtual methods
.method public build()Lyk/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyk/b;->b:Lyk/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lyk/b;->a:Lyk/f$b;

    invoke-virtual {v0}, Lyk/f$b;->f()Lyk/c;

    move-result-object v0

    iput-object v0, p0, Lyk/b;->b:Lyk/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lyk/b;->b:Lyk/c;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
