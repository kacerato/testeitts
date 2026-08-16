.class public Lfd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhd/d;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postAsyncResponse"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/d;->a:Lhd/d;

    return-void
.end method

.method public static synthetic a(Lfd/d;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lfd/d;->e(Z)V

    return-void
.end method

.method public static synthetic b(Lfd/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lfd/d;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lfd/d;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lfd/d;->g(Z)V

    return-void
.end method


# virtual methods
.method public d(Lfd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lfd/d;->h(Lfd/b;)V

    return-void
.end method

.method public final synthetic e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfd/d;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lfd/d;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lfd/d;->a:Lhd/d;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "@no_ethernet@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@errorcheckingconnection@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@error@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-static {v0, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfd/d;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfd/d;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lfd/d;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfd/d;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "upload failed, missing delegate"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final g(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseReceived"
        }
    .end annotation

    new-instance v0, Lfd/c;

    invoke-direct {v0, p0, p1}, Lfd/c;-><init>(Lfd/d;Z)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Lfd/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    invoke-virtual {p1}, Lfd/b;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lfd/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfd/b;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lfd/b;->e()Lfd/b$a;

    move-result-object v3

    new-instance v4, Lokhttp3/z$b;

    invoke-direct {v4}, Lokhttp3/z$b;-><init>()V

    invoke-virtual {p1}, Lfd/b;->a()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lokhttp3/z$b;->i(JLjava/util/concurrent/TimeUnit;)Lokhttp3/z$b;

    move-result-object v4

    invoke-virtual {p1}, Lfd/b;->g()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6, v7}, Lokhttp3/z$b;->C(JLjava/util/concurrent/TimeUnit;)Lokhttp3/z$b;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/z$b;->d()Lokhttp3/z;

    move-result-object p1

    new-instance v4, Lokhttp3/y$a;

    invoke-direct {v4}, Lokhttp3/y$a;-><init>()V

    sget-object v5, Lokhttp3/y;->j:Lokhttp3/x;

    invoke-virtual {v4, v5}, Lokhttp3/y$a;->g(Lokhttp3/x;)Lokhttp3/y$a;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "UploadForm"

    const-string v7, ""

    const-string v8, "[\\p{Cntrl}&&[^\t]]"

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v9, :cond_0

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v4, v9, v5}, Lokhttp3/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid form field: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "file"

    new-instance v7, Lfd/e;

    const-string v8, "application/octet-stream"

    new-instance v9, Lfd/d$a;

    invoke-direct {v9, p0, v3}, Lfd/d$a;-><init>(Lfd/d;Lfd/b$a;)V

    invoke-direct {v7, v0, v8, v9}, Lfd/e;-><init>(Ljava/io/File;Ljava/lang/String;Lfd/e$a;)V

    invoke-virtual {v4, v5, v2, v7}, Lokhttp3/y$a;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/D;)Lokhttp3/y$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid form field: file="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    new-instance v0, Lokhttp3/C$a;

    invoke-direct {v0}, Lokhttp3/C$a;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/C$a;->q(Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v0

    invoke-virtual {v4}, Lokhttp3/y$a;->f()Lokhttp3/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/C$a;->l(Lokhttp3/D;)Lokhttp3/C$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/z;->a(Lokhttp3/C;)Lokhttp3/e;

    move-result-object p1

    new-instance v0, Lfd/d$b;

    invoke-direct {v0, p0}, Lfd/d$b;-><init>(Lfd/d;)V

    invoke-interface {p1, v0}, Lokhttp3/e;->V4(Lokhttp3/f;)V

    return-void
.end method
