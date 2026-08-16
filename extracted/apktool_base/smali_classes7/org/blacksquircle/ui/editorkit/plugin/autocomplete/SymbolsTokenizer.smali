.class public final Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TOKEN:Ljava/lang/String; = "!@#$%^&*()_+-={}|[]:;\'<>/<.? \r\n\t"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "!@#$%^&*()_+-={}|[]:;\'<>/<.? \r\n\t"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1, v2}, Lag/P;->o3(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    return p1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p2

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "!@#$%^&*()_+-={}|[]:;\'<>/<.? \r\n\t"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v2, v3}, Lag/P;->o3(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
