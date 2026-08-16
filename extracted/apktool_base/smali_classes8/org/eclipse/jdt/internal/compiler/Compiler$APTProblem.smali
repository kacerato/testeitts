.class Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/Compiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APTProblem"
.end annotation


# instance fields
.field context:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

.field problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/Compiler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;->this$0:Lorg/eclipse/jdt/internal/compiler/Compiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;->context:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    return-void
.end method
