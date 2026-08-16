.class public final Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;


# direct methods
.method public constructor <init>(Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    invoke-static {v0}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->access$getSuggestionProvider$p(Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;->getAll(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/blacksquircle/ui/language/base/model/Suggestion;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/base/model/Suggestion;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lag/K;->J2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3, p1, v4}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, p1}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->access$setQueryText$p(Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    const-string p1, "results"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    iget-object p2, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
