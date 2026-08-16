.class public Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoveryDeferredTypeMap"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->BOX:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-void
.end method

.method private recover(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap$1;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    invoke-direct {v0, p0, v1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap$1;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->check(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Types$MapVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public typeOf(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->typeOf(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;->recover(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
