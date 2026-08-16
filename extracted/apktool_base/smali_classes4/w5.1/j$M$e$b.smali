.class public Lw5/j$M$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/j$M$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$M$e;


# direct methods
.method public constructor <init>(Lw5/j$M$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$M$e$b;->a:Lw5/j$M$e;

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

    iget-object p1, p0, Lw5/j$M$e$b;->a:Lw5/j$M$e;

    iget-object p1, p1, Lw5/j$M$e;->b:Lw5/j$M;

    iget-object v0, p1, Lw5/j$M;->b:Landroid/content/Context;

    iget-object p1, p1, Lw5/j$M;->c:Ljava/lang/String;

    new-instance v1, Lw5/j$M$e$b$a;

    invoke-direct {v1, p0}, Lw5/j$M$e$b$a;-><init>(Lw5/j$M$e$b;)V

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lw5/c;->T(Landroid/content/Context;Ljava/lang/String;Lw5/l;Z)V

    return-void
.end method
