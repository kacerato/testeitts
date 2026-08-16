.class public Lorg/eclipse/jdt/internal/core/util/BootstrapMethodsEntry;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;


# instance fields
.field private bootstrapArguments:[I

.field private bootstrapMethodReference:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BootstrapMethodsEntry;->bootstrapMethodReference:I

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x4

    :goto_0
    if-lt p2, v1, :cond_0

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BootstrapMethodsEntry;->bootstrapArguments:[I

    return-void

    :cond_0
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v4

    aput v4, v2, p2

    add-int/2addr v3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBootstrapArguments()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BootstrapMethodsEntry;->bootstrapArguments:[I

    return-object v0
.end method

.method public getBootstrapMethodReference()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BootstrapMethodsEntry;->bootstrapMethodReference:I

    return v0
.end method
