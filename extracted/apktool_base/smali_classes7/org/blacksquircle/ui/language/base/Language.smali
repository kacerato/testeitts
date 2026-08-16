.class public interface abstract Lorg/blacksquircle/ui/language/base/Language;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getParser()Lorg/blacksquircle/ui/language/base/parser/LanguageParser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getStyler()Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
