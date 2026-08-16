.class public Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnresolvedEnumConstant"
.end annotation


# instance fields
.field enumConstantName:[C

.field enumType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->enumType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->enumConstantName:[C

    return-void
.end method


# virtual methods
.method public getEnumConstantName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->enumConstantName:[C

    return-object v0
.end method

.method public getResolved()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->enumType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->enumType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->enumType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->enumType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->enumConstantName:[C

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    return-object v0
.end method
