.class public Lorg/eclipse/jdt/internal/core/JavaElementRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;


# static fields
.field protected static final EMPTY_FIELD_ARRAY:[Lorg/eclipse/jdt/core/IField;

.field protected static final EMPTY_INITIALIZER_ARRAY:[Lorg/eclipse/jdt/core/IInitializer;

.field protected static final EMPTY_METHOD_ARRAY:[Lorg/eclipse/jdt/core/IMethod;

.field protected static final EMPTY_MODULE_ARRAY:[Lorg/eclipse/jdt/core/IModuleDescription;

.field protected static final EMPTY_PACKAGE_FRAGMENT_ARRAY:[Lorg/eclipse/jdt/core/IPackageFragment;

.field protected static final EMPTY_TYPE_ARRAY:[Lorg/eclipse/jdt/core/IType;


# instance fields
.field protected canceled:Z

.field protected fields:Ljava/util/ArrayList;

.field protected initializers:Ljava/util/ArrayList;

.field protected memberTypes:Ljava/util/ArrayList;

.field protected methods:Ljava/util/ArrayList;

.field protected modules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/IModuleDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected packageFragments:Ljava/util/ArrayList;

.field protected types:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/IField;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_FIELD_ARRAY:[Lorg/eclipse/jdt/core/IField;

    new-array v1, v0, [Lorg/eclipse/jdt/core/IInitializer;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_INITIALIZER_ARRAY:[Lorg/eclipse/jdt/core/IInitializer;

    new-array v1, v0, [Lorg/eclipse/jdt/core/IType;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_TYPE_ARRAY:[Lorg/eclipse/jdt/core/IType;

    new-array v1, v0, [Lorg/eclipse/jdt/core/IPackageFragment;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_PACKAGE_FRAGMENT_ARRAY:[Lorg/eclipse/jdt/core/IPackageFragment;

    new-array v1, v0, [Lorg/eclipse/jdt/core/IMethod;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_METHOD_ARRAY:[Lorg/eclipse/jdt/core/IMethod;

    new-array v0, v0, [Lorg/eclipse/jdt/core/IModuleDescription;

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_MODULE_ARRAY:[Lorg/eclipse/jdt/core/IModuleDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->canceled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->fields:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->initializers:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->memberTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->methods:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->packageFragments:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->types:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->modules:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public acceptField(Lorg/eclipse/jdt/core/IField;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->fields:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->fields:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public acceptInitializer(Lorg/eclipse/jdt/core/IInitializer;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->initializers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->initializers:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->initializers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public acceptMemberType(Lorg/eclipse/jdt/core/IType;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->memberTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->memberTypes:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->memberTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public acceptMethod(Lorg/eclipse/jdt/core/IMethod;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->methods:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->methods:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->methods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public acceptModule(Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->modules:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->modules:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->modules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->packageFragments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->packageFragments:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->packageFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public acceptType(Lorg/eclipse/jdt/core/IType;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->types:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->types:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->types:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFields()[Lorg/eclipse/jdt/core/IField;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->fields:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_FIELD_ARRAY:[Lorg/eclipse/jdt/core/IField;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IField;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->fields:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getInitializers()[Lorg/eclipse/jdt/core/IInitializer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->initializers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_INITIALIZER_ARRAY:[Lorg/eclipse/jdt/core/IInitializer;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IInitializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->initializers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getMemberTypes()[Lorg/eclipse/jdt/core/IType;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->memberTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_TYPE_ARRAY:[Lorg/eclipse/jdt/core/IType;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->memberTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getMethods()[Lorg/eclipse/jdt/core/IMethod;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->methods:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_METHOD_ARRAY:[Lorg/eclipse/jdt/core/IMethod;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IMethod;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->methods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getModules()[Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->modules:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_MODULE_ARRAY:[Lorg/eclipse/jdt/core/IModuleDescription;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IModuleDescription;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->modules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageFragments()[Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->packageFragments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_PACKAGE_FRAGMENT_ARRAY:[Lorg/eclipse/jdt/core/IPackageFragment;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IPackageFragment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->packageFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getTypes()[Lorg/eclipse/jdt/core/IType;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->types:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->EMPTY_TYPE_ARRAY:[Lorg/eclipse/jdt/core/IType;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->types:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->canceled:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->canceled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->fields:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->initializers:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->memberTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->methods:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->packageFragments:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->types:Ljava/util/ArrayList;

    return-void
.end method

.method public setCanceled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->canceled:Z

    return-void
.end method
