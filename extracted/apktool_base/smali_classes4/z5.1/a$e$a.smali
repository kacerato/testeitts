.class public Lz5/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz5/a$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lz5/a$e;


# direct methods
.method public constructor <init>(Lz5/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lz5/a$e$a;->b:Lz5/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object v0, v0, Lz5/a$e;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    :try_start_0
    iget-object v0, p0, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object v0, v0, Lz5/a$e;->c:Lz5/a;

    invoke-static {v0}, Lz5/a;->p1(Lz5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object v0, v0, Lz5/a$e;->c:Lz5/a;

    invoke-static {v0}, Lz5/a;->q1(Lz5/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object v0, v0, Lz5/a$e;->c:Lz5/a;

    invoke-static {v0}, Lz5/a;->s1(Lz5/a;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v1, Lz5/a$e$a$a;

    invoke-direct {v1, p0}, Lz5/a$e$a$a;-><init>(Lz5/a$e$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object v0, v0, Lz5/a$e;->c:Lz5/a;

    invoke-static {v0}, Lz5/a;->s1(Lz5/a;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v1, Lz5/a$e$a$b;

    invoke-direct {v1, p0}, Lz5/a$e$a$b;-><init>(Lz5/a$e$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LN7/c;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object v1, v1, Lz5/a$e;->c:Lz5/a;

    invoke-static {v1}, Lz5/a;->s1(Lz5/a;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object v0, v0, Lz5/a$e;->c:Lz5/a;

    invoke-static {v0}, Lz5/a;->s1(Lz5/a;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object v0, v0, Lz5/a$e;->c:Lz5/a;

    invoke-static {v0}, Lz5/a;->r1(Lz5/a;)V

    :goto_1
    return-void
.end method
