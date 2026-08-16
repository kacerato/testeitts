.class Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;
.super Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "L2MSignatureGenerator"
.end annotation


# instance fields
.field sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;-><init>(Lorg/openjdk/tools/javac/code/Types;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;->sb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public append(Lorg/openjdk/tools/javac/util/Name;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public append([B)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
