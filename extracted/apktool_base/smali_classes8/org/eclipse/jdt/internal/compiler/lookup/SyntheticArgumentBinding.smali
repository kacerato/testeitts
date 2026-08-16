.class public Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
.source "SourceFile"


# instance fields
.field public actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field public matchingField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 6

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_OUTER_LOCAL_PREFIX:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    .line 2
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 v2, 0x10

    const/4 v3, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    .line 4
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v4, 0x400

    or-long/2addr v0, v4

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    .line 5
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 5

    .line 7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ENCLOSING_INSTANCE_PREFIX:[C

    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->depth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    .line 10
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    .line 11
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v3, 0x400

    or-long/2addr v0, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    .line 12
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    return-void
.end method
