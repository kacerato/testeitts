.class public Lw5/j$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$c;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lw5/j$c;


# direct methods
.method public constructor <init>(Lw5/j$c;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$c$a;->c:Lw5/j$c;

    iput-object p2, p0, Lw5/j$c$a;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lw5/j$c$a;->c:Lw5/j$c;

    iget-object v1, v0, Lw5/j$c;->a:Landroid/content/Context;

    iget-object v0, v0, Lw5/j$c;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lw5/j;->d(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lw5/j$c$a$a;

    invoke-direct {v0, p0}, Lw5/j$c$a$a;-><init>(Lw5/j$c$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
