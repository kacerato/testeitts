.class Lorg/eclipse/jdt/internal/core/NamedMember$1TypeResolveRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/NamedMember;->resolveType(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)[[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeResolveRequestor"
.end annotation


# instance fields
.field answers:[[Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/NamedMember;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/NamedMember;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/NamedMember$1TypeResolveRequestor;->this$0:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/NamedMember$1TypeResolveRequestor;->answers:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acceptError(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 0

    return-void
.end method

.method public acceptField([C[C[CZ[CII)V
    .locals 0

    return-void
.end method

.method public acceptMethod([C[CLjava/lang/String;[C[[C[[C[Ljava/lang/String;[[C[[[CZZ[CII)V
    .locals 0

    return-void
.end method

.method public acceptMethodTypeParameter([C[C[CII[CZII)V
    .locals 0

    return-void
.end method

.method public acceptModule([C[CII)V
    .locals 0

    return-void
.end method

.method public acceptPackage([C)V
    .locals 0

    return-void
.end method

.method public acceptType([C[CIZ[CII)V
    .locals 0

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([C)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    filled-new-array {p3, p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/NamedMember$1TypeResolveRequestor;->answers:[[Ljava/lang/String;

    if-nez p2, :cond_0

    filled-new-array {p1}, [[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/NamedMember$1TypeResolveRequestor;->answers:[[Ljava/lang/String;

    goto :goto_0

    :cond_0
    array-length p3, p2

    add-int/lit8 p4, p3, 0x1

    new-array p4, p4, [[Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/NamedMember$1TypeResolveRequestor;->answers:[[Ljava/lang/String;

    const/4 p5, 0x0

    invoke-static {p2, p5, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/NamedMember$1TypeResolveRequestor;->answers:[[Ljava/lang/String;

    aput-object p1, p2, p3

    :goto_0
    return-void
.end method

.method public acceptTypeParameter([C[C[CZII)V
    .locals 0

    return-void
.end method
