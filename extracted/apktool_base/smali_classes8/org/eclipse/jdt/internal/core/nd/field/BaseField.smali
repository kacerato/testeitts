.class abstract Lorg/eclipse/jdt/internal/core/nd/field/BaseField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/IField;


# instance fields
.field private fieldName:Ljava/lang/String;

.field protected offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffset()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    return v0
.end method

.method public final setFieldName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->fieldName:Ljava/lang/String;

    return-void
.end method

.method public final setOffset(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    return-void
.end method
