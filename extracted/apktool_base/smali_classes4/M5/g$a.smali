.class public LM5/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM5/g;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LM5/g;


# direct methods
.method public constructor <init>(LM5/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LM5/g$a;->b:LM5/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v8, p0

    iget-object v0, v8, LM5/g$a;->b:LM5/g;

    invoke-static {v0}, LM5/g;->q(LM5/g;)V

    iget-object v0, v8, LM5/g$a;->b:LM5/g;

    invoke-static {v0}, LM5/g;->r(LM5/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, LM5/g$a;->b:LM5/g;

    invoke-virtual {v0}, LL5/b;->b()V

    goto/16 :goto_1

    :cond_0
    new-instance v9, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v0, v8, LM5/g$a;->b:LM5/g;

    invoke-static {v0}, LM5/g;->r(LM5/g;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v8, LM5/g$a;->b:LM5/g;

    invoke-static {v0}, LM5/g;->r(LM5/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {}, LO9/b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v14, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v15, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v1, v8, LM5/g$a;->b:LM5/g;

    iget-object v1, v1, LL5/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    iget-object v1, v8, LM5/g$a;->b:LM5/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COMPRESSING:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": 0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LL5/b;->n(Ljava/lang/String;)V

    iget-object v1, v8, LM5/g$a;->b:LM5/g;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORTING_TEXTURES:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LL5/b;->o(Ljava/lang/String;)V

    move v7, v0

    :goto_0
    if-ge v7, v11, :cond_1

    new-instance v16, LM5/g$a$a;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v12

    move v3, v10

    move-object v4, v9

    move-object v5, v13

    move-object v6, v14

    move/from16 v17, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, LM5/g$a$a;-><init>(LM5/g$a;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static/range {v16 .. v16}, LO9/b;->d(Ljava/lang/Runnable;)V

    add-int/lit8 v7, v17, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
