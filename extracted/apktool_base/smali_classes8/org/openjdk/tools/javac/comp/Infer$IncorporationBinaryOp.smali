.class Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncorporationBinaryOp"
.end annotation


# instance fields
.field op1:Lorg/openjdk/tools/javac/code/Type;

.field op2:Lorg/openjdk/tools/javac/code/Type;

.field opKind:Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->opKind:Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op1:Lorg/openjdk/tools/javac/code/Type;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op2:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public apply(Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->opKind:Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op1:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op2:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;->apply(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->opKind:Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->opKind:Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op1:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op1:Lorg/openjdk/tools/javac/code/Type;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op2:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op2:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2, p1, v4}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v4

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->opKind:Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7f

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op1:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->hashCode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7f

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->op2:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->hashCode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
