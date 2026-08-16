.class Lorg/eclipse/jdt/internal/core/JavaModelManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_missbehaving_container(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/jdt/core/IClasspathContainer;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

.field private final synthetic val$container:Lorg/eclipse/jdt/core/IClasspathContainer;

.field private final synthetic val$newEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/jdt/core/IClasspathContainer;[Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$6;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$6;->val$container:Lorg/eclipse/jdt/core/IClasspathContainer;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$6;->val$newEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\t\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "<null>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$6;->val$container:Lorg/eclipse/jdt/core/IClasspathContainer;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathContainer;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$6;->val$newEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    const-string p1, " \t\t}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, " \t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$6;->val$newEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
