.class public LF5/c$a$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF5/c$a$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LF5/c$a$a$a;


# direct methods
.method public constructor <init>(LF5/c$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LF5/c$a$a$a$b;->a:LF5/c$a$a$a;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, LF5/c$a$a$a$b;->a:LF5/c$a$a$a;

    iget-object p1, p1, LF5/c$a$a$a;->b:LF5/c$a$a;

    iget-object p1, p1, LF5/c$a$a;->d:LF5/c$a;

    iget-object p1, p1, LF5/c$a;->b:LF5/c$q0;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, LF5/c$q0;->b(I)V

    iget-object p1, p0, LF5/c$a$a$a$b;->a:LF5/c$a$a$a;

    iget-object p1, p1, LF5/c$a$a$a;->b:LF5/c$a$a;

    iget-object v1, p1, LF5/c$a$a;->d:LF5/c$a;

    iget-object v2, p1, LF5/c$a$a;->b:Landroid/content/Context;

    iget-object p1, p1, LF5/c$a$a;->c:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1, v0}, LF5/c$a;->c(LF5/c$a;Landroid/content/Context;Landroid/widget/ImageView;I)V

    return-void
.end method
