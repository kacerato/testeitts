.class public Lt5/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/j;->n1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt5/j;


# direct methods
.method public constructor <init>(Lt5/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lt5/j$a;->b:Lt5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt5/j$a;->b:Lt5/j;

    invoke-static {v0}, Lt5/j;->p1(Lt5/j;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    new-instance v1, Lt5/j$a$a;

    invoke-direct {v1, p0, v0}, Lt5/j$a$a;-><init>(Lt5/j$a;I)V

    invoke-static {v1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return-void
.end method
