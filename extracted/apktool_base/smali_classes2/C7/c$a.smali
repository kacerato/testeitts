.class public LC7/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC7/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC7/c;


# direct methods
.method public constructor <init>(LC7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC7/c$a;->a:LC7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LC7/c$a;->a:LC7/c;

    iget-object v0, v0, LC7/c;->b:Landroid/app/Activity;

    new-instance v1, LC7/c$a$a;

    invoke-direct {v1, p0}, LC7/c$a$a;-><init>(LC7/c$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
