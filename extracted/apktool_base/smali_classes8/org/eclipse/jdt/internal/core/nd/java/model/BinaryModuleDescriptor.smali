.class public Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final indexPath:[C

.field public final location:[C

.field public final moduleName:[C

.field public final workspacePath:[C


# direct methods
.method public constructor <init>([C[C[C[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->location:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->moduleName:[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->indexPath:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->workspacePath:[C

    return-void
.end method


# virtual methods
.method public isInJarFile()Z
    .locals 2

    const/16 v0, 0x7c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->indexPath:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->indexOf(C[C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->workspacePath:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->moduleName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
