.class public Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeId()V

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x200c0

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/16 p1, 0x2f

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    array-length p1, p2

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget-object p1, p2, p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void
.end method


# virtual methods
.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    return-object p0
.end method

.method public collectMissingTypes(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public problemId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setMissingSuperclass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[MISSING:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/16 v3, 0x2e

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
