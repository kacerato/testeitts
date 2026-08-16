.class public Lorg/eclipse/jdt/internal/compiler/env/AccessRule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IgnoreIfBetter:I = 0x2000000


# instance fields
.field public pattern:[C

.field public problemId:I


# direct methods
.method public constructor <init>([CI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;-><init>([CIZ)V

    return-void
.end method

.method public constructor <init>([CIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->pattern:[C

    if-eqz p3, :cond_0

    const/high16 p1, 0x2000000

    or-int/2addr p2, p1

    .line 4
    :cond_0
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->problemId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->problemId:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->problemId:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->pattern:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->pattern:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    return p1
.end method

.method public getProblemId()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->problemId:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->problemId:I

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->pattern:[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public ignoreIfBetter()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->problemId:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->pattern:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->getProblemId()I

    move-result v1

    const v2, 0x1000118

    if-eq v1, v2, :cond_1

    const v2, 0x1000133

    if-eq v1, v2, :cond_0

    const-string v1, " (ACCESSIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, " (NON ACCESSIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, " (DISCOURAGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->ignoreIfBetter()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " | IGNORE IF BETTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
