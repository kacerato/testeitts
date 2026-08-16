.class public Lv3/k$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/k$a;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lv3/k$a;


# direct methods
.method public constructor <init>(Lv3/k$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lv3/k$a$a;->b:Lv3/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lv3/k$a$a;->b:Lv3/k$a;

    iget-object v0, v0, Lv3/k$a;->b:Lv3/k;

    invoke-virtual {v0}, Lv3/k;->d()Lv3/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lv3/k$a$a;->b:Lv3/k$a;

    iget-object v2, v2, Lv3/k$a;->b:Lv3/k;

    invoke-interface {v0, v1, v2}, Lv3/j;->a(Landroid/app/Activity;Lv3/k;)V

    :cond_0
    return-void
.end method
