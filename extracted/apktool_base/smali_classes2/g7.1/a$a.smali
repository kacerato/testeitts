.class public Lg7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a;->d(Landroid/view/View;Lr4/a$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lr4/a$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/view/View;Lr4/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$destinationObject",
            "val$anchor",
            "val$anchorSide"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p2, p0, Lg7/a$a;->c:Landroid/view/View;

    iput-object p3, p0, Lg7/a$a;->d:Lr4/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v1, LW7/b;->i:La8/a;

    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v1, :cond_0

    new-instance v1, Ldd/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PASTE_COPIED:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lg7/a$a$a;

    invoke-direct {v3, p0}, Lg7/a$a$a;-><init>(Lg7/a$a;)V

    const v4, 0x7f0701d4

    invoke-direct {v1, v4, v2, v3}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ldd/b;

    new-instance v2, Lg7/a$a$b;

    invoke-direct {v2, p0}, Lg7/a$a$b;-><init>(Lg7/a$a;)V

    const v3, 0x7f0701b7

    const-string v4, "New NoCode (NEW)"

    invoke-direct {v1, v3, v4, v2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {}, Lfb/a;->d()I

    move-result v3

    const-string v4, "/"

    if-ge v2, v3, :cond_7

    invoke-static {v2}, Lfb/a;->c(I)Lfb/b;

    move-result-object v3

    invoke-interface {v3}, Lfb/b;->g()Z

    move-result v5

    if-eqz v5, :cond_6

    :try_start_0
    invoke-interface {v3}, Lfb/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lg7/a;->a([Ljava/lang/String;Ljava/util/List;)Ldd/b;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v4, Ldd/b;->c:Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v5, v4, Ldd/b;->c:Ljava/util/List;

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_7

    :cond_1
    :goto_1
    iget-object v4, v4, Ldd/b;->c:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    invoke-interface {v3}, Lfb/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v6

    iget-boolean v6, v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateComponentNames:Z

    invoke-interface {v3, v6}, Lfb/b;->h(Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    :goto_3
    move-object v5, v6

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v6

    iget-boolean v6, v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateComponentNames:Z

    if-eqz v6, :cond_4

    invoke-interface {v3}, Lfb/b;->f()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    new-instance v6, Ldd/b;

    new-instance v7, Lg7/a$a$c;

    invoke-direct {v7, p0, v3}, Lg7/a$a$c;-><init>(Lg7/a$a;Lfb/b;)V

    invoke-direct {v6, v5, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lfb/b;->i()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    move v6, v1

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfb/d;

    if-eqz v7, :cond_5

    new-instance v8, Ldd/b;

    invoke-interface {v7}, Lfb/d;->getTittle()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lg7/a$a$d;

    invoke-direct {v10, p0, v7}, Lg7/a$a$d;-><init>(Lg7/a$a;Lfb/d;)V

    invoke-direct {v8, v9, v10}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    new-instance v7, Ldd/b;

    invoke-direct {v7}, Ldd/b;-><init>()V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :goto_7
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed for item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lfb/b;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with menu "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lfb/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    sget-boolean v2, Ld8/j;->B:Z

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    invoke-static {}, Ld8/j;->M()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v1

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld8/o;

    iget-object v8, v7, Ld8/o;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v8, v9

    array-length v10, v8

    if-lt v10, v3, :cond_8

    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    new-array v11, v10, [Ljava/lang/String;

    invoke-static {v8, v1, v11, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11, v0}, Lg7/a;->a([Ljava/lang/String;Ljava/util/List;)Ldd/b;

    move-result-object v8

    goto :goto_9

    :cond_8
    move-object v8, v5

    :goto_9
    if-eqz v8, :cond_9

    iget-object v8, v8, Ldd/b;->c:Ljava/util/List;

    goto :goto_a

    :cond_9
    move-object v8, v0

    :goto_a
    new-instance v10, Ldd/b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Ld8/o;->c:Ljava/lang/String;

    invoke-static {v7}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lg7/a$a$e;

    invoke-direct {v11, p0, v9}, Lg7/a$a$e;-><init>(Lg7/a$a;Ljava/lang/String;)V

    invoke-direct {v10, v7, v11}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    move v2, v1

    :goto_b
    invoke-static {}, Lb9/c;->p()I

    move-result v6

    if-ge v2, v6, :cond_d

    invoke-static {v2}, Lb9/c;->o(I)Lb9/d;

    move-result-object v6

    invoke-virtual {v6}, Lb9/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-lt v8, v3, :cond_b

    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v7, v1, v9, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v0}, Lg7/a;->a([Ljava/lang/String;Ljava/util/List;)Ldd/b;

    move-result-object v7

    goto :goto_c

    :cond_b
    move-object v7, v5

    :goto_c
    if-eqz v7, :cond_c

    iget-object v7, v7, Ldd/b;->c:Ljava/util/List;

    goto :goto_d

    :cond_c
    move-object v7, v0

    :goto_d
    new-instance v8, Ldd/b;

    invoke-virtual {v6}, Lb9/d;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lg7/a$a$f;

    invoke-direct {v10, p0, v6}, Lg7/a$a$f;-><init>(Lg7/a$a;Lb9/d;)V

    invoke-direct {v8, v9, v10}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_d
    new-instance v1, Ldd/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ADD_SCRIPT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lg7/a$a$g;

    invoke-direct {v3, p0}, Lg7/a$a$g;-><init>(Lg7/a$a;)V

    invoke-direct {v1, v2, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lg7/a$a;->c:Landroid/view/View;

    iget-object v2, p0, Lg7/a$a;->d:Lr4/a$e;

    invoke-static {v1, v2, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
