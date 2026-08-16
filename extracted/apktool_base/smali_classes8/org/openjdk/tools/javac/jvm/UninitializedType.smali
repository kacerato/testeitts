.class Lorg/openjdk/tools/javac/jvm/UninitializedType;
.super Lorg/openjdk/tools/javac/code/Type$DelegatedType;
.source "SourceFile"


# instance fields
.field public final offset:I


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/openjdk/tools/javac/code/Type$DelegatedType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    iput p3, p0, Lorg/openjdk/tools/javac/jvm/UninitializedType;->offset:I

    return-void
.end method

.method public static uninitializedObject(Lorg/openjdk/tools/javac/code/Type;I)Lorg/openjdk/tools/javac/jvm/UninitializedType;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->UNINITIALIZED_OBJECT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v2

    invoke-direct {v0, v1, p0, p1, v2}, Lorg/openjdk/tools/javac/jvm/UninitializedType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-object v0
.end method

.method public static uninitializedThis(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/UninitializedType;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->UNINITIALIZED_THIS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v3, v2}, Lorg/openjdk/tools/javac/jvm/UninitializedType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/UninitializedType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/jvm/UninitializedType;

    move-result-object p1

    return-object p1
.end method

.method public cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/jvm/UninitializedType;
    .locals 4

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->tag:Lorg/openjdk/tools/javac/code/TypeTag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/UninitializedType;->offset:I

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/openjdk/tools/javac/jvm/UninitializedType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-object v0
.end method

.method public initializedType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method
