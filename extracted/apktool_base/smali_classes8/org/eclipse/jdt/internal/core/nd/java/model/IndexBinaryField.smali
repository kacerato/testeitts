.class public Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;


# instance fields
.field private annotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

.field private constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

.field private genericSignature:[C

.field private modifiers:I

.field private name:[C

.field private tagBits:J

.field private typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

.field private typeName:[C


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/impl/Constant;[CI[CJ[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->modifiers:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->annotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    iput-object p8, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->genericSignature:[C

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->name:[C

    iput-wide p6, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->tagBits:J

    iput-object p9, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->typeName:[C

    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->annotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-object v0
.end method

.method public getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->genericSignature:[C

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->modifiers:I

    return v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->name:[C

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->tagBits:J

    return-wide v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    return-object v0
.end method

.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;->typeName:[C

    return-object v0
.end method
