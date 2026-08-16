.class public La4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La4/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La4/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, La4/c;->a:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, La4/c;->b:Ljava/util/List;

    new-instance v0, La4/c$a;

    invoke-direct {v0}, La4/c$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, La4/c;->d()V

    return-void
.end method

.method public static b(La4/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shortcut"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, La4/c;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(La4/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    invoke-virtual {p0}, La4/b;->d()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, La4/b;->d()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_4

    invoke-virtual {p0}, La4/b;->d()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v5, La4/c$d;->a:[I

    invoke-virtual {p0}, La4/b;->f()La4/b$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v0, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    sget-object v5, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v5, v4}, Lrc/a$f;->l(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La4/b;->f()La4/b$a;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " invalid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v5, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v5, v4}, Lrc/a$f;->k(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {p0}, La4/b;->c()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, La4/b;->c()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o0()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, La4/b;->e()La4/a;

    move-result-object p0

    invoke-interface {p0}, La4/a;->run()V

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lrc/a;->n(I)Ltc/h;

    move-result-object v0

    invoke-virtual {v0}, Ltc/h;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, La4/b;->c()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    invoke-static {v1}, Lrc/a;->n(I)Ltc/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(Ltc/h;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, La4/b;->e()La4/a;

    move-result-object p0

    invoke-interface {p0}, La4/a;->run()V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, La4/b;->e()La4/a;

    move-result-object p0

    invoke-interface {p0}, La4/a;->run()V

    :cond_7
    :goto_4
    return-void
.end method

.method public static d()V
    .locals 3

    sget-object v0, La4/c;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v1, La4/b;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_saveProject:Ljava/lang/String;

    invoke-static {v2}, La4/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La4/b;-><init>([Ljava/lang/String;)V

    new-instance v2, La4/c$b;

    invoke-direct {v2}, La4/c$b;-><init>()V

    invoke-virtual {v1, v2}, La4/b;->j(La4/a;)La4/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, La4/b;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_focusCamera:Ljava/lang/String;

    invoke-static {v2}, La4/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La4/b;-><init>([Ljava/lang/String;)V

    new-instance v2, La4/c$c;

    invoke-direct {v2}, La4/c$c;-><init>()V

    invoke-virtual {v1, v2}, La4/b;->j(La4/a;)La4/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e(La4/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shortcut"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, La4/c;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f()V
    .locals 6

    sget-object v0, La4/c;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, La4/c;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_1
    sget-object v4, La4/c;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La4/b;

    invoke-static {v4}, La4/c;->c(La4/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    sget-object v3, La4/c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La4/b;

    invoke-static {v3}, La4/c;->c(La4/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
