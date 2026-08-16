.class Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CopyFailureException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyFailureException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CopyFailureException;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
