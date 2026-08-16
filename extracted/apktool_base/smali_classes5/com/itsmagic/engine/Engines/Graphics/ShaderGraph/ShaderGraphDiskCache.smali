.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;,
        Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;,
        Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;
    }
.end annotation


# static fields
.field public static final a:I = 0x2

.field public static final b:Z = true

.field public static final c:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->l(Ljava/io/File;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "base",
            "fallbackPrefix",
            "extension"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->h()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "_"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0, v1}, LTc/b;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v2

    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static c()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/l;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/l;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "\\bmaterialParams[_\\.]([A-Za-z0-9_]+)\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/_VULKAN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v1, v1, LC8/a;->a:LD8/a;

    invoke-virtual {v1}, LD8/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/vulkan/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "material_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, LIc/m;->getLongId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v0, "material"

    const-string v1, ".txt"

    invoke-static {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphFilePath"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "graph_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "graph"

    const-string v1, ".txt"

    invoke-static {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static h()Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Graph/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "material_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LIc/m;->getLongId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v0, "material"

    const-string v1, ".mgsc"

    invoke-static {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphFilePath"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "graph_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "graph"

    const-string v1, ".mgsc"

    invoke-static {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compilation"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->d(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lec/f;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lec/f;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lec/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/g;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lec/g;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lec/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    return v0
.end method

.method public static synthetic l(Ljava/io/File;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "Graph"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {v3}, Lid/a;->g(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v1, "av.bin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-static {}, LN7/c;->p()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->x(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method public static m(Ljava/io/File;)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    return-object v0
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->f(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    :try_start_0
    const-class v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_d

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->vertexCode:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->fragmentCode:Ljava/lang/String;

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->version:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    return-object v1

    :cond_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->vertexCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->fragmentCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->b:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->params:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->type:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    :try_start_1
    invoke-static {v3}, Lcom/google/android/filament/filamat/MaterialBuilder$r;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v3

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->precision:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-static {v4}, Lcom/google/android/filament/filamat/MaterialBuilder$g;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v4

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    :goto_1
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    new-instance v6, Lec/f;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->name:Ljava/lang/String;

    invoke-direct {v6, v3, v2, v4}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->samplers:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1
    :cond_9
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->name:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->type:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->format:Ljava/lang/String;

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    :try_start_2
    invoke-static {v2}, Lcom/google/android/filament/filamat/MaterialBuilder$m;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v2

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->format:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/filament/filamat/MaterialBuilder$l;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v3

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->precision:Ljava/lang/String;

    if-eqz v4, :cond_b

    invoke-static {v4}, Lcom/google/android/filament/filamat/MaterialBuilder$g;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v4

    goto :goto_3

    :cond_b
    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    :goto_3
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    new-instance v6, Lec/g;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->name:Ljava/lang/String;

    invoke-direct {v6, v2, v3, v4, v1}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_c
    return-object v0

    :cond_d
    :goto_4
    return-object v1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_5
    return-object v1
.end method

.method public static o(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphFilePath"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    :try_start_0
    const-class v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_d

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->vertexCode:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->fragmentCode:Ljava/lang/String;

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->version:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    return-object v1

    :cond_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->vertexCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->fragmentCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->b:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->params:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->type:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    :try_start_1
    invoke-static {v3}, Lcom/google/android/filament/filamat/MaterialBuilder$r;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v3

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->precision:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-static {v4}, Lcom/google/android/filament/filamat/MaterialBuilder$g;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v4

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    :goto_1
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    new-instance v6, Lec/f;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->name:Ljava/lang/String;

    invoke-direct {v6, v3, v2, v4}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->samplers:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1
    :cond_9
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->name:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->type:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->format:Ljava/lang/String;

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    :try_start_2
    invoke-static {v2}, Lcom/google/android/filament/filamat/MaterialBuilder$m;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v2

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->format:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/filament/filamat/MaterialBuilder$l;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v3

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->precision:Ljava/lang/String;

    if-eqz v4, :cond_b

    invoke-static {v4}, Lcom/google/android/filament/filamat/MaterialBuilder$g;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v4

    goto :goto_3

    :cond_b
    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    :goto_3
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    new-instance v6, Lec/g;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->name:Ljava/lang/String;

    invoke-direct {v6, v2, v3, v4, v1}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_c
    return-object v0

    :cond_d
    :goto_4
    return-object v1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_5
    return-object v1
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->m(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, LIc/n;->c([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static q(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphFilePath"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->m(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, LIc/n;->c([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static r(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    return-object v0
.end method

.method public static s(Ljava/io/File;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "bytes"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public static t(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "compilation"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->f(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$a;)V

    const/4 v2, 0x2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->version:I

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->vertexCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->fragmentCode:Ljava/lang/String;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->params:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->samplers:Ljava/util/List;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lec/f;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;

    invoke-direct {v4, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$a;)V

    invoke-virtual {v3}, Lec/f;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v1

    :goto_1
    iput-object v5, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->type:Ljava/lang/String;

    invoke-virtual {v3}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v1

    :goto_2
    iput-object v3, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->precision:Ljava/lang/String;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->params:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/g;

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;

    invoke-direct {v3, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$a;)V

    invoke-virtual {v2}, Lec/g;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lec/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lec/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v1

    :goto_4
    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->type:Ljava/lang/String;

    invoke-virtual {v2}, Lec/g;->a()Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lec/g;->a()Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_a
    move-object v4, v1

    :goto_5
    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->format:Ljava/lang/String;

    invoke-virtual {v2}, Lec/g;->c()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lec/g;->c()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_b
    move-object v2, v1

    :goto_6
    iput-object v2, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->precision:Ljava/lang/String;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->samplers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->x(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static u(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphFilePath",
            "compilation"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$a;)V

    const/4 v2, 0x2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->version:I

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->vertexCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->fragmentCode:Ljava/lang/String;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->params:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->samplers:Ljava/util/List;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lec/f;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;

    invoke-direct {v4, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$a;)V

    invoke-virtual {v3}, Lec/f;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v1

    :goto_1
    iput-object v5, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->type:Ljava/lang/String;

    invoke-virtual {v3}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v1

    :goto_2
    iput-object v3, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;->precision:Ljava/lang/String;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->params:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/g;

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;

    invoke-direct {v3, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$a;)V

    invoke-virtual {v2}, Lec/g;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lec/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lec/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v1

    :goto_4
    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->type:Ljava/lang/String;

    invoke-virtual {v2}, Lec/g;->a()Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lec/g;->a()Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_a
    move-object v4, v1

    :goto_5
    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->format:Ljava/lang/String;

    invoke-virtual {v2}, Lec/g;->c()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lec/g;->c()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_b
    move-object v2, v1

    :goto_6
    iput-object v2, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;->precision:Ljava/lang/String;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;->samplers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->x(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "graphData"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->q()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LIc/n;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->s(Ljava/io/File;[B)V

    return-void
.end method

.method public static w(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphFilePath",
            "graphData"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->q()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LIc/n;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->s(Ljava/io/File;[B)V

    return-void
.end method

.method public static x(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "text"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
