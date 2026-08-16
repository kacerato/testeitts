.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$q;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$r;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$p;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "cloudsync/"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$r;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "projectName",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$k;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$r;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$l;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$l;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "cloudsync/"

    const-string v3, "deleteProject"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectName",
            "inProjectPath",
            "listener"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$g;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v1, "cloudsync/"

    const-string v2, "downloadFile"

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LB7/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {v0, v1, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/g;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "projectName",
            "inProjectPath"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$e;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string p0, "cloudsync/"

    const-string p1, "excludeFile"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3c

    invoke-static {p0, v0, p1}, LB7/f;->d(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$r;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectName",
            "inProjectPath",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$m;

    invoke-direct {v2, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$r;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$n;

    invoke-direct {p2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string p1, "cloudsync/"

    const-string v2, "getFileLM"

    invoke-static {p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$q;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$q;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$h;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$h;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "cloudsync/"

    const-string v4, "getProjects"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "projectName",
            "localReport"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$o;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$o;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string p0, "cloudsync/"

    const-string p1, "getReport"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3c

    invoke-static {p0, v0, p1}, LB7/f;->d(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$r;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$i;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$r;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$j;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$j;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "cloudsync/"

    const-string v4, "getUserInfo"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$p;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectName",
            "inProjectPath",
            "clientLastModified",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$b;

    invoke-direct {v2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$p;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p3, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$c;

    invoke-direct {p3, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string p1, "cloudsync/"

    const-string p2, "isUpToDate"

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p3, v0, p2}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectName",
            "inProjectPath",
            "clientLastModified"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string p0, "cloudsync/"

    const-string p1, "isUpToDate"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3c

    invoke-static {p0, v0, p1}, LB7/f;->d(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectName",
            "inProjectPath",
            "clientLastModified",
            "file",
            "listener"
        }
    .end annotation

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;-><init>(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "File not found!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
