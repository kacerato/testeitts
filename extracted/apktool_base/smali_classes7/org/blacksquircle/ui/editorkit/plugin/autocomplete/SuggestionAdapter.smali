.class public abstract Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/blacksquircle/ui/language/base/model/Suggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private queryText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private suggestionProvider:Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static final synthetic access$getSuggestionProvider$p(Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .locals 0

    iget-object p0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->suggestionProvider:Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    return-object p0
.end method

.method public static final synthetic access$setQueryText$p(Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->queryText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createViewHolder(Landroid/view/ViewGroup;)Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;

    invoke-direct {v0, p0}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;-><init>(Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;

    move-result-object p2

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/blacksquircle/ui/language/base/model/Suggestion;

    iget-object p3, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->queryText:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-virtual {p2, p1, p3}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;->bind(Lorg/blacksquircle/ui/language/base/model/Suggestion;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;->getItemView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final setSuggestionProvider(Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "suggestionProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->suggestionProvider:Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    return-void
.end method
