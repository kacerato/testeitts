.class public Lz4/a$c$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/a$c$a$a$a;->a(Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lz4/a$c$a$a$a;


# direct methods
.method public constructor <init>(Lz4/a$c$a$a$a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$4",
            "val$loadingBar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz4/a$c$a$a$a$a;->c:Lz4/a$c$a$a$a;

    iput-object p2, p0, Lz4/a$c$a$a$a$a;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lz4/a$c$a$a$a$a;->c:Lz4/a$c$a$a$a;

    iget-object v0, v0, Lz4/a$c$a$a$a;->b:Lz4/a$c$a$a;

    iget-object v0, v0, Lz4/a$c$a$a;->a:Lz4/a$c$a;

    iget-object v0, v0, Lz4/a$c$a;->a:Lz4/a$c;

    iget-object v0, v0, Lz4/a$c;->c:LA4/b;

    invoke-virtual {v0}, LA4/b;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v1, v1, LC8/a;->a:LD8/a;

    iget-object v2, p0, Lz4/a$c$a$a$a$a;->c:Lz4/a$c$a$a$a;

    iget-object v2, v2, Lz4/a$c$a$a$a;->b:Lz4/a$c$a$a;

    iget-object v2, v2, Lz4/a$c$a$a;->a:Lz4/a$c$a;

    iget-object v2, v2, Lz4/a$c$a;->a:Lz4/a$c;

    iget-object v2, v2, Lz4/a$c;->e:Lz4/a;

    invoke-static {v2}, Lz4/a;->h(Lz4/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, LD8/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnd/e;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lz4/a$c$a$a$a$a$a;

    invoke-direct {v1, p0, v0}, Lz4/a$c$a$a$a$a$a;-><init>(Lz4/a$c$a$a$a$a;Z)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
