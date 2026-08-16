.class public Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleConfiguration"
.end annotation


# instance fields
.field protected caretEnabled:Z

.field protected multilineLimits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected visibleParts:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->multilineLimits:Ljava/util/Map;

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisible(Ljava/util/Set;)V

    .line 4
    sget-object p1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    .line 5
    sget-object p1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->LENGTH:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setCaretEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Options;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Options;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;-><init>(Ljava/util/Set;)V

    .line 8
    const-string p2, "diags.showSource"

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "false"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 9
    const-string v3, "true"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    sget-object p2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, p2, v1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    sget-object p2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, p2, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 13
    :cond_1
    :goto_0
    const-string p2, "diags.formatterOptions"

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 14
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 15
    const-string v3, "short"

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 17
    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 18
    :cond_2
    const-string v3, "source"

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 19
    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v3, v1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 20
    :cond_3
    const-string v3, "-source"

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 21
    sget-object p2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, p2, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 22
    :cond_4
    const-string p2, "diags.multilinePolicy"

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 23
    const-string v3, "disabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    sget-object p2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, p2, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    goto :goto_1

    .line 25
    :cond_5
    const-string v3, "limit:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x6

    .line 26
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 27
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 28
    :try_start_0
    array-length v3, p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "*"

    if-eq v3, v1, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    goto :goto_1

    .line 29
    :cond_6
    :try_start_1
    aget-object v3, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 30
    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    aget-object v5, p2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    .line 31
    :cond_7
    aget-object v3, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 32
    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->LENGTH:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, v3, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 33
    :catch_0
    sget-object p2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    const/4 v3, -0x1

    invoke-virtual {p0, p2, v3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    .line 34
    sget-object p2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->LENGTH:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {p0, p2, v3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    .line 35
    :cond_8
    :goto_1
    const-string p2, "diags.showCaret"

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setCaretEnabled(Z)V

    goto :goto_2

    .line 38
    :cond_9
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setCaretEnabled(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->multilineLimits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getVisible()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->visibleParts:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVisible()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public isCaretEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->caretEnabled:Z

    return v0
.end method

.method public setCaretEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->caretEnabled:Z

    return-void
.end method

.method public setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->multilineLimits:Ljava/util/Map;

    const/4 v1, -0x1

    if-ge p2, v1, :cond_0

    move p2, v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVisible(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->visibleParts:Ljava/util/EnumSet;

    return-void
.end method

.method public setVisiblePart(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->visibleParts:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->visibleParts:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
