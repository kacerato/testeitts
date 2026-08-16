.class public Lw5/j$L$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$L$a;->a(Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lw5/j$L$a;


# direct methods
.method public constructor <init>(Lw5/j$L$a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$loadingBarPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$L$a$a;->c:Lw5/j$L$a;

    iput-object p2, p0, Lw5/j$L$a$a;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw5/j$L$a$a;->c:Lw5/j$L$a;

    iget-object v1, v1, Lw5/j$L$a;->a:Lw5/j$L;

    iget-object v1, v1, Lw5/j$L;->a:Ljava/lang/String;

    invoke-static {v1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".meta/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lw5/j$L$a$a;->c:Lw5/j$L$a;

    iget-object v3, v3, Lw5/j$L$a;->a:Lw5/j$L;

    iget-object v3, v3, Lw5/j$L;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lw5/j$L$a$a$a;

    invoke-direct {v0, p0}, Lw5/j$L$a$a$a;-><init>(Lw5/j$L$a$a;)V

    invoke-static {v1, v0}, Lz8/a;->a(Ljava/io/File;Lz8/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw5/j$L$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    goto :goto_0

    :cond_0
    const-string v0, "Failed"

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object v0, p0, Lw5/j$L$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw5/j$L$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    :goto_0
    return-void
.end method
