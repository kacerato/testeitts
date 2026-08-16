.class public Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private visitedCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visitedCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visitedCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 14
    :cond_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_2

    return-void

    .line 16
    :cond_2
    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 18
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Unexpected binding type"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :sswitch_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;)Z

    goto/16 :goto_0

    .line 20
    :sswitch_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    .line 21
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto/16 :goto_0

    .line 23
    :sswitch_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 24
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 26
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 27
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto :goto_0

    .line 28
    :sswitch_3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Z

    goto :goto_0

    .line 29
    :sswitch_4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 30
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v0, :cond_3

    .line 32
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 33
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    .line 34
    :sswitch_5
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 35
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 37
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    .line 38
    :sswitch_6
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;)Z

    goto :goto_0

    .line 39
    :sswitch_7
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    .line 40
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    .line 42
    :sswitch_8
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 43
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 45
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_3
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_8
        0x44 -> :sswitch_7
        0x84 -> :sswitch_6
        0x104 -> :sswitch_5
        0x204 -> :sswitch_4
        0x404 -> :sswitch_3
        0x804 -> :sswitch_8
        0x1004 -> :sswitch_2
        0x2004 -> :sswitch_4
        0x8004 -> :sswitch_1
        0x10004 -> :sswitch_0
    .end sparse-switch
.end method

.method public static visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 10
    :cond_0
    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    .line 11
    :cond_1
    aget-object v2, p1, v0

    invoke-static {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 46
    :cond_0
    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    .line 47
    :cond_1
    aget-object v2, p1, v0

    invoke-static {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visitedCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;)Z
    .locals 0

    .line 5
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Z
    .locals 0

    .line 6
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 0

    .line 7
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Z
    .locals 0

    .line 8
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;)Z
    .locals 0

    .line 9
    const/4 p1, 0x1

    return p1
.end method
