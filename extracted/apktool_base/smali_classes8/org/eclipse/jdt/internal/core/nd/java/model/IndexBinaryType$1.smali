.class Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$binaryName:[C

.field private final synthetic val$resultingPair:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;


# direct methods
.method public constructor <init>([C[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType$1;->val$binaryName:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType$1;->val$resultingPair:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType$1;->val$resultingPair:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    return-object v0
.end method

.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType$1;->val$binaryName:[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/BinaryTypeFormatter;->annotationToString(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
