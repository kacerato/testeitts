.class public Lw3/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/f;->c(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Lw3/f$c;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lw3/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$selectedImage",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw3/f$a;->b:Landroid/net/Uri;

    iput-object p2, p0, Lw3/f$a;->c:Lw3/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/gallery/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lw3/f$a;->b:Landroid/net/Uri;

    invoke-static {v2, v0}, Lw3/f;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw3/f$a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "external_files_files/ITsMagic/Projects"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lw3/f$a;->b:Landroid/net/Uri;

    invoke-static {v0, v2}, LVc/f;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw3/f$a$a;

    invoke-direct {v2, p0, v0, v1}, Lw3/f$a$a;-><init>(Lw3/f$a;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v2}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lw3/f$a$b;

    invoke-direct {v0, p0}, Lw3/f$a$b;-><init>(Lw3/f$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
