.class Lorg/openjdk/tools/javac/comp/Resolve$3;
.super Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$3;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    return-void
.end method


# virtual methods
.method public checkArg(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "arityMethodCheck"

    return-object v0
.end method
