.class public Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;
.super Lorg/eclipse/jdt/internal/compiler/impl/Constant;
.source "SourceFile"


# static fields
.field private static final FALSE:Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

.field private static final TRUE:Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;


# instance fields
.field private value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;-><init>(Z)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->TRUE:Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;-><init>(Z)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->FALSE:Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;-><init>()V

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->value:Z

    return-void
.end method

.method public static fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->TRUE:Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->FALSE:Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->value:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->value:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(boolean)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeID()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
