.class public interface abstract Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearLines()V
.end method

.method public abstract deleteLine(I)V
.end method

.method public abstract getAll(Ljava/lang/String;)Ljava/util/Set;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lorg/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract processLine(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
