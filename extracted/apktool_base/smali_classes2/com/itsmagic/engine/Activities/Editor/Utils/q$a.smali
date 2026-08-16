.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$o;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$n;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ai/"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskTag",
            "listener"
        }
    .end annotation

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Files/AI/Models/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "model.mtl"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->a(F)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->b(Ljava/io/File;)V

    return-void

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "task_tag"

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p0, "ai/"

    const-string v4, "downloadMTL"

    invoke-static {p0, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$i;

    invoke-direct {v3, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;Ljava/io/File;)V

    invoke-static {p0, v0, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/g;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "User not logged!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskTag",
            "listener"
        }
    .end annotation

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Files/AI/Models/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "model.obj"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->a(F)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->b(Ljava/io/File;)V

    return-void

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "task_tag"

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p0, "ai/"

    const-string v4, "downloadObj"

    invoke-static {p0, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$g;

    invoke-direct {v3, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;Ljava/io/File;)V

    invoke-static {p0, v0, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/g;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "User not logged!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskTag",
            "name",
            "listener"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Files/AI/Models/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "Image_0"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-interface {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->a(F)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->b(Ljava/io/File;)V

    return-void

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "task_tag"

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadTexture"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ai/"

    invoke-static {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;Ljava/io/File;)V

    invoke-static {p0, v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/g;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "User not logged!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(ILcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offset",
            "listener"
        }
    .end annotation

    new-instance v0, Led/c;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$a;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;)V

    invoke-direct {v0, v1}, Led/c;-><init>(Lhd/d;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$b;-><init>(I)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v1, "ai/"

    const-string v2, "getCommunityModels"

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, p1, v2, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static e(ILcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offset",
            "listener"
        }
    .end annotation

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "User not logged!"

    invoke-interface {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;->onError(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Led/c;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$j;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;)V

    invoke-direct {v0, v1}, Led/c;-><init>(Lhd/d;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$k;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$k;-><init>(I)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v1, "ai/"

    const-string v2, "getModels"

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, p1, v2, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$n;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskTag",
            "listener"
        }
    .end annotation

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Led/c;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$e;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$n;)V

    invoke-direct {v0, v1}, Led/c;-><init>(Lhd/d;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$f;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$f;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v1, "ai/"

    const-string v2, "getProgress"

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, p1, v2, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Led/c;->d(Lhd/e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "User not logged!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "urlAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskTag"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "task_tag"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p0, "ai/"

    const-string v1, "downloadThumb"

    invoke-static {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/itsmagic/engine/Activities/Editor/Utils/q$a$o;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prompt",
            "negative_prompt",
            "art_style",
            "target_polycount",
            "currency",
            "listener"
        }
    .end annotation

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Led/c;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$c;

    invoke-direct {v1, p5}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$o;)V

    invoke-direct {v0, v1}, Led/c;-><init>(Lhd/d;)V

    new-instance p5, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$d;

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string p1, "ai/"

    const-string p2, "text_to_3d"

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p2

    sget-boolean p3, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p1, p5, p2, p3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Led/c;->d(Lhd/e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "User not logged!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
