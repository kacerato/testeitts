.class Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;
.super Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CWSignatureGenerator"
.end annotation


# instance fields
.field sigbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassWriter;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;-><init>(Lorg/openjdk/tools/javac/code/Types;)V

    new-instance p1, Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->sigbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    return-void
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;)Z
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;)Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->toName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->reset()V

    return-void
.end method

.method private isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->sigbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v0, v0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->sigbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->reset()V

    return-void
.end method

.method private toName()Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->sigbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$100(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->toName(Lorg/openjdk/tools/javac/util/Names;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->sigbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    return-void
.end method

.method public append(Lorg/openjdk/tools/javac/util/Name;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->sigbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendName(Lorg/openjdk/tools/javac/util/Name;)V

    return-void
.end method

.method public append([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->sigbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendBytes([B)V

    return-void
.end method

.method public assembleSig(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$000(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    check-cast p1, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    :goto_0
    return-void
.end method

.method public classReference(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->this$0:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->enterInner(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method
