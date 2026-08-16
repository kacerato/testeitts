.class public Lcom/google/protobuf/I0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/protobuf/d0;


# instance fields
.field public a:Lcom/google/protobuf/x;

.field public b:Lcom/google/protobuf/d0;

.field public volatile c:Lcom/google/protobuf/b1;

.field public volatile d:Lcom/google/protobuf/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/d0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/d0;Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "bytes"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcom/google/protobuf/I0;->a(Lcom/google/protobuf/d0;Lcom/google/protobuf/x;)V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    .line 4
    iput-object p2, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    return-void
.end method

.method public static a(Lcom/google/protobuf/d0;Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "bytes"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ByteString"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ExtensionRegistry"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/google/protobuf/b1;)Lcom/google/protobuf/I0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/I0;

    invoke-direct {v0}, Lcom/google/protobuf/I0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/I0;->m(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;

    return-object v0
.end method

.method public static j(Lcom/google/protobuf/b1;Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "otherBytes",
            "extensionRegistry"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/b1;->toBuilder()Lcom/google/protobuf/b1$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/b1$a;->mergeFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/b1$a;->build()Lcom/google/protobuf/b1;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    iput-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    iput-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    sget-object v1, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(Lcom/google/protobuf/b1;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/protobuf/b1;->getParserForType()Lcom/google/protobuf/w1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    iget-object v2, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/b1;

    iput-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    iget-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    iput-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    sget-object v0, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    sget-object p1, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object p1, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/I0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/I0;

    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    iget-object v1, p1, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/I0;->n()Lcom/google/protobuf/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/I0;->n()Lcom/google/protobuf/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/protobuf/c1;->getDefaultInstanceForType()Lcom/google/protobuf/b1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/I0;->g(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/protobuf/c1;->getDefaultInstanceForType()Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/I0;->g(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->size()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    invoke-interface {v0}, Lcom/google/protobuf/b1;->getSerializedSize()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public g(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/I0;->d(Lcom/google/protobuf/b1;)V

    iget-object p1, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    return-object p1
.end method

.method public h(Lcom/google/protobuf/I0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/I0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/I0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/I0;->k(Lcom/google/protobuf/I0;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    iput-object v0, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/google/protobuf/x;->m(Lcom/google/protobuf/x;)Lcom/google/protobuf/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    iget-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    iget-object v1, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/I0;->j(Lcom/google/protobuf/b1;Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/I0;->m(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    iget-object v1, p1, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    iget-object p1, p1, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/I0;->j(Lcom/google/protobuf/b1;Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/I0;->m(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    invoke-interface {v0}, Lcom/google/protobuf/b1;->toBuilder()Lcom/google/protobuf/b1$a;

    move-result-object v0

    iget-object p1, p1, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    invoke-interface {v0, p1}, Lcom/google/protobuf/b1$a;->mergeFrom(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/b1$a;->build()Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/I0;->m(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;

    return-void
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/I0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/I0;->l(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->m(Lcom/google/protobuf/x;)Lcom/google/protobuf/x;

    move-result-object p1

    iget-object p2, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/I0;->l(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    invoke-interface {v0}, Lcom/google/protobuf/b1;->toBuilder()Lcom/google/protobuf/b1$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/b1$a;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/b1$a;->build()Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/I0;->m(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public k(Lcom/google/protobuf/I0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    iput-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    iget-object v0, p1, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    iput-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    iget-object v0, p1, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    iput-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    iget-object p1, p1, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    :cond_0
    return-void
.end method

.method public l(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "extensionRegistry"
        }
    .end annotation

    invoke-static {p2, p1}, Lcom/google/protobuf/I0;->a(Lcom/google/protobuf/d0;Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    iput-object p2, p0, Lcom/google/protobuf/I0;->b:Lcom/google/protobuf/d0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    iput-object p1, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    return-void
.end method

.method public m(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    iput-object v1, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    iput-object p1, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    return-object v0
.end method

.method public n()Lcom/google/protobuf/x;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    invoke-interface {v0}, Lcom/google/protobuf/b1;->toByteString()Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o(Lcom/google/protobuf/C2;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "fieldNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/I0;->d:Lcom/google/protobuf/x;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->a:Lcom/google/protobuf/x;

    if-eqz v0, :cond_1

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/I0;->c:Lcom/google/protobuf/b1;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/C2;->K(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    :goto_0
    return-void
.end method
