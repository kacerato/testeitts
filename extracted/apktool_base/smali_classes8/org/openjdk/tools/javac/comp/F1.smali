.class public final synthetic Lorg/openjdk/tools/javac/comp/F1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

.field public final synthetic c:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public final synthetic d:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public final synthetic e:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public final synthetic f:[I


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/F1;->b:Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/F1;->c:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/F1;->d:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/F1;->e:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/F1;->f:[I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/F1;->b:Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/F1;->c:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/F1;->d:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/F1;->e:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/F1;->f:[I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->d(Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v0

    return-object v0
.end method
