.class Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeParameter"
.end annotation


# instance fields
.field public bounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;",
            ">;"
        }
    .end annotation
.end field

.field public firstBoundIsClass:Z

.field public identifier:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;->bounds:Ljava/util/List;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->EMPTY_CHAR_ARRAY:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;->identifier:[C

    return-void
.end method
