.class public final Lokhttp3/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIg/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:LIg/d$d;

.field public b:LTg/x;

.field public c:LTg/x;

.field public d:Z

.field public final synthetic e:Lokhttp3/c;


# direct methods
.method public constructor <init>(Lokhttp3/c;LIg/d$d;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/c$c;->e:Lokhttp3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/c$c;->a:LIg/d$d;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, LIg/d$d;->e(I)LTg/x;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->b:LTg/x;

    new-instance v1, Lokhttp3/c$c$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lokhttp3/c$c$a;-><init>(Lokhttp3/c$c;LTg/x;Lokhttp3/c;LIg/d$d;)V

    iput-object v1, p0, Lokhttp3/c$c;->c:LTg/x;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lokhttp3/c$c;->e:Lokhttp3/c;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lokhttp3/c$c;->d:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/c$c;->d:Z

    iget-object v2, p0, Lokhttp3/c$c;->e:Lokhttp3/c;

    iget v3, v2, Lokhttp3/c;->e:I

    add-int/2addr v3, v1

    iput v3, v2, Lokhttp3/c;->e:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokhttp3/c$c;->b:LTg/x;

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    :try_start_1
    iget-object v0, p0, Lokhttp3/c$c;->a:LIg/d$d;

    invoke-virtual {v0}, LIg/d$d;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public b()LTg/x;
    .locals 1

    iget-object v0, p0, Lokhttp3/c$c;->c:LTg/x;

    return-object v0
.end method
