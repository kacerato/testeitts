.class Lorg/openjdk/tools/javac/comp/Attr$7;
.super Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Attr;->visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$7;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;-><init>(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method


# virtual methods
.method public compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$7;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1
.end method
