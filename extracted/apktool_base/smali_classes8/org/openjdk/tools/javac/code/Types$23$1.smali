.class Lorg/openjdk/tools/javac/code/Types$23$1;
.super Lorg/openjdk/tools/javac/code/Type$MethodType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Types$23;->visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/code/Types$23;

.field final synthetic val$t:Lorg/openjdk/tools/javac/code/Type$MethodType;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types$23;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$MethodType;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$23$1;->this$1:Lorg/openjdk/tools/javac/code/Types$23;

    iput-object p6, p0, Lorg/openjdk/tools/javac/code/Types$23$1;->val$t:Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public baseType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$23$1;->val$t:Lorg/openjdk/tools/javac/code/Type$MethodType;

    return-object v0
.end method
