.class Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidArchiveInfo"
.end annotation


# instance fields
.field final evictionTimestamp:J

.field final reason:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;


# direct methods
.method public constructor <init>(JLorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;->evictionTimestamp:J

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;->reason:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    return-void
.end method
