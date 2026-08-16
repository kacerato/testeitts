.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->applySuggestion(LM6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LM6/b;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;LM6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$suggestion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v0, v0, LM6/b;->q:LM6/b$a;

    iget-object v1, v0, LM6/b$a;->a:Ljava/lang/String;

    iget-object v0, v0, LM6/b$a;->b:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    invoke-static {v1}, LK6/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->access$700(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;)I

    move-result v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v4, v4, LM6/b;->q:LM6/b$a;

    iget v4, v4, LM6/b$a;->c:I

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v5

    iget-object v5, v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->codeCompletion:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;->e()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v5, v5, LM6/b;->o:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    invoke-static {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->access$800(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;LM6/b;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    invoke-static {v8, v1, v0, v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->access$900(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;Ljava/lang/String;LM6/b;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->access$300(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;)Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-static {v1, v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->access$1000(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    const-string v3, "/*CURSOR*/"

    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->replaceLine(Ljava/lang/String;I)V

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    :goto_1
    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setCursorPosition(I)V

    return-void

    :cond_4
    const-string v8, "("

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-static {v10, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->access$1100(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v7

    goto :goto_3

    :cond_5
    move v10, v6

    :goto_3
    if-eqz v10, :cond_6

    iget-object v11, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-static {v11, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->access$1200(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v7

    goto :goto_4

    :cond_6
    move v11, v6

    :goto_4
    const-string v12, ")"

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-boolean v13, v9, LM6/b;->f:Z

    if-eqz v13, :cond_c

    iget-object v9, v9, LM6/b;->b:Ljava/lang/String;

    if-eqz v9, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LK6/h;->b(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v6, v6, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v11, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v2, v2, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    goto :goto_8

    :cond_8
    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v5, v5, LM6/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    move-object v2, v12

    :goto_6
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v2, v2, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    xor-int/lit8 v2, v6, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    move-object v2, v12

    :goto_7
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v2, v2, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    xor-int/lit8 v2, v5, 0x1

    goto :goto_5

    :goto_8
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v2, v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->replaceLine(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setCursorPosition(I)V

    return-void

    :cond_c
    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "()"

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v3, v2, LM6/b;->q:LM6/b$a;

    iget v3, v3, LM6/b$a;->d:I

    iget-object v2, v2, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v1, v1, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-boolean v6, v2, LM6/b;->f:Z

    if-eqz v6, :cond_10

    if-nez v10, :cond_f

    if-eqz v11, :cond_d

    goto :goto_9

    :cond_d
    if-eqz v5, :cond_e

    iget-object v2, v2, LM6/b;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    goto :goto_a

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x2

    goto :goto_a

    :cond_f
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_10
    :goto_a
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-boolean v2, v2, LM6/b;->f:Z

    if-eqz v2, :cond_11

    if-nez v10, :cond_12

    if-nez v11, :cond_12

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v0, v1, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->replaceLine(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setCursorPosition(I)V

    goto/16 :goto_d

    :cond_13
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v9, v2, LM6/b;->q:LM6/b$a;

    iget v9, v9, LM6/b$a;->d:I

    iget-object v2, v2, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v2, v13

    add-int/2addr v9, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-object v1, v1, LM6/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-boolean v3, v2, LM6/b;->f:Z

    if-eqz v3, :cond_17

    if-nez v10, :cond_16

    if-eqz v11, :cond_14

    goto :goto_b

    :cond_14
    if-eqz v5, :cond_15

    iget-object v2, v2, LM6/b;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v2

    goto :goto_c

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v9, v9, 0x2

    goto :goto_c

    :cond_16
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_17
    :goto_c
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->b:LM6/b;

    iget-boolean v2, v2, LM6/b;->f:Z

    if-eqz v2, :cond_18

    if-nez v10, :cond_19

    if-nez v11, :cond_19

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_19
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v0, v1, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->replaceLine(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$i;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v0, v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setCursorPosition(I)V

    :goto_d
    return-void
.end method
