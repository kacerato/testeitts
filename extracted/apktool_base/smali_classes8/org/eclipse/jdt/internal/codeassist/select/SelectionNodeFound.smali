.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x65ccbc1f83a15707L


# instance fields
.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

.field public isDeclaration:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 5
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->isDeclaration:Z

    return-void
.end method
