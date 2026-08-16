.class public Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ITEM_DOUBLE:I = 0x3

.field public static final ITEM_FLOAT:I = 0x2

.field public static final ITEM_INTEGER:I = 0x1

.field public static final ITEM_LONG:I = 0x4

.field public static final ITEM_NULL:I = 0x5

.field public static final ITEM_OBJECT:I = 0x7

.field public static final ITEM_TOP:I = 0x0

.field public static final ITEM_UNINITIALIZED:I = 0x8

.field public static final ITEM_UNINITIALIZED_THIS:I = 0x6


# instance fields
.field private constantPoolName:[C

.field private id:I

.field public offset:I

.field public tag:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II[C)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    .line 5
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    .line 6
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    return-void
.end method

.method public constructor <init>(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 8
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    return-void
.end method

.method public constructor <init>(I[C)V
    .locals 1

    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(II[C)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x7

    .line 11
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x5

    .line 13
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x2

    .line 14
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    .line 15
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x4

    .line 16
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public constantPoolName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    return-object v0
.end method

.method public duplicate()Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName()[C

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName()[C

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public id()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    return v0
.end method

.method public readableName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    return-object v0
.end method

.method public replaceWithElementType()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    const/4 v1, 0x1

    aget-char v2, v0, v1

    const/16 v3, 0x4c

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {v0, v4, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    goto :goto_0

    :cond_0
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    array-length v2, v0

    if-ne v2, v1, :cond_8

    const/4 v1, 0x0

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_6

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5

    const/16 v1, 0x56

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x49

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    goto :goto_0

    :pswitch_1
    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    goto :goto_0

    :cond_6
    const/16 v0, 0xc

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x9

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName:[C

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x7

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x5

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    const-string v2, ")"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "uninitialized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->readableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->readableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v1, "uninitialized_this("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->readableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_8
    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
