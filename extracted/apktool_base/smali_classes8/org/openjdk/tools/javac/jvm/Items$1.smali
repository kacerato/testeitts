.class Lorg/openjdk/tools/javac/jvm/Items$1;
.super Lorg/openjdk/tools/javac/jvm/Items$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/jvm/Items;-><init>(Lorg/openjdk/tools/javac/jvm/Pool;Lorg/openjdk/tools/javac/jvm/Code;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Types;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;I)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$1;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Items$Item;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "void"

    return-object v0
.end method
