.class abstract Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SingleMarkerAnnotation"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinaryTypeName([[C)[C
    .locals 2

    const/16 v0, 0x2f

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    const/16 v0, 0x3b

    const/16 v1, 0x4c

    invoke-static {v1, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat(C[CC)[C

    move-result-object p1

    return-object p1
.end method

.method public getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->NoMembers:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    return-object v0
.end method

.method public isExternalAnnotation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
