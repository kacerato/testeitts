.class public Lh7/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/e;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/e;


# direct methods
.method public constructor <init>(Lh7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/e$b;->a:Lh7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj7/b;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    iget-object v0, p0, Lh7/e$b;->a:Lh7/e;

    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1}, Lh7/e;->b(Lh7/e;Landroid/view/View;Lj7/b;Z)V

    return-void
.end method

.method public b(Lj7/b;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eElement",
            "v"
        }
    .end annotation

    iget-object v0, p0, Lh7/e$b;->a:Lh7/e;

    iget-object v0, v0, Lh7/e;->d:Ln7/f;

    invoke-interface {v0, p1, p2}, Ln7/f;->g(Lj7/b;Landroid/view/View;)V

    return-void
.end method
