.class public Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.source "SourceFile"


# static fields
.field public static final CONVERSIONS:[I

.field public static final IDENTITY:I = 0x1

.field public static final MAX_CONVERSIONS:I = 0x100

.field public static final NARROWING:I = 0x4

.field public static final WIDENING:I = 0x2


# instance fields
.field private constantPoolName:[C

.field public simpleName:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->initializeConversions()[I

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->CONVERSIONS:[I

    return-void
.end method

.method public constructor <init>(I[C[C)V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;-><init>()V

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->constantPoolName:[C

    return-void
.end method

.method public static final initializeConversions()[I
    .locals 5

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v1, 0x55

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x33

    aput v2, v0, v1

    const/16 v1, 0x43

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v1, 0x23

    const/4 v4, 0x4

    aput v4, v0, v1

    const/16 v1, 0xa3

    aput v3, v0, v1

    const/16 v1, 0x73

    aput v3, v0, v1

    const/16 v1, 0x93

    aput v3, v0, v1

    const/16 v1, 0x83

    aput v3, v0, v1

    const/16 v1, 0x34

    aput v4, v0, v1

    const/16 v1, 0x44

    aput v2, v0, v1

    const/16 v1, 0x24

    aput v4, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0x74

    aput v3, v0, v1

    const/16 v1, 0x94

    aput v3, v0, v1

    const/16 v1, 0x84

    aput v3, v0, v1

    const/16 v1, 0x32

    aput v4, v0, v1

    const/16 v1, 0x42

    aput v4, v0, v1

    const/16 v1, 0x22

    aput v2, v0, v1

    const/16 v1, 0xa2

    aput v3, v0, v1

    const/16 v1, 0x72

    aput v3, v0, v1

    const/16 v1, 0x92

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x3a

    aput v4, v0, v1

    const/16 v1, 0x4a

    aput v4, v0, v1

    const/16 v1, 0x2a

    aput v4, v0, v1

    const/16 v1, 0xaa

    aput v2, v0, v1

    const/16 v1, 0x7a

    aput v3, v0, v1

    const/16 v1, 0x9a

    aput v3, v0, v1

    const/16 v1, 0x8a

    aput v3, v0, v1

    const/16 v1, 0x37

    aput v4, v0, v1

    const/16 v1, 0x47

    aput v4, v0, v1

    const/16 v1, 0x27

    aput v4, v0, v1

    const/16 v1, 0xa7

    aput v4, v0, v1

    const/16 v1, 0x77

    aput v2, v0, v1

    const/16 v1, 0x97

    aput v3, v0, v1

    const/16 v1, 0x87

    aput v3, v0, v1

    const/16 v1, 0x39

    aput v4, v0, v1

    const/16 v1, 0x49

    aput v4, v0, v1

    const/16 v1, 0x29

    aput v4, v0, v1

    const/16 v1, 0xa9

    aput v4, v0, v1

    const/16 v1, 0x79

    aput v4, v0, v1

    const/16 v1, 0x99

    aput v2, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

    const/16 v1, 0x38

    aput v4, v0, v1

    const/16 v1, 0x48

    aput v4, v0, v1

    const/16 v1, 0x28

    aput v4, v0, v1

    const/16 v1, 0xa8

    aput v4, v0, v1

    const/16 v1, 0x78

    aput v4, v0, v1

    const/16 v1, 0x98

    aput v4, v0, v1

    const/16 v1, 0x88

    aput v2, v0, v1

    return-object v0
.end method

.method public static final isNarrowing(II)Z
    .locals 0

    shl-int/lit8 p0, p0, 0x4

    add-int/2addr p1, p0

    if-ltz p1, :cond_0

    const/16 p0, 0x100

    if-ge p1, p0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->CONVERSIONS:[I

    aget p0, p0, p1

    and-int/lit8 p0, p0, 0x5

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isWidening(II)Z
    .locals 0

    shl-int/lit8 p0, p0, 0x4

    add-int/2addr p1, p0

    if-ltz p1, :cond_0

    const/16 p0, 0x100

    if-ge p1, p0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->CONVERSIONS:[I

    aget p0, p0, p1

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->constantPoolName:[C

    invoke-direct {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;-><init>(I[C[C)V

    return-object p1
.end method

.method public computeUniqueKey(Z)[C
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->constantPoolName()[C

    move-result-object p1

    return-object p1
.end method

.method public constantPoolName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->constantPoolName:[C

    return-object v0
.end method

.method public getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr p2, v1

    if-ltz p2, :cond_1

    const/16 v1, 0x100

    if-ge p2, v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->CONVERSIONS:[I

    aget p2, v1, p2

    and-int/lit8 p2, p2, 0x3

    if-eqz p2, :cond_1

    return v0

    :cond_1
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne p0, p2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isUncheckedException(Z)Z
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public kind()I
    .locals 1

    const/16 v0, 0x84

    return v0
.end method

.method public qualifiedSourceName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    return-object v0
.end method

.method public readableName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    return-object v0
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    return-void
.end method

.method public shortReadableName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    return-object v0
.end method

.method public sourceName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->readableName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_0
    return-object v0
.end method

.method public unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
