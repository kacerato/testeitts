.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_TYPE_PATH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->NO_TYPE_PATH:[I

    return-void
.end method


# virtual methods
.method public abstract getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
.end method

.method public abstract getBoundIndex()I
.end method

.method public abstract getMethodFormalParameterIndex()I
.end method

.method public abstract getSupertypeIndex()I
.end method

.method public abstract getTargetType()I
.end method

.method public abstract getThrowsTypeIndex()I
.end method

.method public abstract getTypeParameterIndex()I
.end method

.method public abstract getTypePath()[I
.end method
