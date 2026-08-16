.class public Lh4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Lh4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/b<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lh4/m;

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/io/File;Ljava/io/File;Ljava/lang/String;Lh4/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "firstSetup",
            "hashTableFolder",
            "directory",
            "commonPathToExclude",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh4/f$a;

    invoke-direct {v0, p0}, Lh4/f$a;-><init>(Lh4/f;)V

    iput-object v0, p0, Lh4/f;->h:Ljava/util/function/Function;

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lh4/f;->a:Ljava/io/File;

    new-instance v0, Lh4/b;

    const-class v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    invoke-direct {v0, p2, v1}, Lh4/b;-><init>(Ljava/io/File;Ljava/lang/Class;)V

    iput-object v0, p0, Lh4/f;->c:Lh4/b;

    iput-object p4, p0, Lh4/f;->e:Ljava/lang/String;

    iput-object p3, p0, Lh4/f;->b:Ljava/io/File;

    iput-object p5, p0, Lh4/f;->d:Lh4/m;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lh4/f;->d(Ljava/io/File;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public static synthetic a(Lh4/f;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lh4/f;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Ljava/io/File;ZLjava/io/File;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "directory",
            "cumullatedIsMeta",
            "originalFileFromMeta"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".meta"

    invoke-static {v1, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v3

    :goto_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    :try_start_0
    invoke-static {p1}, LTc/b;->k(Ljava/io/File;)Ljava/io/File;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    array-length p1, v0

    if-ge v2, p1, :cond_d

    aget-object p1, v0, v2

    iget-object v1, p0, Lh4/f;->d:Lh4/m;

    invoke-interface {v1, p1}, Lh4/m;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lh4/f;->b(Ljava/io/File;ZLjava/io/File;)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const/4 v1, 0x2

    const-string v6, ""

    if-nez p3, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lh4/f;->e:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {v7, v6}, Lh4/b;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v1, p0, Lh4/f;->c:Lh4/b;

    iget-object v7, p0, Lh4/f;->h:Ljava/util/function/Function;

    invoke-virtual {v1, v6, v7}, Lh4/b;->a(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    iput-wide v4, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    iget-object v4, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {v4, v6, v1}, Lh4/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lh4/f;->d:Lh4/m;

    iget-object v4, p0, Lh4/f;->f:Ljava/lang/String;

    invoke-interface {v1, p1, v4}, Lh4/m;->c(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    iget-object v7, p0, Lh4/f;->c:Lh4/b;

    iget-object v8, p0, Lh4/f;->h:Ljava/util/function/Function;

    invoke-virtual {v7, v6, v8}, Lh4/b;->a(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    if-eqz v7, :cond_c

    iget-wide v8, v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lh4/f;->d:Lh4/m;

    invoke-interface {v8, p1, v7}, Lh4/m;->b(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;)Lh4/a;

    move-result-object v8

    sget-object v9, Lh4/f$c;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    if-eq v8, v3, :cond_6

    if-eq v8, v1, :cond_5

    goto/16 :goto_4

    :cond_5
    iput-wide v4, v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    iget-object v1, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {v1, v6, v7}, Lh4/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lh4/f;->d:Lh4/m;

    iget-object v4, p0, Lh4/f;->f:Ljava/lang/String;

    invoke-interface {v1, p1, v4}, Lh4/m;->d(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    iput-wide v4, v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    iget-object p1, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {p1, v6, v7}, Lh4/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lh4/f;->e:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {v8, v7}, Lh4/b;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {v8, v7}, Lh4/b;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    iget-wide v7, v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    cmp-long v7, v4, v7

    if-eqz v7, :cond_c

    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lh4/f;->e:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {v8, v7}, Lh4/b;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object p1, p0, Lh4/f;->c:Lh4/b;

    iget-object v1, p0, Lh4/f;->h:Ljava/util/function/Function;

    invoke-virtual {p1, v7, v1}, Lh4/b;->a(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    iput-wide v4, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    iget-object v1, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {v1, v7, p1}, Lh4/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lh4/f;->d:Lh4/m;

    iget-object v1, p0, Lh4/f;->f:Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lh4/m;->c(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v8, p0, Lh4/f;->c:Lh4/b;

    iget-object v9, p0, Lh4/f;->h:Ljava/util/function/Function;

    invoke-virtual {v8, v7, v9}, Lh4/b;->a(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    iget-wide v9, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    cmp-long v9, v4, v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lh4/f;->e:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lh4/f;->h:Ljava/util/function/Function;

    invoke-virtual {v9, v10, v11}, Lh4/b;->a(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    iget-object v10, p0, Lh4/f;->d:Lh4/m;

    invoke-interface {v10, p1, v9}, Lh4/m;->b(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;)Lh4/a;

    move-result-object v10

    sget-object v11, Lh4/f$c;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v11, v10

    if-eq v10, v3, :cond_b

    if-eq v10, v1, :cond_a

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v10, p0, Lh4/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v9}, Lh4/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide v4, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    iget-object p1, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {p1, v7, v8}, Lh4/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lh4/f;->d:Lh4/m;

    iget-object v1, p0, Lh4/f;->f:Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lh4/m;->d(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v10, p0, Lh4/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v9}, Lh4/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide v4, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    iget-object p1, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {p1, v7, v8}, Lh4/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/d;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh4/f;->f:Ljava/lang/String;

    iget-object v0, p0, Lh4/f;->c:Lh4/b;

    new-instance v1, Lh4/e;

    invoke-direct {v1, p0}, Lh4/e;-><init>(Lh4/f;)V

    invoke-virtual {v0, v1}, Lh4/b;->h(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lh4/f;->b:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lh4/f;->b(Ljava/io/File;ZLjava/io/File;)V

    return-void
.end method

.method public final d(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lh4/f;->d:Lh4/m;

    invoke-interface {v2, v1}, Lh4/m;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lh4/f;->d(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh4/f;->e:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh4/f;->c:Lh4/b;

    new-instance v4, Lh4/f$b;

    invoke-direct {v4, p0, v1}, Lh4/f$b;-><init>(Lh4/f;Ljava/io/File;)V

    invoke-virtual {v3, v2, v4}, Lh4/b;->a(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lh4/f;->d:Lh4/m;

    invoke-interface {v4, v1, v3}, Lh4/m;->b(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;)Lh4/a;

    iget-object v1, p0, Lh4/f;->c:Lh4/b;

    invoke-virtual {v1, v2, v3}, Lh4/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final synthetic e(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lh4/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lh4/f;->d:Lh4/m;

    iget-object v1, p0, Lh4/f;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lh4/m;->e(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
