.class Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;
.super Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->lambda$mergeDescriptors$3(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

.field final synthetic val$bestSoFar:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;->this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;->val$bestSoFar:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;-><init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public getType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;->this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;->getSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;->this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;->val$bestSoFar:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->createMethodTypeWithThrown(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
