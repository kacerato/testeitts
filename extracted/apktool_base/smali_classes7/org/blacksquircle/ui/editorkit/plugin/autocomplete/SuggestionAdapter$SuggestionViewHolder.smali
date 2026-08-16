.class public abstract Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SuggestionViewHolder"
.end annotation


# instance fields
.field private final itemView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;->itemView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract bind(Lorg/blacksquircle/ui/language/base/model/Suggestion;Ljava/lang/String;)V
    .param p1    # Lorg/blacksquircle/ui/language/base/model/Suggestion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final getItemView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method
