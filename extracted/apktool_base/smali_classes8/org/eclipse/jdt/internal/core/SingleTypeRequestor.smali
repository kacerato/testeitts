.class Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;


# instance fields
.field protected element:Lorg/eclipse/jdt/core/IType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;->element:Lorg/eclipse/jdt/core/IType;

    return-void
.end method


# virtual methods
.method public acceptField(Lorg/eclipse/jdt/core/IField;)V
    .locals 0

    return-void
.end method

.method public acceptInitializer(Lorg/eclipse/jdt/core/IInitializer;)V
    .locals 0

    return-void
.end method

.method public acceptMemberType(Lorg/eclipse/jdt/core/IType;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;->element:Lorg/eclipse/jdt/core/IType;

    return-void
.end method

.method public acceptMethod(Lorg/eclipse/jdt/core/IMethod;)V
    .locals 0

    return-void
.end method

.method public acceptModule(Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 0

    return-void
.end method

.method public acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V
    .locals 0

    return-void
.end method

.method public acceptType(Lorg/eclipse/jdt/core/IType;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;->element:Lorg/eclipse/jdt/core/IType;

    return-void
.end method

.method public getType()Lorg/eclipse/jdt/core/IType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;->element:Lorg/eclipse/jdt/core/IType;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;->element:Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;->element:Lorg/eclipse/jdt/core/IType;

    return-void
.end method
