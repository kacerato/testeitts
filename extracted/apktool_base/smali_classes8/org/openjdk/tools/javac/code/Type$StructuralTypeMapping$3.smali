.class Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping$3;
.super Lorg/openjdk/tools/javac/code/Type$ArrayType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping$3;->this$0:Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;

    invoke-direct {p0, p2, p3, p4}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method


# virtual methods
.method public needsStripping()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
