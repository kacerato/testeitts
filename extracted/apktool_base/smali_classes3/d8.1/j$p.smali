.class public Ld8/j$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/j;->r0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$javaMetaInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld8/j$p;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The script "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld8/j$p;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " will be recompiled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    iget-object v0, p0, Ld8/j$p;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    sget-object v2, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld8/j$p;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "the pendingJava list already contains the script"

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v4, "_PROJECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2
    iput-boolean v1, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    goto :goto_1

    :cond_3
    sget-object v0, Ld8/j;->s:Ljava/util/List;

    new-instance v1, Ld8/j$p$a;

    invoke-direct {v1, p0}, Ld8/j$p$a;-><init>(Ld8/j$p;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_4
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->f(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Ld8/j;->g()V

    :goto_2
    return-void
.end method
