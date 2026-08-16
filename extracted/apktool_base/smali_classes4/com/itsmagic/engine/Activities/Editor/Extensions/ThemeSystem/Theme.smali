.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Ljava/util/concurrent/CountDownLatch;

.field public static final d:Ljava/lang/Object;

.field public static e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

.field public static f:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

.field public static g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

.field public static h:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$a;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$a;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Landroid/content/Context;
    .locals 1

    invoke-static {}, LN7/c;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, LN7/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/f;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static B(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LN7/c;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, LN7/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, LN7/f;->e(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string p0, "ThemeSystem"

    const-string v0, "No Main/SideMain available to run UI task."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static C()V
    .locals 5

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->l()Lcom/google/gson/Gson;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, LD8/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/settings.config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static D(Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "theme"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->y()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->o()Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;->selectedTheme:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->C()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->x(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$c;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static E(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->u(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->r()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->k(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->t()V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->s()V

    return-void
.end method

.method public static synthetic f()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic g()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->c:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static synthetic h()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static i(LAc/b;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->y()V

    if-eqz p0, :cond_3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    const-string v1, "ThemeSystem"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->c(LAc/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->f(LAc/b;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve color tag in active theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->c(LAc/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->f(LAc/b;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve color tag in fallback theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color tag not found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " at theme "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->g()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "<none>"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Tag can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, LAc/b;

    invoke-direct {v0, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->l()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ASSET@@Editor/Themes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ThemeSystem"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-class v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid built-in theme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;

    const-string v1, "Invalid built-in theme"

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->k(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LW7/b;->f:LC8/a;

    iget-object v4, v4, LC8/a;->a:LD8/a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, LD8/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load built-in theme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;

    const-string v1, "Failed to load built-in theme"

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static l()Lcom/google/gson/Gson;
    .locals 3

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/OHString/OHStringSerializer;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Native/OHString/OHStringSerializer;-><init>()V

    const-class v2, LAc/b;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static m()Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->y()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->o()Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;->selectedTheme:Ljava/lang/String;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;

    invoke-direct {v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->y()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->m()Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->t()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static p()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, LD8/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static q()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->y()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, LD8/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->E(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->h()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v4, v3

    :cond_1
    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;

    invoke-direct {v5, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static r()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Failed to list built-in themes from assets"

    const-string v1, "ThemeSystem"

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    const-string v4, "Editor/Themes"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-nez v4, :cond_2

    :cond_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_3
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :try_start_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v2
.end method

.method public static s()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;->selectedTheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->x(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "Default"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->x(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    if-nez v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    :cond_1
    return-void
.end method

.method public static t()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v1, v1, LC8/a;->a:LD8/a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, LD8/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/settings.config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, LX7/a;->z(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->l()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    :cond_0
    :goto_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->l()Lcom/google/gson/Gson;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$Settings;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, LD8/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static u(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->l()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, LD8/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->A()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, LX7/a;->z(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load theme "

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->k(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(LAc/b;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->y()V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->c(LAc/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->f(LAc/b;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->c(LAc/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;->f(LAc/b;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return v0
.end method

.method public static w([LAc/b;)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->y()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->v(LAc/b;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wantedTheme"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->p()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->u(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    move-result-object v2

    sput-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$b;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$b;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->B(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "Default"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->u(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/ThemeData;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load theme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static z()Landroid/app/Activity;
    .locals 1

    invoke-static {}, LN7/c;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, LN7/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/f;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
