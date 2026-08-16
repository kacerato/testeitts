.class public Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;
.super Lorg/eclipse/jdt/internal/compiler/env/AccessRule;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IAccessRule;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;->toProblemId(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;-><init>([CI)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;-><init>([CI)V

    return-void
.end method

.method private static toProblemId(I)I
    .locals 3

    and-int/lit16 v0, p0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit16 p0, p0, -0x101

    if-eq p0, v2, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x2000000

    :cond_1
    return v1

    :cond_2
    if-eqz v0, :cond_3

    const p0, 0x3000118

    goto :goto_1

    :cond_3
    const p0, 0x1000118

    :goto_1
    return p0

    :cond_4
    if-eqz v0, :cond_5

    const p0, 0x3000133

    goto :goto_2

    :cond_5
    const p0, 0x1000133

    :goto_2
    return p0
.end method


# virtual methods
.method public getKind()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->getProblemId()I

    move-result v0

    const v1, 0x1000118

    if-eq v0, v1, :cond_1

    const v1, 0x1000133

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public getPattern()Lorg/eclipse/core/runtime/IPath;
    .locals 3

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->pattern:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
