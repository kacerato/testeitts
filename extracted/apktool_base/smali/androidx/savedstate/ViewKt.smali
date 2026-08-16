.class public final Landroidx/savedstate/ViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic findViewTreeSavedStateRegistryOwner(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;
    .locals 1
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Replaced by View.findViewTreeSavedStateRegistryOwner() from savedstate module"
        replaceWith = .subannotation Lnf/g0;
            expression = "findViewTreeSavedStateRegistryOwner()"
            imports = {
                "androidx.savedstate.findViewTreeSavedStateRegistryOwner"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/savedstate/ViewKt;->findViewTreeSavedStateRegistryOwner(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object p0

    return-object p0
.end method
