.class public Lg8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lg8/b;->a:Z

    sput-boolean v0, Lg8/b;->b:Z

    :cond_0
    const-string v0, "PosCompiler"

    sput-object v0, Lg8/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;ILr8/a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "javaMetaInfo",
            "compileLoop",
            "totalCode"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PosCompilling (loops:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") (file:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg8/b;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->e()Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lg8/a;

    invoke-direct {v1}, Lg8/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return p1

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    return p1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lr8/a;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lr8/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, p1

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/b;

    if-eqz p0, :cond_3

    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    return p1

    :cond_3
    new-instance v4, Lg8/b$a;

    invoke-direct {v4}, Lg8/b$a;-><init>()V

    invoke-virtual {v3, p2, v4}, Lh8/b;->a(Lr8/a;Lh8/a;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz p0, :cond_5

    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    return p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    return p1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    sget-boolean v0, Lg8/b;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lg8/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lg8/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lg8/b;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Lr8/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "javaMetaInfo",
            "totalCode"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {p0, v2, p1}, Lg8/b;->a(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;ILr8/a;)Z

    move-result v0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
