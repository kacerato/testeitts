.class public interface abstract Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract execute(Ljava/lang/String;Lorg/blacksquircle/ui/language/base/model/ColorScheme;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/blacksquircle/ui/language/base/model/ColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/blacksquircle/ui/language/base/model/ColorScheme;",
            ")",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
