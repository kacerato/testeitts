.class public Lokhttp3/c$c$a;
.super LTg/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/c$c;-><init>(Lokhttp3/c;LIg/d$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lokhttp3/c;

.field public final synthetic d:LIg/d$d;

.field public final synthetic e:Lokhttp3/c$c;


# direct methods
.method public constructor <init>(Lokhttp3/c$c;LTg/x;Lokhttp3/c;LIg/d$d;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/c$c$a;->e:Lokhttp3/c$c;

    iput-object p3, p0, Lokhttp3/c$c$a;->c:Lokhttp3/c;

    iput-object p4, p0, Lokhttp3/c$c$a;->d:LIg/d$d;

    invoke-direct {p0, p2}, LTg/h;-><init>(LTg/x;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$c$a;->e:Lokhttp3/c$c;

    iget-object v0, v0, Lokhttp3/c$c;->e:Lokhttp3/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lokhttp3/c$c$a;->e:Lokhttp3/c$c;

    iget-boolean v2, v1, Lokhttp3/c$c;->d:Z

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/c$c;->d:Z

    iget-object v1, v1, Lokhttp3/c$c;->e:Lokhttp3/c;

    iget v3, v1, Lokhttp3/c;->d:I

    add-int/2addr v3, v2

    iput v3, v1, Lokhttp3/c;->d:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, LTg/h;->close()V

    iget-object v0, p0, Lokhttp3/c$c$a;->d:LIg/d$d;

    invoke-virtual {v0}, LIg/d$d;->c()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
