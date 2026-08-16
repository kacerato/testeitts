.class public Ld8/j$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/j;->n0(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld8/j$l;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folder"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v3, "_I"

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".meta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lz8/a;->d(Ljava/io/File;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ld8/j$l;->a(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, "Loading project"

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    invoke-static {}, Ld8/j;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v1, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Ld8/j;->j:Lq8/a;

    invoke-virtual {v1}, Lq8/a;->b()V

    invoke-static {}, Leb/a;->e()V

    iget-object v1, p0, Ld8/j$l;->b:Landroid/app/Activity;

    invoke-static {v1}, Lid/a;->e(Landroid/content/Context;)Z

    iget-object v1, p0, Ld8/j$l;->b:Landroid/app/Activity;

    invoke-static {v1}, Ld8/j;->c(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Ld8/j;->B:Z

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ld8/j$l;->a(Ljava/io/File;)V

    :cond_0
    iget-object v1, p0, Ld8/j$l;->b:Landroid/app/Activity;

    invoke-static {v1}, Ld8/j;->d0(Landroid/content/Context;)V

    invoke-static {}, Ld8/j;->B0()V

    invoke-static {}, Lnb/a;->d()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld8/j;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v3, "_PROJECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    goto :goto_0

    :cond_3
    sget-object v0, Ld8/j;->s:Ljava/util/List;

    new-instance v1, Ld8/j$l$a;

    invoke-direct {v1, p0}, Ld8/j$l$a;-><init>(Ld8/j$l;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_4
    invoke-static {}, Ld8/j;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->f(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    const-string v0, "Failed to extract core!"

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-static {}, Ld8/j;->g()V

    :goto_1
    return-void
.end method
