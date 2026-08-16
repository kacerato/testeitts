.class public Lw5/j$Q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/j$Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$Q;


# direct methods
.method public constructor <init>(Lw5/j$Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$Q$a;->a:Lw5/j$Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lw5/j$Q$a;->a:Lw5/j$Q;

    iget-object v0, p1, Lw5/j$Q;->b:Landroid/app/Activity;

    iget-object v1, p1, Lw5/j$Q;->c:Ljava/lang/String;

    iget-object p1, p1, Lw5/j$Q;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lw5/j$Q$a$a;

    invoke-direct {v1, p0}, Lw5/j$Q$a$a;-><init>(Lw5/j$Q$a;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lw5/c;->a(Landroid/app/Activity;Ljava/lang/String;ZLw5/l;)V

    return-void
.end method
