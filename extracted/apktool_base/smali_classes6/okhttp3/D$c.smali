.class public Lokhttp3/D$c;
.super Lokhttp3/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/D;->d(Lokhttp3/x;Ljava/io/File;)Lokhttp3/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/x;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lokhttp3/x;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/D$c;->a:Lokhttp3/x;

    iput-object p2, p0, Lokhttp3/D$c;->b:Ljava/io/File;

    invoke-direct {p0}, Lokhttp3/D;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lokhttp3/D$c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lokhttp3/x;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/D$c;->a:Lokhttp3/x;

    return-object v0
.end method

.method public h(LTg/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lokhttp3/D$c;->b:Ljava/io/File;

    invoke-static {v1}, LTg/p;->k(Ljava/io/File;)LTg/y;

    move-result-object v0

    invoke-interface {p1, v0}, LTg/d;->H(LTg/y;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    throw p1
.end method
