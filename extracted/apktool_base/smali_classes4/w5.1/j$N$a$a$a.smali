.class public Lw5/j$N$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$N$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw5/j$N$a$a;


# direct methods
.method public constructor <init>(Lw5/j$N$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$N$a$a$a;->b:Lw5/j$N$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    iget-object v0, p0, Lw5/j$N$a$a$a;->b:Lw5/j$N$a$a;

    iget-object v0, v0, Lw5/j$N$a$a;->c:Lw5/j$N$a;

    iget-object v0, v0, Lw5/j$N$a;->b:Lw5/j$N;

    iget-object v0, v0, Lw5/j$N;->c:Lw5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lw5/b;->a()V

    :cond_0
    iget-object v0, p0, Lw5/j$N$a$a$a;->b:Lw5/j$N$a$a;

    iget-object v0, v0, Lw5/j$N$a$a;->c:Lw5/j$N$a;

    iget-object v0, v0, Lw5/j$N$a;->b:Lw5/j$N;

    iget-object v0, v0, Lw5/j$N;->d:Ljava/lang/String;

    invoke-static {v0}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lw5/j$N$a$a$a;->b:Lw5/j$N$a$a;

    iget-object v3, v3, Lw5/j$N$a$a;->c:Lw5/j$N$a;

    iget-object v3, v3, Lw5/j$N$a;->b:Lw5/j$N;

    iget-object v3, v3, Lw5/j$N;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lw5/j$N$a$a$a;->b:Lw5/j$N$a$a;

    iget-object v3, v3, Lw5/j$N$a$a;->c:Lw5/j$N$a;

    iget-object v3, v3, Lw5/j$N$a;->b:Lw5/j$N;

    iget-object v3, v3, Lw5/j$N;->d:Ljava/lang/String;

    const-string v4, ".meta/"

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz8/a;->a(Ljava/io/File;Lz8/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-static {}, Ld8/j;->v0()V

    :cond_2
    invoke-static {}, LVc/e;->f()V

    iget-object v0, p0, Lw5/j$N$a$a$a;->b:Lw5/j$N$a$a;

    iget-object v0, v0, Lw5/j$N$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method
