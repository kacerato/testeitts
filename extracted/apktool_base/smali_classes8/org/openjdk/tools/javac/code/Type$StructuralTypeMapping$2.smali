.class Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping$2;
.super Lorg/openjdk/tools/javac/code/Type$WildcardType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 6

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping$2;->this$0:Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method


# virtual methods
.method public needsStripping()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
