.class public Li5/b$o$b;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$o;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LM7/c;

.field public final synthetic d:Li5/b$o;


# direct methods
.method public constructor <init>(Li5/b$o;Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$v",
            "val$context",
            "val$tbButton"
        }
    .end annotation

    iput-object p1, p0, Li5/b$o$b;->d:Li5/b$o;

    iput-object p2, p0, Li5/b$o$b;->a:Landroid/view/View;

    iput-object p3, p0, Li5/b$o$b;->b:Landroid/content/Context;

    iput-object p4, p0, Li5/b$o$b;->c:LM7/c;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Li5/b$o$b;->d:Li5/b$o;

    iget-object v1, p0, Li5/b$o$b;->a:Landroid/view/View;

    iget-object v2, p0, Li5/b$o$b;->b:Landroid/content/Context;

    iget-object v3, p0, Li5/b$o$b;->c:LM7/c;

    invoke-virtual {v0, v1, v2, v3}, Li5/b$o;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Li5/b$o$b;->d:Li5/b$o;

    iget-object v0, v0, Li5/b$o;->b:Li5/b;

    check-cast p1, Li5/b$p;

    invoke-static {v0, p1}, Li5/b;->l0(Li5/b;Li5/b$p;)Li5/b$p;

    iget-object p1, p0, Li5/b$o$b;->d:Li5/b$o;

    iget-object v0, p0, Li5/b$o$b;->a:Landroid/view/View;

    iget-object v1, p0, Li5/b$o$b;->b:Landroid/content/Context;

    iget-object v2, p0, Li5/b$o$b;->c:LM7/c;

    invoke-virtual {p1, v0, v1, v2}, Li5/b$o;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V

    return-void
.end method
