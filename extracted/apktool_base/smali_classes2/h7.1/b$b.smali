.class public Lh7/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/b;->C()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/b;


# direct methods
.method public constructor <init>(Lh7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$b;->a:Lh7/b;

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

    iget-object v0, p0, Lh7/b$b;->a:Lh7/b;

    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1}, Lh7/b;->c(Lh7/b;Landroid/view/View;Lj7/b;Z)V

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

    iget-object v0, p0, Lh7/b$b;->a:Lh7/b;

    invoke-static {v0, p2, p1}, Lh7/b;->n(Lh7/b;Landroid/view/View;Lj7/b;)V

    return-void
.end method
