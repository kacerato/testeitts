.class public Lgb/e$a$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$a$a$b;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgb/e$a$a$b;


# direct methods
.method public constructor <init>(Lgb/e$a$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$a$b$a;->a:Lgb/e$a$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    new-instance v0, Lgb/e$a$a$b$a$a;

    invoke-direct {v0, p0}, Lgb/e$a$a$b$a$a;-><init>(Lgb/e$a$a$b$a;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    invoke-interface {p1}, LZ6/c$g;->dismiss()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, Ln4/a;

    invoke-direct {v0}, Ln4/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    return-void
.end method

.method public b(LZ6/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, LZ6/c$g;->dismiss()V

    return-void
.end method
