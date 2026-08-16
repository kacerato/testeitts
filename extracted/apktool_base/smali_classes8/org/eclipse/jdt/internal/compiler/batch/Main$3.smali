.class Lorg/eclipse/jdt/internal/compiler/batch/Main$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleClasspath(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/batch/Main;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/batch/Main;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$3;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidClasspathSection(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$3;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v1, "configure.invalidClasspathSection"

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    return-void
.end method

.method public multipleClasspathSections(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$3;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v1, "configure.multipleClasspathSections"

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    return-void
.end method
