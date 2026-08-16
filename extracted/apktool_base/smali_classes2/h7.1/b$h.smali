.class public Lh7/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/b;->A(Ljava/io/File;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Lh7/b;


# direct methods
.method public constructor <init>(Lh7/b;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$file",
            "val$ipp",
            "val$description",
            "val$onAdded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$h;->f:Lh7/b;

    iput-object p2, p0, Lh7/b$h;->b:Ljava/io/File;

    iput-object p3, p0, Lh7/b$h;->c:Ljava/lang/String;

    iput-object p4, p0, Lh7/b$h;->d:Ljava/lang/String;

    iput-object p5, p0, Lh7/b$h;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v0}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v0

    iget-object v1, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ln7/e;->h(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".meta"

    invoke-static {v1, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-static {v1}, LTc/b;->k(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v1}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v1

    iget-object v2, p0, Lh7/b$h;->b:Ljava/io/File;

    iget-object v3, p0, Lh7/b$h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ln7/e;->d(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    iget-object v1, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v1}, Lh7/b;->r(Lh7/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lj7/f;

    iget-object v2, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lj7/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lj7/h;

    iget-object v2, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lj7/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lh7/b$h;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lj7/b;->C(Ljava/lang/String;)V

    iget-object v0, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v0}, Lh7/b;->r(Lh7/b;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lj7/b;->B(Z)V

    iget-object v0, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v0}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v0

    iget-object v2, p0, Lh7/b$h;->b:Ljava/io/File;

    iget-object v3, p0, Lh7/b$h;->c:Ljava/lang/String;

    iget-object v4, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v4}, Lh7/b;->r(Lh7/b;)Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ln7/e;->e(Ljava/io/File;Ljava/lang/String;Z)LF7/j;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, LF7/i;->s(LF7/j;)V

    :cond_4
    iget-object v0, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v0, v1}, Lh7/b;->q(Lh7/b;Lj7/b;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v0}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v0

    iget-object v1, p0, Lh7/b$h;->b:Ljava/io/File;

    iget-object v2, p0, Lh7/b$h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ln7/e;->d(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v0, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v1}, Lh7/b;->r(Lh7/b;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    new-instance v1, Lj7/e;

    iget-object v3, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3, v2}, Lj7/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lj7/d;)V

    goto :goto_2

    :cond_8
    new-instance v1, Lj7/g;

    iget-object v3, p0, Lh7/b$h;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3, v2}, Lj7/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lj7/d;)V

    :goto_2
    iget-object v0, p0, Lh7/b$h;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lj7/b;->C(Ljava/lang/String;)V

    iget-object v0, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v0}, Lh7/b;->r(Lh7/b;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lj7/b;->B(Z)V

    iget-object v0, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v0}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v0

    iget-object v2, p0, Lh7/b$h;->b:Ljava/io/File;

    iget-object v3, p0, Lh7/b$h;->c:Ljava/lang/String;

    iget-object v4, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v4}, Lh7/b;->r(Lh7/b;)Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ln7/e;->e(Ljava/io/File;Ljava/lang/String;Z)LF7/j;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v1, v0}, LF7/i;->s(LF7/j;)V

    :cond_9
    iget-object v0, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v0, v1}, Lh7/b;->q(Lh7/b;Lj7/b;)V

    :goto_3
    iget-object v0, p0, Lh7/b$h;->f:Lh7/b;

    invoke-static {v0}, Lh7/b;->l(Lh7/b;)V

    iget-object v0, p0, Lh7/b$h;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
