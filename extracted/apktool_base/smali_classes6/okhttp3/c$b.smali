.class public Lokhttp3/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/c;->u()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "LIg/d$f;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public d:Z

.field public final synthetic e:Lokhttp3/c;


# direct methods
.method public constructor <init>(Lokhttp3/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/c$b;->e:Lokhttp3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {p1}, LIg/d;->y()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/c$b;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lokhttp3/c$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/c$b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/c$b;->c:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/c$b;->d:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lokhttp3/c$b;->c:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/c$b;->d:Z

    :goto_0
    iget-object v2, p0, Lokhttp3/c$b;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lokhttp3/c$b;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIg/d$f;

    :try_start_0
    invoke-virtual {v2, v0}, LIg/d$f;->e(I)LTg/y;

    move-result-object v3

    invoke-static {v3}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object v3

    invoke-interface {v3}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/c$b;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, LIg/d$f;->close()V

    return v1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, LIg/d$f;->close()V

    throw v0

    :catch_0
    invoke-virtual {v2}, LIg/d$f;->close()V

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lokhttp3/c$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lokhttp3/c$b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/c$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
