.class public LM5/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM5/f$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:I

.field public final synthetic e:LM5/f$a;


# direct methods
.method public constructor <init>(LM5/f$a;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$file",
            "val$completed",
            "val$total"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LM5/f$a$a;->e:LM5/f$a;

    iput-object p2, p0, LM5/f$a$a;->b:Ljava/io/File;

    iput-object p3, p0, LM5/f$a$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p4, p0, LM5/f$a$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "/"

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_0
    iget-object v2, p0, LM5/f$a$a;->b:Ljava/io/File;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->c(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, LM5/f$a$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v3, v3, LM5/f$a;->b:LM5/f;

    iget v4, p0, LM5/f$a$a;->d:I

    if-gtz v4, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    int-to-float v5, v2

    int-to-float v4, v4

    div-float/2addr v5, v4

    :goto_0
    invoke-virtual {v3, v5}, LL5/b;->m(F)V

    iget-object v3, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v3, v3, LM5/f$a;->b:LM5/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LM5/f$a$a;->d:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, LL5/b;->n(Ljava/lang/String;)V

    iget v0, p0, LM5/f$a$a;->d:I

    if-lt v2, v0, :cond_2

    :goto_1
    iget-object v0, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v0, v0, LM5/f$a;->b:LM5/f;

    invoke-virtual {v0, v1}, LL5/b;->m(F)V

    iget-object v0, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v0, v0, LM5/f$a;->b:LM5/f;

    invoke-virtual {v0}, LL5/b;->b()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, LM5/f$a$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v3, v3, LM5/f$a;->b:LM5/f;

    iget v4, p0, LM5/f$a$a;->d:I

    if-gtz v4, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    int-to-float v5, v2

    int-to-float v4, v4

    div-float/2addr v5, v4

    :goto_2
    invoke-virtual {v3, v5}, LL5/b;->m(F)V

    iget-object v3, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v3, v3, LM5/f$a;->b:LM5/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LM5/f$a$a;->d:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, LL5/b;->n(Ljava/lang/String;)V

    iget v0, p0, LM5/f$a$a;->d:I

    if-lt v2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :goto_4
    iget-object v3, p0, LM5/f$a$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-object v4, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v4, v4, LM5/f$a;->b:LM5/f;

    iget v5, p0, LM5/f$a$a;->d:I

    if-gtz v5, :cond_3

    move v6, v1

    goto :goto_5

    :cond_3
    int-to-float v6, v3

    int-to-float v5, v5

    div-float/2addr v6, v5

    :goto_5
    invoke-virtual {v4, v6}, LL5/b;->m(F)V

    iget-object v4, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v4, v4, LM5/f$a;->b:LM5/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LM5/f$a$a;->d:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, LL5/b;->n(Ljava/lang/String;)V

    iget v0, p0, LM5/f$a$a;->d:I

    if-lt v3, v0, :cond_4

    iget-object v0, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v0, v0, LM5/f$a;->b:LM5/f;

    invoke-virtual {v0, v1}, LL5/b;->m(F)V

    iget-object v0, p0, LM5/f$a$a;->e:LM5/f$a;

    iget-object v0, v0, LM5/f$a;->b:LM5/f;

    invoke-virtual {v0}, LL5/b;->b()V

    :cond_4
    throw v2
.end method
