.class public abstract Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JCOperatorExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;
    }
.end annotation


# instance fields
.field protected opcode:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

.field public operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOperand(Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.end method

.method public getOperator()Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->opcode:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method
