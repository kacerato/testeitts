.class public Ly6/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/c$b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly6/c$b;


# direct methods
.method public constructor <init>(Ly6/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ly6/c$b$a;->a:Ly6/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Ly6/c$b$a;->a:Ly6/c$b;

    iget-object p1, p1, Ly6/c$b;->b:Ly6/c;

    invoke-static {p1}, Ly6/c;->s1(Ly6/c;)LF6/d;

    move-result-object p1

    iget-object v0, p0, Ly6/c$b$a;->a:Ly6/c$b;

    iget-object v1, v0, Ly6/c$b;->a:Ljd/b;

    iget-object v0, v0, Ly6/c$b;->b:Ly6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v1, v0}, LF6/d;->openScript(Ljd/b;Landroid/content/Context;)V

    return-void
.end method
