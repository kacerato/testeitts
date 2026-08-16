.class Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping$4;
.super Lorg/openjdk/tools/javac/code/Type$MethodType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;->visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping$4;->this$0:Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public needsStripping()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
