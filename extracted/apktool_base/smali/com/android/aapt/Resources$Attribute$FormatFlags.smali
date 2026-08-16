.class public final enum Lcom/android/aapt/Resources$Attribute$FormatFlags;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/B1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/aapt/Resources$Attribute$FormatFlags;",
        ">;",
        "Lcom/google/protobuf/B1;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final enum ANY:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final ANY_VALUE:I = 0xffff

.field public static final enum BOOLEAN:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final BOOLEAN_VALUE:I = 0x8

.field public static final enum COLOR:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final COLOR_VALUE:I = 0x10

.field public static final enum DIMENSION:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final DIMENSION_VALUE:I = 0x40

.field public static final enum ENUM:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final ENUM_VALUE:I = 0x10000

.field public static final enum FLAGS:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final FLAGS_VALUE:I = 0x20000

.field public static final enum FLOAT:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final FLOAT_VALUE:I = 0x20

.field public static final enum FRACTION:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final FRACTION_VALUE:I = 0x80

.field public static final enum INTEGER:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final INTEGER_VALUE:I = 0x4

.field public static final enum NONE:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final NONE_VALUE:I = 0x0

.field public static final enum REFERENCE:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final REFERENCE_VALUE:I = 0x1

.field public static final enum STRING:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field public static final STRING_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field private static final VALUES:[Lcom/android/aapt/Resources$Attribute$FormatFlags;

.field private static final internalValueMap:Lcom/google/protobuf/D0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/D0$d<",
            "Lcom/android/aapt/Resources$Attribute$FormatFlags;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/aapt/Resources$Attribute$FormatFlags;
    .locals 13

    sget-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->NONE:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v1, Lcom/android/aapt/Resources$Attribute$FormatFlags;->ANY:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v2, Lcom/android/aapt/Resources$Attribute$FormatFlags;->REFERENCE:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v3, Lcom/android/aapt/Resources$Attribute$FormatFlags;->STRING:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v4, Lcom/android/aapt/Resources$Attribute$FormatFlags;->INTEGER:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v5, Lcom/android/aapt/Resources$Attribute$FormatFlags;->BOOLEAN:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v6, Lcom/android/aapt/Resources$Attribute$FormatFlags;->COLOR:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v7, Lcom/android/aapt/Resources$Attribute$FormatFlags;->FLOAT:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v8, Lcom/android/aapt/Resources$Attribute$FormatFlags;->DIMENSION:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v9, Lcom/android/aapt/Resources$Attribute$FormatFlags;->FRACTION:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v10, Lcom/android/aapt/Resources$Attribute$FormatFlags;->ENUM:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v11, Lcom/android/aapt/Resources$Attribute$FormatFlags;->FLAGS:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    sget-object v12, Lcom/android/aapt/Resources$Attribute$FormatFlags;->UNRECOGNIZED:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    filled-new-array/range {v0 .. v12}, [Lcom/android/aapt/Resources$Attribute$FormatFlags;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->NONE:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const v1, 0xffff

    const-string v2, "ANY"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->ANY:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const-string v1, "REFERENCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->REFERENCE:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const-string v1, "STRING"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->STRING:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const-string v1, "INTEGER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->INTEGER:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->BOOLEAN:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const/4 v1, 0x6

    const/16 v2, 0x10

    const-string v4, "COLOR"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->COLOR:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const/4 v1, 0x7

    const/16 v2, 0x20

    const-string v4, "FLOAT"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->FLOAT:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const-string v1, "DIMENSION"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->DIMENSION:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const/16 v1, 0x9

    const/16 v2, 0x80

    const-string v3, "FRACTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->FRACTION:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const/16 v1, 0xa

    const/high16 v2, 0x10000

    const-string v3, "ENUM"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->ENUM:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const/16 v1, 0xb

    const/high16 v2, 0x20000

    const-string v3, "FLAGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->FLAGS:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    const/16 v1, 0xc

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/aapt/Resources$Attribute$FormatFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->UNRECOGNIZED:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    invoke-static {}, Lcom/android/aapt/Resources$Attribute$FormatFlags;->$values()[Lcom/android/aapt/Resources$Attribute$FormatFlags;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->$VALUES:[Lcom/android/aapt/Resources$Attribute$FormatFlags;

    new-instance v0, Lcom/android/aapt/Resources$Attribute$FormatFlags$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$Attribute$FormatFlags$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->internalValueMap:Lcom/google/protobuf/D0$d;

    invoke-static {}, Lcom/android/aapt/Resources$Attribute$FormatFlags;->values()[Lcom/android/aapt/Resources$Attribute$FormatFlags;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->VALUES:[Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/aapt/Resources$Attribute$FormatFlags;
    .locals 1

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x8

    if-eq p0, v0, :cond_7

    const/16 v0, 0x10

    if-eq p0, v0, :cond_6

    const/16 v0, 0x20

    if-eq p0, v0, :cond_5

    const/16 v0, 0x40

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const v0, 0xffff

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->ENUM:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->ANY:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->FLAGS:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->FRACTION:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->DIMENSION:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->FLOAT:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_6
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->COLOR:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->BOOLEAN:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_8
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->INTEGER:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_9
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->STRING:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_a
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->REFERENCE:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    :cond_b
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->NONE:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/D0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/D0$d<",
            "Lcom/android/aapt/Resources$Attribute$FormatFlags;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->internalValueMap:Lcom/google/protobuf/D0$d;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/aapt/Resources$Attribute$FormatFlags;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/aapt/Resources$Attribute$FormatFlags;->forNumber(I)Lcom/android/aapt/Resources$Attribute$FormatFlags;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lcom/android/aapt/Resources$Attribute$FormatFlags;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->i()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lcom/android/aapt/Resources$Attribute$FormatFlags;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->UNRECOGNIZED:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->VALUES:[Lcom/android/aapt/Resources$Attribute$FormatFlags;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/aapt/Resources$Attribute$FormatFlags;
    .locals 1

    .line 1
    const-class v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object p0
.end method

.method public static values()[Lcom/android/aapt/Resources$Attribute$FormatFlags;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->$VALUES:[Lcom/android/aapt/Resources$Attribute$FormatFlags;

    invoke-virtual {v0}, [Lcom/android/aapt/Resources$Attribute$FormatFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/aapt/Resources$Attribute$FormatFlags;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$Attribute$FormatFlags;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->UNRECOGNIZED:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    sget-object v0, Lcom/android/aapt/Resources$Attribute$FormatFlags;->UNRECOGNIZED:Lcom/android/aapt/Resources$Attribute$FormatFlags;

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Attribute$FormatFlags;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->t()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$e;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
