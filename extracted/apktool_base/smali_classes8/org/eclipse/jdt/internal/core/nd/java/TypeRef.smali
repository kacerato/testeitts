.class public final Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
        ">;"
    }
.end annotation


# instance fields
.field final fieldDescriptor:[C

.field final fileName:[C

.field final ref:Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/DatabaseRef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation
.end field

.field final typeSupplier:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;[C[C)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->typeSupplier:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;

    .line 8
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->fieldDescriptor:[C

    .line 9
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->fileName:[C

    .line 10
    new-instance p2, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/util/function/Supplier;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->ref:Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/core/nd/java/NdType;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->typeSupplier:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->fieldDescriptor:[C

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getResourceFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->fileName:[C

    .line 5
    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/util/function/Supplier;Lorg/eclipse/jdt/internal/core/nd/NdNode;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->ref:Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/Nd;[C[C)Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;
    .locals 1

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;[C[C)V

    return-object v0
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/java/NdType;)Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/NdType;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->ref:Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->get()Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    return-object v0
.end method

.method public getFieldDescriptor()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->fieldDescriptor:[C

    return-object v0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->fileName:[C

    return-object v0
.end method

.method public lock()Lorg/eclipse/jdt/internal/core/nd/IReader;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->ref:Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v0

    return-object v0
.end method
