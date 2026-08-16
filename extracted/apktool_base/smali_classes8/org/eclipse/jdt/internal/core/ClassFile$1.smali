.class Lorg/eclipse/jdt/internal/core/ClassFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/ClassFile;->setupExternalAnnotationProvider(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/ClassFile;

.field private final synthetic val$externalAnnotationPath:Lorg/eclipse/core/runtime/IPath;

.field private final synthetic val$typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClassFile$1;->this$0:Lorg/eclipse/jdt/internal/core/ClassFile;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ClassFile$1;->val$externalAnnotationPath:Lorg/eclipse/core/runtime/IPath;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/ClassFile$1;->val$typeName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public produce()Ljava/util/zip/ZipFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClassFile$1;->val$externalAnnotationPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read annotation file for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClassFile$1;->val$typeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClassFile$1;->val$externalAnnotationPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
