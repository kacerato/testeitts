.class public Lw5/j$M$d$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/j$M$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$M$d$a;


# direct methods
.method public constructor <init>(Lw5/j$M$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$M$d$a$c;->a:Lw5/j$M$d$a;

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

    iget-object p1, p0, Lw5/j$M$d$a$c;->a:Lw5/j$M$d$a;

    iget-object p1, p1, Lw5/j$M$d$a;->b:Lw5/j$M$d;

    iget-object p1, p1, Lw5/j$M$d;->b:Lw5/j$M;

    iget-object v0, p1, Lw5/j$M;->b:Landroid/content/Context;

    iget-object p1, p1, Lw5/j$M;->c:Ljava/lang/String;

    new-instance v1, Lw5/j$M$d$a$c$a;

    invoke-direct {v1, p0}, Lw5/j$M$d$a$c$a;-><init>(Lw5/j$M$d$a$c;)V

    invoke-static {v0, p1, v1}, Lw5/c;->I(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    return-void
.end method
