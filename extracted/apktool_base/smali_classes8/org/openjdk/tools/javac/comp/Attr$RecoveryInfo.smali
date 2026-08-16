.class Lorg/openjdk/tools/javac/comp/Attr$RecoveryInfo;
.super Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoveryInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)V
    .locals 4

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$RecoveryInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Attr$RecoveryInfo$1;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Check;->basicHandler:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {v2, v3, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$RecoveryInfo$1;-><init>(Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method
