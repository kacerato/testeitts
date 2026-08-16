.class Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types$DescriptorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunctionDescriptor"
.end annotation


# instance fields
.field descSym:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;->this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;->descSym:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public getSymbol()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;->descSym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object v0
.end method

.method public getType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;->this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->removeWildcards(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;->this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkValidGenericType(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;->this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;->descSym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;->this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Types;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v2, "no.suitable.functional.intf.inst"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->failure(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;

    move-result-object p1

    throw p1
.end method
