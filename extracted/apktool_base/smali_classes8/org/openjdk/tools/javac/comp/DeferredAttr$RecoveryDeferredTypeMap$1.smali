.class Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap$1;
.super Lorg/openjdk/tools/javac/comp/Attr$RecoveryInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;->recover(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap$1;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Attr$RecoveryInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)V

    return-void
.end method


# virtual methods
.method public check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap$1;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkNonVoid(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
