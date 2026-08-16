.class public LK6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "/*CURSOR*/"


# instance fields
.field public final a:LK6/b;

.field public final b:LK6/d;

.field public final c:LK6/c;

.field public final d:LL6/k;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LK6/b;

    invoke-direct {v0}, LK6/b;-><init>()V

    iput-object v0, p0, LK6/a;->a:LK6/b;

    new-instance v0, LK6/d;

    invoke-direct {v0}, LK6/d;-><init>()V

    iput-object v0, p0, LK6/a;->b:LK6/d;

    new-instance v0, LK6/c;

    invoke-direct {v0}, LK6/c;-><init>()V

    iput-object v0, p0, LK6/a;->c:LK6/c;

    new-instance v0, LL6/k;

    invoke-direct {v0}, LL6/k;-><init>()V

    iput-object v0, p0, LK6/a;->d:LL6/k;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LK6/a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LK6/a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, ""

    iput-object v0, p0, LK6/a;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(LK6/a;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;JZ)V
    .locals 0

    invoke-virtual/range {p0 .. p10}, LK6/a;->k(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static synthetic b(LK6/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, LK6/a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(LK6/a;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, LK6/a;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final d(LM6/b;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suggestion"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, LM6/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, LK6/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, LK6/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, LM6/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v2}, LK6/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, LM6/b;->l:Ljava/lang/String;

    invoke-virtual {p0, v2}, LK6/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, LM6/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v2}, LK6/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, LM6/b;->f:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, LM6/b;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, LM6/b;->o:Ljava/lang/String;

    invoke-virtual {p0, v2}, LK6/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, LM6/b;->n:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, LM6/b;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, LK6/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suggestions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM6/b;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM6/b;

    iget-object v1, v1, LM6/b;->q:LM6/b$a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM6/b;

    iget-object v1, v1, LM6/b;->q:LM6/b$a;

    iget-object v1, v1, LM6/b$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, LK6/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM6/b;

    iget-object p1, p1, LM6/b;->q:LM6/b$a;

    iget-object p1, p1, LM6/b$a;->a:Ljava/lang/String;

    invoke-static {p1}, LK6/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    move-object v1, p1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public final g(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textInterface",
            "suggestions",
            "allowAutomaticApplication"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;",
            "Ljava/util/List<",
            "LM6/b;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isTypingTemporarilyBlockedPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isProgrammaticTextChangeAllowedPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    return-void

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->showSuggestions(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, LK6/a;->e(Ljava/util/List;)Z

    move-result p3

    invoke-virtual {p0, p2}, LK6/a;->i(Ljava/util/List;)LM6/b;

    move-result-object v0

    const-wide/16 v1, 0x190

    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, LK6/a;->d(LM6/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LK6/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->applySuggestion(LM6/b;)V

    invoke-virtual {p1, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->blockTypingFor(J)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    invoke-virtual {p0, v0}, LK6/a;->d(LM6/b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK6/a;->g:Ljava/lang/String;

    return-void

    :cond_2
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p3

    iget-object p3, p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->codeCompletion:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v0, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LM6/b;

    invoke-virtual {p0, p3}, LK6/a;->d(LM6/b;)Ljava/lang/String;

    move-result-object p3

    iget-object v4, p0, LK6/a;->g:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM6/b;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->applySuggestion(LM6/b;)V

    invoke-virtual {p1, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->blockTypingFor(J)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    invoke-virtual {p0, p2}, LK6/a;->d(LM6/b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK6/a;->g:Ljava/lang/String;

    return-void

    :cond_3
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p3

    iget-object p3, p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->codeCompletion:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;->d()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v4, 0x2

    if-lt p3, v4, :cond_9

    invoke-static {p2}, LK6/e;->f(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LM6/b;

    iget-object p3, p3, LM6/b;->b:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM6/b;

    iget-object v4, v4, LM6/b;->q:LM6/b$a;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM6/b;

    iget-object v4, v4, LM6/b;->q:LM6/b$a;

    iget-object v4, v4, LM6/b$a;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v4}, LK6/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM6/b;

    iget-object v5, v5, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_6

    invoke-virtual {p3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p3, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_9

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM6/b;

    invoke-virtual {p0, v0}, LK6/a;->d(LM6/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, LK6/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM6/b;

    iput-boolean v3, p2, LM6/b;->f:Z

    iput-boolean v3, p2, LM6/b;->g:Z

    iput-object p3, p2, LM6/b;->a:Ljava/lang/String;

    iput-object p3, p2, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->applySuggestion(LM6/b;)V

    invoke-virtual {p1, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->blockTypingFor(J)V

    invoke-virtual {p0, p2}, LK6/a;->d(LM6/b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK6/a;->g:Ljava/lang/String;

    return-void

    :cond_9
    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->showSuggestions(Ljava/util/List;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineText"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, LK6/h;->b(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-le v2, v1, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-gt v2, v1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final i(Ljava/util/List;)LM6/b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suggestions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM6/b;",
            ">;)",
            "LM6/b;"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->codeCompletion:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->codeCompletion:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM6/b;

    if-eqz v2, :cond_e

    iget-object v3, v2, LM6/b;->q:LM6/b$a;

    if-eqz v3, :cond_e

    iget-object v3, v3, LM6/b$a;->a:Ljava/lang/String;

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, v3}, LK6/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-object v2, v2, LM6/b;->q:LM6/b$a;

    iget-object v2, v2, LM6/b$a;->a:Ljava/lang/String;

    invoke-static {v2}, LK6/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    move-object v3, v2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_5
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM6/b;

    if-eqz v4, :cond_6

    iget-boolean v5, v4, LM6/b;->f:Z

    if-eqz v5, :cond_6

    iget-object v5, v4, LM6/b;->o:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    iget-object v5, v4, LM6/b;->b:Ljava/lang/String;

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    iget-object v5, v4, LM6/b;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v5}, LK6/a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, LK6/a;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_9

    goto :goto_0

    :cond_9
    if-le v5, v0, :cond_a

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v5

    goto :goto_0

    :cond_a
    if-ne v5, v0, :cond_6

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v1

    :cond_c
    new-instance p1, LK6/a$b;

    invoke-direct {p1, p0}, LK6/a$b;-><init>(LK6/a;)V

    invoke-interface {v2, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM6/b;

    iget-object v2, v0, LM6/b;->o:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    return-object v0

    :cond_e
    :goto_2
    return-object v1
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "myObject."

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;JZ)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullScript",
            "fullLineText",
            "originalLineNumber",
            "cursorPosition",
            "loadedClassList",
            "textInterface",
            "className",
            "requestId",
            "isDeletingText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ld8/r;",
            ">;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v12, p4

    move-object/from16 v13, p6

    move-wide/from16 v14, p8

    if-eqz v13, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isTypingTemporarilyBlockedPublic()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isProgrammaticTextChangeAllowedPublic()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    return-void

    :cond_0
    invoke-static {v1, v12}, LK6/h;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v11, ""

    if-lt v3, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v5, p2

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v11

    :goto_0
    new-instance v5, Lk8/c;

    const-string v6, "test"

    invoke-direct {v5, v6}, Lk8/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lk8/c;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Lk8/c;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/*CURSOR*/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Lk8/c;->h(ILjava/lang/String;)V

    invoke-virtual {v5}, Lk8/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LK6/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lk8/c;->i(Ljava/lang/String;)V

    const/4 v10, 0x0

    move v7, v10

    :goto_1
    invoke-virtual {v5}, Lk8/c;->f()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v5, v7}, Lk8/c;->e(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_2
    if-eqz p10, :cond_4

    iput-object v11, v0, LK6/a;->g:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0, v2}, LK6/a;->m(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    return-void

    :cond_5
    invoke-virtual {v0, v1, v2, v12}, LK6/a;->l(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    return-void

    :cond_6
    iget-object v5, v0, LK6/a;->c:LK6/c;

    invoke-virtual {v5, v1, v2, v9}, LK6/c;->i(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    iput-object v11, v0, LK6/a;->g:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    return-void

    :cond_7
    iget-object v5, v0, LK6/a;->c:LK6/c;

    invoke-virtual {v5, v1, v2, v9}, LK6/c;->q(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Class;

    move-result-object v16

    new-instance v8, LL6/j;

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    move-object v12, v8

    move-object v8, v3

    move/from16 p1, v9

    move/from16 v9, p4

    move v4, v10

    move/from16 v10, p1

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    invoke-direct/range {v5 .. v11}, LL6/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Class;)V

    iget-object v5, v0, LK6/a;->d:LL6/k;

    invoke-virtual {v5, v12}, LL6/k;->b(LL6/j;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_9

    invoke-virtual {v0, v14, v15}, LK6/a;->n(J)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    xor-int/lit8 v1, p10, 0x1

    invoke-virtual {v0, v13, v5, v1}, LK6/a;->g(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/util/List;Z)V

    return-void

    :cond_9
    iget-object v5, v0, LK6/a;->a:LK6/b;

    move/from16 v9, p1

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual {v5, v1, v9, v6, v8}, LK6/b;->a(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v14, v15}, LK6/a;->n(J)Z

    move-result v5

    if-nez v5, :cond_a

    return-void

    :cond_a
    iget-object v5, v0, LK6/a;->b:LK6/d;

    invoke-virtual {v5, v2}, LK6/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, LK6/e;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, LK6/a;->d:LL6/k;

    invoke-virtual {v2, v1, v12}, LL6/k;->c(Ljava/util/List;LL6/j;)V

    invoke-virtual {v0, v14, v15}, LK6/a;->n(J)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    xor-int/lit8 v2, p10, 0x1

    invoke-virtual {v0, v13, v1, v2}, LK6/a;->g(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/util/List;Z)V

    goto :goto_3

    :cond_c
    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    :goto_3
    return-void

    :cond_d
    invoke-static {v2}, LK6/h;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, LK6/a;->b:LK6/d;

    invoke-virtual {v6, v2}, LK6/d;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    array-length v6, v5

    if-eqz v6, :cond_18

    aget-object v6, v5, v4

    invoke-static {v1, v6}, LK6/e;->e(Ljava/util/List;Ljava/lang/String;)LK6/f;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v6, v1, LK6/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, LK6/a;->r(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iget-boolean v10, v1, LK6/f;->m:Z

    if-eqz v6, :cond_17

    :goto_4
    array-length v1, v5

    if-ge v7, v1, :cond_11

    aget-object v11, v5, v7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v6, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_e
    if-nez v1, :cond_10

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    move v14, v4

    :goto_5
    if-ge v14, v9, :cond_10

    aget-object v15, v8, v14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p5, v8

    const-string v8, "get"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_6

    :cond_f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    const/4 v4, 0x0

    goto :goto_5

    :cond_10
    move-object/from16 p2, v1

    move-object/from16 v1, p2

    :goto_6
    if-eqz v1, :cond_12

    add-int/lit8 v7, v7, 0x1

    move-object v6, v1

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_4

    :cond_11
    move-object/from16 v11, v17

    :cond_12
    iget-object v1, v0, LK6/a;->a:LK6/b;

    invoke-virtual {v1, v6, v10}, LK6/b;->b(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK6/f;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-static {v5, v11}, LK6/e;->g(LK6/f;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    move/from16 v6, p3

    move/from16 v8, p4

    move-object v9, v12

    const/4 v7, 0x0

    goto :goto_8

    :cond_14
    move/from16 v6, p3

    move/from16 v8, p4

    move-object v9, v12

    const/4 v7, 0x0

    goto :goto_9

    :goto_8
    invoke-static {v5, v2, v3, v6, v8}, LM6/b;->a(LK6/f;Ljava/lang/String;Ljava/lang/String;II)LM6/b;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object v12, v9

    goto :goto_7

    :cond_15
    move-object v9, v12

    const/4 v7, 0x0

    iget-object v1, v0, LK6/a;->d:LL6/k;

    invoke-virtual {v1, v9}, LL6/k;->a(LL6/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface {v4, v7, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_16
    iget-object v1, v0, LK6/a;->d:LL6/k;

    invoke-virtual {v1, v4, v9}, LL6/k;->c(Ljava/util/List;LL6/j;)V

    invoke-virtual {v0, v4, v11}, LK6/a;->q(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v4, v7}, LK6/a;->g(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/util/List;Z)V

    return-void

    :cond_17
    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    return-void

    :cond_18
    move/from16 v6, p3

    move/from16 v8, p4

    move-object v9, v12

    array-length v4, v5

    if-lez v4, :cond_19

    array-length v4, v5

    sub-int/2addr v4, v7

    aget-object v11, v5, v4

    goto :goto_a

    :cond_19
    move-object/from16 v11, v17

    :goto_a
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->clearSuggestions()V

    return-void

    :cond_1a
    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK6/f;

    invoke-static {v5, v11}, LK6/e;->g(LK6/f;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-static {v5, v2, v3, v6, v8}, LM6/b;->a(LK6/f;Ljava/lang/String;Ljava/lang/String;II)LM6/b;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1c
    iget-object v1, v0, LK6/a;->d:LL6/k;

    invoke-virtual {v1, v4, v9}, LL6/k;->c(Ljava/util/List;LL6/j;)V

    invoke-virtual {v0, v4, v11}, LK6/a;->q(Ljava/util/List;Ljava/lang/String;)V

    xor-int/lit8 v1, p10, 0x1

    invoke-virtual {v0, v13, v4, v1}, LK6/a;->g(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/util/List;Z)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullScript",
            "lineText",
            "cursorPosition"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    if-ltz p2, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_3

    return v0

    :cond_3
    const-string p3, "*/"

    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-ge p1, p2, :cond_4

    move v0, v1

    :cond_4
    :goto_0
    return v0
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineText"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x22

    if-ne v4, v5, :cond_3

    xor-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v0
.end method

.method public final n(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestId"
        }
    .end annotation

    iget-object v0, p0, LK6/a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeName"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullScript"
        }
    .end annotation

    new-instance v0, Li8/a;

    invoke-direct {v0}, Li8/a;-><init>()V

    new-instance v1, Lk8/c;

    const-string v2, "test"

    invoke-direct {v1, v2}, Lk8/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lk8/c;->i(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Li8/a;->a(Lk8/c;Lj8/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lk8/c;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "suggestions",
            "lastToken"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM6/b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM6/b;

    iget-boolean v1, v0, LM6/b;->f:Z

    if-nez v1, :cond_0

    iget-object v1, v0, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-boolean v1, v0, LM6/b;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, v0, LM6/b;->g:Z

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public final r(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LK6/a;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    invoke-static {p1}, Ld8/k;->u(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.util."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LK6/a;->u(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.lang."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LK6/a;->u(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const-string v0, "JAVARuntime.AList"

    invoke-virtual {p0, v0}, LK6/a;->u(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "List"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAVARuntime."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LK6/a;->u(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    return-object v1
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final t(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "myObject."

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fqcn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullScript",
            "fullLineText",
            "originalLineNumber",
            "cursorPosition",
            "loadedClassList",
            "textInterface",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ld8/r;",
            ">;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, LK6/a;->w(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;Z)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullScript",
            "fullLineText",
            "originalLineNumber",
            "cursorPosition",
            "loadedClassList",
            "textInterface",
            "className",
            "isDeletingText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ld8/r;",
            ">;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v12, p0

    iget-object v0, v12, LK6/a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v9

    iget-object v0, v12, LK6/a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    new-instance v13, LK6/a$a;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, LK6/a$a;-><init>(LK6/a;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;JZ)V

    invoke-static {v13}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
