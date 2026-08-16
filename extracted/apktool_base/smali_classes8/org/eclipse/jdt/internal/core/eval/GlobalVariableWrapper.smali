.class Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/eval/IGlobalVariable;


# instance fields
.field variable:Lorg/eclipse/jdt/internal/eval/GlobalVariable;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/GlobalVariable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;->variable:Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    return-void
.end method


# virtual methods
.method public getInitializer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;->variable:Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->getInitializer()[C

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;->variable:Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->getName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;->variable:Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->getTypeName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
