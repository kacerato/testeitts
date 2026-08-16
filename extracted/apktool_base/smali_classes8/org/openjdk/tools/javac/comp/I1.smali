.class public final synthetic Lorg/openjdk/tools/javac/comp/I1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/I1;->b:Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/I1;->b:Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->a(Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;)[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v0

    return-object v0
.end method
