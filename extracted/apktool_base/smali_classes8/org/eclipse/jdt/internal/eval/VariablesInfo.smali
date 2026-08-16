.class public Lorg/eclipse/jdt/internal/eval/VariablesInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

.field className:[C

.field packageName:[C

.field variableCount:I

.field variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;


# direct methods
.method public constructor <init>([C[C[Lorg/eclipse/jdt/internal/compiler/ClassFile;[Lorg/eclipse/jdt/internal/eval/GlobalVariable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->packageName:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->className:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    iput p5, p0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->variableCount:I

    return-void
.end method


# virtual methods
.method public indexOf(Lorg/eclipse/jdt/internal/eval/GlobalVariable;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->variableCount:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varNamed([C)Lorg/eclipse/jdt/internal/eval/GlobalVariable;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->variableCount:I

    if-lt v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v2, v0, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->name:[C

    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
