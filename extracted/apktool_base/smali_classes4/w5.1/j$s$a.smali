.class public Lw5/j$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$s;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$s;


# direct methods
.method public constructor <init>(Lw5/j$s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$s$a;->a:Lw5/j$s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, Lw5/j$s$a;->a:Lw5/j$s;

    iget-object v0, v0, Lw5/j$s;->c:Landroid/app/Activity;

    new-instance v1, Lw5/j$s$a$a;

    invoke-direct {v1, p0, p1}, Lw5/j$s$a$a;-><init>(Lw5/j$s$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
