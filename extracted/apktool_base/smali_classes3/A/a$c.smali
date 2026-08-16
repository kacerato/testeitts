.class public final LA/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:LA/a$d;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:LA/a;


# direct methods
.method public constructor <init>(LA/a;LA/a$d;)V
    .locals 0

    .line 2
    iput-object p1, p0, LA/a$c;->d:LA/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, LA/a$c;->a:LA/a$d;

    .line 4
    invoke-static {p2}, LA/a$d;->e(LA/a$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, LA/a;->d(LA/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, LA/a$c;->b:[Z

    return-void
.end method

.method public synthetic constructor <init>(LA/a;LA/a$d;LA/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LA/a$c;-><init>(LA/a;LA/a$d;)V

    return-void
.end method

.method public static synthetic c(LA/a$c;)LA/a$d;
    .locals 0

    iget-object p0, p0, LA/a$c;->a:LA/a$d;

    return-object p0
.end method

.method public static synthetic d(LA/a$c;)[Z
    .locals 0

    iget-object p0, p0, LA/a$c;->b:[Z

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LA/a$c;->d:LA/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, LA/a;->g(LA/a;LA/a$c;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, LA/a$c;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, LA/a$c;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LA/a$c;->d:LA/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, LA/a;->g(LA/a;LA/a$c;Z)V

    iput-boolean v1, p0, LA/a$c;->c:Z

    return-void
.end method

.method public f(I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LA/a$c;->d:LA/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LA/a$c;->a:LA/a$d;

    invoke-static {v1}, LA/a$d;->g(LA/a$d;)LA/a$c;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, LA/a$c;->a:LA/a$d;

    invoke-static {v1}, LA/a$d;->e(LA/a$d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LA/a$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LA/a$c;->a:LA/a$d;

    invoke-virtual {v1, p1}, LA/a$d;->k(I)Ljava/io/File;

    move-result-object p1

    iget-object v1, p0, LA/a$c;->d:LA/a;

    invoke-static {v1}, LA/a;->f(LA/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LA/a$c;->d:LA/a;

    invoke-static {v1}, LA/a;->f(LA/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LA/a$c;->h(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, LA/a;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final h(I)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LA/a$c;->d:LA/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LA/a$c;->a:LA/a$d;

    invoke-static {v1}, LA/a$d;->g(LA/a$d;)LA/a$c;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, LA/a$c;->a:LA/a$d;

    invoke-static {v1}, LA/a$d;->e(LA/a$d;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, LA/a$c;->a:LA/a$d;

    invoke-virtual {v3, p1}, LA/a$d;->j(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    monitor-exit v0

    return-object v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public i(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, LA/a$c;->f(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object v2, LA/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, LA/c;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    invoke-static {v0}, LA/c;->a(Ljava/io/Closeable;)V

    throw p2
.end method
