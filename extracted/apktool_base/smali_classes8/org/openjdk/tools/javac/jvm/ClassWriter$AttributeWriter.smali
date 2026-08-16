.class Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttributeWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArray(Lorg/openjdk/tools/javac/code/Attribute$Array;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitClass(Lorg/openjdk/tools/javac/code/Attribute$Class;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$000(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v3

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Class;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    return-void
.end method

.method public visitCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V

    return-void
.end method

.method public visitConstant(Lorg/openjdk/tools/javac/code/Attribute$Constant;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    sget-object v1, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    instance-of p1, v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$100(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x5a

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x44

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x46

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x4a

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x49

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x53

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x43

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x42

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitEnum(Lorg/openjdk/tools/javac/code/Attribute$Enum;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    return-void
.end method

.method public visitError(Lorg/openjdk/tools/javac/code/Attribute$Error;)V
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
