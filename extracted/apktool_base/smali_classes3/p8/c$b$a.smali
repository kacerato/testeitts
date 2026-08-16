.class public Lp8/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp8/c$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lp8/c$b;


# direct methods
.method public constructor <init>(Lp8/c$b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp8/c$b$a;->b:Lp8/c$b;

    iput-object p2, p0, Lp8/c$b$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lp8/c$b$a;->b:Lp8/c$b;

    iget-object v0, v0, Lp8/c$b;->b:Lp8/c;

    invoke-static {v0}, Lp8/c;->c(Lp8/c;)LJAVARuntime/FilesPanelFileMenu;

    move-result-object v0

    new-instance v1, LJAVARuntime/File;

    iget-object v2, p0, Lp8/c$b$a;->b:Lp8/c$b;

    iget-object v2, v2, Lp8/c$b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LJAVARuntime/File;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, LJAVARuntime/FilesPanelFileMenu;->onClick(LJAVARuntime/File;)V

    iget-object v0, p0, Lp8/c$b$a;->b:Lp8/c$b;

    iget-object v0, v0, Lp8/c$b;->b:Lp8/c;

    invoke-static {v0}, Lp8/c;->c(Lp8/c;)LJAVARuntime/FilesPanelFileMenu;

    move-result-object v0

    new-instance v1, LJAVARuntime/File;

    iget-object v2, p0, Lp8/c$b$a;->b:Lp8/c$b;

    iget-object v2, v2, Lp8/c$b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, LJAVARuntime/File;-><init>(Ljava/lang/String;Z)V

    iget-object v2, p0, Lp8/c$b$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, LJAVARuntime/FilesPanelFileMenu;->onClick(LJAVARuntime/File;Landroid/view/View;)V

    return-void
.end method
