.class public Lw5/j$M$h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/j$M$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$M$h;


# direct methods
.method public constructor <init>(Lw5/j$M$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$M$h$b;->a:Lw5/j$M$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lw5/j$M$h$b;->a:Lw5/j$M$h;

    iget-object v0, v0, Lw5/j$M$h;->b:Lw5/j$M;

    iget-object v0, v0, Lw5/j$M;->c:Ljava/lang/String;

    new-instance v1, Lw5/j$M$h$b$a;

    invoke-direct {v1, p0}, Lw5/j$M$h$b$a;-><init>(Lw5/j$M$h$b;)V

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->h(Landroid/view/View;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
