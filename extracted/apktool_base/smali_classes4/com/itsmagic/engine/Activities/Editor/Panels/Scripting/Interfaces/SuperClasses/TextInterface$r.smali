.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->inflateView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/content/Context;Ly6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$r;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suggestion"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$r;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->applySuggestion(LM6/b;)V

    return-void
.end method
