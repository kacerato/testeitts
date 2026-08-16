.class public Lw5/j$b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIc/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$b0;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:J

.field public final synthetic c:Lw5/j$b0;


# direct methods
.method public constructor <init>(Lw5/j$b0;Ljava/io/File;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$file",
            "val$lastModified"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$b0$a;->c:Lw5/j$b0;

    iput-object p2, p0, Lw5/j$b0$a;->a:Ljava/io/File;

    iput-wide p3, p0, Lw5/j$b0$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 4

    iget-object v0, p0, Lw5/j$b0$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lw5/j$b0$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lw5/j$b0$a;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    invoke-static {}, LVc/e;->f()V

    iget-object v0, p0, Lw5/j$b0$a;->c:Lw5/j$b0;

    iget-object v0, v0, Lw5/j$b0;->c:Lw5/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lw5/b;->a()V

    :cond_1
    iget-object v0, p0, Lw5/j$b0$a;->c:Lw5/j$b0;

    iget-object v0, v0, Lw5/j$b0;->b:Ljd/b;

    iget-object v0, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-static {v0}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ld8/j;->v0()V

    :cond_2
    return-void
.end method
