.class public Lw6/b$j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$j$a;->a(Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lw6/b$j$a;


# direct methods
.method public constructor <init>(Lw6/b$j$a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$j$a$a;->c:Lw6/b$j$a;

    iput-object p2, p0, Lw6/b$j$a$a;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lw6/b$j$a$a;->c:Lw6/b$j$a;

    iget-object v0, v0, Lw6/b$j$a;->a:Lw6/b$j;

    iget-object v0, v0, Lw6/b$j;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw6/b$j$a$a;->c:Lw6/b$j$a;

    iget-object v0, v0, Lw6/b$j$a;->a:Lw6/b$j;

    iget-object v0, v0, Lw6/b$j;->b:Ljava/io/File;

    invoke-static {v0}, Lid/a;->g(Ljava/io/File;)Z

    iget-object v0, p0, Lw6/b$j$a$a;->c:Lw6/b$j$a;

    iget-object v0, v0, Lw6/b$j$a;->a:Lw6/b$j;

    iget-object v0, v0, Lw6/b$j;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to delete existing project folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lw6/b$j$a$a;->c:Lw6/b$j$a;

    iget-object v0, v0, Lw6/b$j$a;->a:Lw6/b$j;

    iget-object v1, v0, Lw6/b$j;->c:Ljava/io/File;

    iget-object v0, v0, Lw6/b$j;->b:Ljava/io/File;

    invoke-static {v1, v0}, Lid/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lw6/b$j$a$a$a;

    invoke-direct {v0, p0}, Lw6/b$j$a$a$a;-><init>(Lw6/b$j$a$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to copy project folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lw6/b$j$a$a$b;

    invoke-direct {v1, p0, v0}, Lw6/b$j$a$a$b;-><init>(Lw6/b$j$a$a;Ljava/lang/Throwable;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
