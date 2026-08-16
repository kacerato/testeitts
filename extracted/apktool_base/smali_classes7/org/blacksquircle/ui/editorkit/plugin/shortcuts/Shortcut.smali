.class public final Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final alt:Z

.field private final ctrl:Z

.field private final keyCode:I

.field private final shift:Z


# direct methods
.method public constructor <init>(ZZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    iput-boolean p2, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    iput-boolean p3, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    iput p4, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    return-void
.end method

.method public static synthetic copy$default(Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;ZZZIILjava/lang/Object;)Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->copy(ZZZI)Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    return v0
.end method

.method public final copy(ZZZI)Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;-><init>(ZZZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;

    iget-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    iget-boolean v3, p1, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    iget-boolean v3, p1, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    iget-boolean v3, p1, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    iget p1, p1, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAlt()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    return v0
.end method

.method public final getCtrl()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    return v0
.end method

.method public final getKeyCode()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    return v0
.end method

.method public final getShift()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shortcut(ctrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
