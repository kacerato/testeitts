.class Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;
.super Lorg/openjdk/javax/lang/model/util/SimpleElementVisitor7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/lang/model/util/SimpleElementVisitor7<",
        "Lorg/openjdk/javax/lang/model/element/NestingKind;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;->this$0:Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    invoke-direct {p0}, Lorg/openjdk/javax/lang/model/util/SimpleElementVisitor7;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;->visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/NestingKind;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Void;)Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 0

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;

    move-result-object p1

    return-object p1
.end method
