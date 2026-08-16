.class final Lorg/google/googlejavaformat/java/ModifierOrderer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTrivia(Ljava/lang/StringBuilder;Lcom/google/common/collect/g1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "replacement",
            "toks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/common/collect/g1<",
            "+",
            "Lorg/google/googlejavaformat/Input$Tok;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static applyReplacements(Lorg/google/googlejavaformat/java/JavaInput;Lcom/google/common/collect/b3;)Lorg/google/googlejavaformat/java/JavaInput;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "javaInput",
            "replacementMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/java/JavaInput;",
            "Lcom/google/common/collect/b3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/google/googlejavaformat/java/JavaInput;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/b3;->g()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInput;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static asModifier(Lorg/google/googlejavaformat/Input$Token;)Lorg/openjdk/javax/lang/model/element/Modifier;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->kind()Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object p0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/ModifierOrderer;->getModifier(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/javax/lang/model/element/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static getModifier(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/javax/lang/model/element/Modifier;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->STRICTFP:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->NATIVE:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->SYNCHRONIZED:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->VOLATILE:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->TRANSIENT:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->FINAL:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->DEFAULT:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->ABSTRACT:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->PRIVATE:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->PROTECTED:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/openjdk/javax/lang/model/element/Modifier;->PUBLIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static reorderModifiers(Ljava/lang/String;)Lorg/google/googlejavaformat/java/JavaInput;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/google/googlejavaformat/java/JavaInput;

    invoke-direct {v0, p0}, Lorg/google/googlejavaformat/java/JavaInput;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lorg/google/googlejavaformat/java/ModifierOrderer;->reorderModifiers(Lorg/google/googlejavaformat/java/JavaInput;Ljava/util/Collection;)Lorg/google/googlejavaformat/java/JavaInput;

    move-result-object p0

    return-object p0
.end method

.method public static reorderModifiers(Lorg/google/googlejavaformat/java/JavaInput;Ljava/util/Collection;)Lorg/google/googlejavaformat/java/JavaInput;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "javaInput",
            "characterRanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/java/JavaInput;",
            "Ljava/util/Collection<",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lorg/google/googlejavaformat/java/JavaInput;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput;->getTokens()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInput;->characterRangesToTokenRanges(Ljava/util/Collection;)Lcom/google/common/collect/m2;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput;->getTokens()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/google/common/collect/b3;->p()Lcom/google/common/collect/b3;

    move-result-object v1

    .line 8
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Input$Token;

    .line 10
    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v3

    invoke-interface {v3}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/collect/m2;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v2}, Lorg/google/googlejavaformat/java/ModifierOrderer;->asModifier(Lorg/google/googlejavaformat/Input$Token;)Lorg/openjdk/javax/lang/model/element/Modifier;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v6

    invoke-interface {v6}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v6

    .line 15
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    .line 17
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/google/googlejavaformat/Input$Token;

    .line 19
    invoke-static {v3}, Lorg/google/googlejavaformat/java/ModifierOrderer;->asModifier(Lorg/google/googlejavaformat/Input$Token;)Lorg/openjdk/javax/lang/model/element/Modifier;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v3}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v2

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v2

    invoke-interface {v3}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v3

    invoke-interface {v3}, Lorg/google/googlejavaformat/Input$Tok;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 23
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/common/collect/Ordering;->m(Ljava/lang/Iterable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 26
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    if-lez v7, :cond_6

    .line 27
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {v8}, Lorg/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/g1;

    move-result-object v8

    invoke-static {v3, v8}, Lorg/google/googlejavaformat/java/ModifierOrderer;->addTrivia(Ljava/lang/StringBuilder;Lcom/google/common/collect/g1;)V

    .line 28
    :cond_6
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-virtual {v8}, Lorg/openjdk/javax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_7

    .line 30
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {v8}, Lorg/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/g1;

    move-result-object v8

    invoke-static {v3, v8}, Lorg/google/googlejavaformat/java/ModifierOrderer;->addTrivia(Ljava/lang/StringBuilder;Lcom/google/common/collect/g1;)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 31
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/b3;->k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 32
    :cond_9
    invoke-static {p0, v1}, Lorg/google/googlejavaformat/java/ModifierOrderer;->applyReplacements(Lorg/google/googlejavaformat/java/JavaInput;Lcom/google/common/collect/b3;)Lorg/google/googlejavaformat/java/JavaInput;

    move-result-object p0

    return-object p0
.end method
