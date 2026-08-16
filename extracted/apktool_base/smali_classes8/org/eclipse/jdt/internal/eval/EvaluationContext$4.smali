.class Lorg/eclipse/jdt/internal/eval/EvaluationContext$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/util/Util$Comparer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluateVariables(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$4;->this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->enclosingClassFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->enclosingClassFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    goto :goto_0
.end method
