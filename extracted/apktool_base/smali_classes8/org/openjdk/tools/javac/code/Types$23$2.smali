.class Lorg/openjdk/tools/javac/code/Types$23$2;
.super Lorg/openjdk/tools/javac/code/Type$ForAll;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Types$23;->visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/code/Types$23;

.field final synthetic val$t:Lorg/openjdk/tools/javac/code/Type$ForAll;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types$23;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$ForAll;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$23$2;->this$1:Lorg/openjdk/tools/javac/code/Types$23;

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/Types$23$2;->val$t:Lorg/openjdk/tools/javac/code/Type$ForAll;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Type$ForAll;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method


# virtual methods
.method public baseType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$23$2;->val$t:Lorg/openjdk/tools/javac/code/Type$ForAll;

    return-object v0
.end method
