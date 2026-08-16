.class public Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
.super Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperatorSymbol"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;
    }
.end annotation


# instance fields
.field private accessCode:I

.field public opcode:I


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/Symbol;)V
    .locals 6

    const-wide/16 v1, 0x9

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->accessCode:I

    iput p3, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Symbol$Visitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitOperatorSymbol(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAccessCode(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)I
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->accessCode:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->isIncOrDecUnaryOp()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->accessCode:I

    return p1

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->from(Lorg/openjdk/tools/javac/tree/JCTree$Tag;I)I

    move-result p1

    iput p1, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->accessCode:I

    return p1
.end method
