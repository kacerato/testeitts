.class public abstract Lcom/android/tools/r8/internal/qt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/qt;
    .locals 2

    .line 1
    const-string v0, "com.android.tools.r8.dumpinputtofile"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/qt;->b(Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/qt;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-string v0, "com.android.tools.r8.dumpinputtodirectory"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/qt;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/qt;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/mt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mt;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/qt;
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/ot;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ot;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public static b(Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/qt;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/nt;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/nt;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/rt;)Z
.end method

.method public abstract b()Ljava/nio/file/Path;
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method
