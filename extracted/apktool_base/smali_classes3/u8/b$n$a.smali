.class public Lu8/b$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b$n;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu8/b$n;


# direct methods
.method public constructor <init>(Lu8/b$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$n$a;->b:Lu8/b$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lu8/b$n$a;->b:Lu8/b$n;

    iget-object v0, v0, Lu8/b$n;->a:Lu8/b;

    invoke-virtual {v0}, Lu8/b;->b0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu8/b$n$a;->b:Lu8/b$n;

    iget-object v0, v0, Lu8/b$n;->a:Lu8/b;

    invoke-static {v0}, Lu8/b;->a(Lu8/b;)LZ6/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lu8/b$n$a;->b:Lu8/b$n;

    iget-object v2, v2, Lu8/b$n;->a:Lu8/b;

    invoke-virtual {v2}, Lu8/b;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lu8/b$n$a;->b:Lu8/b$n;

    iget-object v2, v2, Lu8/b$n;->a:Lu8/b;

    invoke-virtual {v2}, Lu8/b;->b0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ6/g;->f1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu8/b$n$a;->b:Lu8/b$n;

    iget-object v0, v0, Lu8/b$n;->a:Lu8/b;

    invoke-static {v0}, Lu8/b;->a(Lu8/b;)LZ6/g;

    move-result-object v0

    iget-object v1, p0, Lu8/b$n$a;->b:Lu8/b$n;

    iget-object v1, v1, Lu8/b$n;->a:Lu8/b;

    invoke-virtual {v1}, Lu8/b;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ6/g;->f1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
