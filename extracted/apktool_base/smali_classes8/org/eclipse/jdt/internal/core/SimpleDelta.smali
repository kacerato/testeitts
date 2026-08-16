.class public Lorg/eclipse/jdt/internal/core/SimpleDelta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected changeFlags:I

.field protected kind:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    return-void
.end method


# virtual methods
.method public added()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    return-void
.end method

.method public changed(I)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    return-void
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    return v0
.end method

.method public getKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    return v0
.end method

.method public modifiers()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    return-void
.end method

.method public removed()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    return-void
.end method

.method public superTypes()V
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    return-void
.end method

.method public toDebugString(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 1
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3f

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const/16 v0, 0x2b

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7
    :goto_0
    const-string v0, "]: {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getFlags()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->toDebugString(Ljava/lang/StringBuffer;I)Z

    .line 9
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toDebugString(Ljava/lang/StringBuffer;I)Z
    .locals 2

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 10
    const-string v0, "MODIFIERS CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p2, p2, 0x800

    if-eqz p2, :cond_2

    if-eqz v0, :cond_1

    .line 11
    const-string p2, " | "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_1
    const-string p2, "SUPER TYPES CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->toDebugString(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
