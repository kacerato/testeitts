.class public LIg/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIg/d;->y()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "LIg/d$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "LIg/d$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:LIg/d$f;

.field public d:LIg/d$f;

.field public final synthetic e:LIg/d;


# direct methods
.method public constructor <init>(LIg/d;)V
    .locals 1

    iput-object p1, p0, LIg/d$c;->e:LIg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, LIg/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LIg/d$c;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()LIg/d$f;
    .locals 2

    invoke-virtual {p0}, LIg/d$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LIg/d$c;->c:LIg/d$f;

    iput-object v0, p0, LIg/d$c;->d:LIg/d$f;

    const/4 v1, 0x0

    iput-object v1, p0, LIg/d$c;->c:LIg/d$f;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 4

    iget-object v0, p0, LIg/d$c;->c:LIg/d$f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LIg/d$c;->e:LIg/d;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, LIg/d$c;->e:LIg/d;

    iget-boolean v2, v2, LIg/d;->p:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, LIg/d$c;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, LIg/d$c;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIg/d$e;

    invoke-virtual {v2}, LIg/d$e;->c()LIg/d$f;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iput-object v2, p0, LIg/d$c;->c:LIg/d$f;

    monitor-exit v0

    return v1

    :cond_3
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LIg/d$c;->a()LIg/d$f;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, LIg/d$c;->d:LIg/d$f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LIg/d$c;->e:LIg/d;

    invoke-static {v0}, LIg/d$f;->a(LIg/d$f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, LIg/d;->u(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v1, p0, LIg/d$c;->d:LIg/d$f;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, LIg/d$c;->d:LIg/d$f;

    throw v0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
