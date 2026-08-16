.class public Lw5/j$J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/e$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$J;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$J;


# direct methods
.method public constructor <init>(Lw5/j$J;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$J$a;->a:Lw5/j$J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "canceled"
        }
    .end annotation

    iget-object p2, p0, Lw5/j$J$a;->a:Lw5/j$J;

    iget-object p2, p2, Lw5/j$J;->a:Ljava/lang/String;

    invoke-static {p2}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lw5/j$J$a;->a:Lw5/j$J;

    iget-object v0, v0, Lw5/j$J;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lw5/j$J$a$a;

    invoke-direct {v1, p0, p1, v0}, Lw5/j$J$a$a;-><init>(Lw5/j$J$a;FLjava/lang/String;)V

    invoke-static {p2, v1}, Lv5/b;->y1(Ljava/lang/String;Lv5/b$i;)V

    return-void
.end method
