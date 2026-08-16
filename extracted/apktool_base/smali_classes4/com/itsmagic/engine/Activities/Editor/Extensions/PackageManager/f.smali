.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f;->e()V

    return-void
.end method

.method public static b()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, LD8/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/store/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/e;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/e;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->Deleted:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    return-object v0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->FailedToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    return-object v0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->NoMoreToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    return-object v0
.end method

.method public static c(Ljava/lang/String;I)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packID",
            "version"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, LD8/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/store/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".impack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d()I
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, LD8/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/store/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()V
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f;->d()I

    move-result v0

    :cond_0
    :goto_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f;->b()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->FailedToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->NoMoreToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->Deleted:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f;->d()I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadOut",
            "doneListener"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->e()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloaded:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$a;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
