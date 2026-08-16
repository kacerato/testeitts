.class Lorg/openjdk/tools/javac/code/Type$CapturedType$1;
.super Lorg/openjdk/tools/javac/code/Type$CapturedType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Type$CapturedType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$CapturedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Type$CapturedType;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$CapturedType;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 7

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$CapturedType$1;->this$0:Lorg/openjdk/tools/javac/code/Type$CapturedType;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Type$CapturedType;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method


# virtual methods
.method public baseType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$CapturedType$1;->this$0:Lorg/openjdk/tools/javac/code/Type$CapturedType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$TypeVar;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Type$CapturedType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$CapturedType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Type$CapturedType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$CapturedType;

    move-result-object p1

    return-object p1
.end method
