.class public Lh7/d$c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7/d$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/d$c$a;


# direct methods
.method public constructor <init>(Lh7/d$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lh7/d$c$a$b;->a:Lh7/d$c$a;

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
            "view"
        }
    .end annotation

    iget-object p1, p0, Lh7/d$c$a$b;->a:Lh7/d$c$a;

    iget-object p1, p1, Lh7/d$c$a;->b:Lh7/d$c;

    iget-object p1, p1, Lh7/d$c;->b:Lh7/d;

    invoke-static {p1}, Lh7/d;->a(Lh7/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0}, Lh7/b;->F()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh7/d$c$a$b;->a:Lh7/d$c$a;

    iget-object v1, v1, Lh7/d$c$a;->b:Lh7/d$c;

    iget-object v1, v1, Lh7/d$c;->b:Lh7/d;

    invoke-static {v1}, Lh7/d;->b(Lh7/d;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lh7/d;->t(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
