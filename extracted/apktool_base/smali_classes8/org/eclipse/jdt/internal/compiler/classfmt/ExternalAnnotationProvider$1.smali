.class Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$1;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->initAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

.field private final synthetic val$environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$1;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$1;->val$environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V

    return-void
.end method


# virtual methods
.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$1;->val$environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotationName()[[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;->getBinaryTypeName([[C)[C

    move-result-object v0

    return-object v0
.end method
