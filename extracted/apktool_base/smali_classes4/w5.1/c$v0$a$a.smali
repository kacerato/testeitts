.class public Lw5/c$v0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c$v0$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/c$v0$a;


# direct methods
.method public constructor <init>(Lw5/c$v0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$v0$a$a;->a:Lw5/c$v0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lw5/c$v0$a$a;->a:Lw5/c$v0$a;

    iget-object v0, v0, Lw5/c$v0$a;->c:Lw5/c$v0;

    iget-object v0, v0, Lw5/c$v0;->d:Landroid/app/Activity;

    new-instance v1, Lw5/c$v0$a$a$b;

    invoke-direct {v1, p0}, Lw5/c$v0$a$a$b;-><init>(Lw5/c$v0$a$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lw5/c$v0$a$a;->a:Lw5/c$v0$a;

    iget-object v0, v0, Lw5/c$v0$a;->c:Lw5/c$v0;

    iget-object v0, v0, Lw5/c$v0;->d:Landroid/app/Activity;

    new-instance v1, Lw5/c$v0$a$a$a;

    invoke-direct {v1, p0}, Lw5/c$v0$a$a$a;-><init>(Lw5/c$v0$a$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
