.class public Lz4/a$c$a$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/a$c$a$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lz4/a$c$a$a$a$a;


# direct methods
.method public constructor <init>(Lz4/a$c$a$a$a$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$5",
            "val$finalUnziped"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz4/a$c$a$a$a$a$a;->c:Lz4/a$c$a$a$a$a;

    iput-boolean p2, p0, Lz4/a$c$a$a$a$a$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, Lz4/a$c$a$a$a$a$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/a$c$a$a$a$a$a;->c:Lz4/a$c$a$a$a$a;

    iget-object v0, v0, Lz4/a$c$a$a$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    iget-object v0, p0, Lz4/a$c$a$a$a$a$a;->c:Lz4/a$c$a$a$a$a;

    iget-object v0, v0, Lz4/a$c$a$a$a$a;->c:Lz4/a$c$a$a$a;

    iget-object v0, v0, Lz4/a$c$a$a$a;->b:Lz4/a$c$a$a;

    iget-object v0, v0, Lz4/a$c$a$a;->a:Lz4/a$c$a;

    iget-object v0, v0, Lz4/a$c$a;->a:Lz4/a$c;

    iget-object v0, v0, Lz4/a$c;->b:Landroid/view/View;

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v2, LZ6/h$g;

    invoke-direct {v2}, LZ6/h$g;-><init>()V

    const-string v3, "Nice!"

    const-string v4, "Backup restored successfully."

    invoke-static {v0, v1, v3, v4, v2}, LZ6/h;->w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/h$h;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz4/a$c$a$a$a$a$a;->c:Lz4/a$c$a$a$a$a;

    iget-object v0, v0, Lz4/a$c$a$a$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    iget-object v0, p0, Lz4/a$c$a$a$a$a$a;->c:Lz4/a$c$a$a$a$a;

    iget-object v0, v0, Lz4/a$c$a$a$a$a;->c:Lz4/a$c$a$a$a;

    iget-object v0, v0, Lz4/a$c$a$a$a;->b:Lz4/a$c$a$a;

    iget-object v0, v0, Lz4/a$c$a$a;->a:Lz4/a$c$a;

    iget-object v0, v0, Lz4/a$c$a;->a:Lz4/a$c;

    iget-object v0, v0, Lz4/a$c;->b:Landroid/view/View;

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v2, LZ6/i$g;

    invoke-direct {v2}, LZ6/i$g;-><init>()V

    const-string v3, "Ops!"

    const-string v4, "Something went wrong."

    invoke-static {v0, v1, v3, v4, v2}, LZ6/i;->w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    :goto_0
    return-void
.end method
