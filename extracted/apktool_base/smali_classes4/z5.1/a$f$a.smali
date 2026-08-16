.class public Lz5/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz5/a$f;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lz5/a$f;


# direct methods
.method public constructor <init>(Lz5/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lz5/a$f$a;->b:Lz5/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz5/a$f$a;->b:Lz5/a$f;

    iget-object v0, v0, Lz5/a$f;->a:Lz5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lc8/b;->t(Landroid/app/Activity;)V

    iget-object v0, p0, Lz5/a$f$a;->b:Lz5/a$f;

    iget-object v0, v0, Lz5/a$f;->a:Lz5/a;

    invoke-static {v0}, Lz5/a;->q1(Lz5/a;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lz5/a$f$a;->b:Lz5/a$f;

    iget-object v0, v0, Lz5/a$f;->a:Lz5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S0()V

    return-void
.end method
