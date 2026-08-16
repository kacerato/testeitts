.class public Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
.source "SourceFile"


# instance fields
.field public originalField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 6

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;->originalField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    return-void
.end method


# virtual methods
.method public constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;->originalField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    return-object v0
.end method

.method public original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;->originalField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    return-object v0
.end method

.method public setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;->originalField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    return-void
.end method
