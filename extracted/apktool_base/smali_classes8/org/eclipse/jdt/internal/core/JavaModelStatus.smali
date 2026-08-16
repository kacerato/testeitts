.class public Lorg/eclipse/jdt/internal/core/JavaModelStatus;
.super Lorg/eclipse/core/runtime/Status;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaModelStatus;
.implements Lorg/eclipse/jdt/core/IJavaModelStatusConstants;


# static fields
.field protected static final NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

.field public static final VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;


# instance fields
.field protected children:[Lorg/eclipse/core/runtime/IStatus;

.field protected elements:[Lorg/eclipse/jdt/core/IJavaElement;

.field protected path:Lorg/eclipse/core/runtime/IPath;

.field protected string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/core/runtime/IStatus;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->status_OK:Ljava/lang/String;

    invoke-direct {v1, v0, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(IILjava/lang/String;)V

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-string v4, "JavaModelStatus"

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 4
    const-string v4, "JavaModelStatus"

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 5
    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 6
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    .line 7
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6

    .line 13
    const-string v4, "JavaModelStatus"

    const/4 v5, 0x0

    const-string v2, "org.eclipse.jdt.core"

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 15
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    .line 16
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    .line 18
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V
    .locals 6

    .line 36
    const-string v4, "JavaModelStatus"

    const/4 v5, 0x0

    const-string v2, "org.eclipse.jdt.core"

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 37
    new-array p2, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 38
    sget-object p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    const/4 p2, 0x1

    .line 39
    new-array p2, p2, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p3, p2, p1

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 40
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    .line 41
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 12
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 6

    .line 19
    const-string v2, "org.eclipse.jdt.core"

    const-string v4, "JavaModelStatus"

    const/4 v1, 0x4

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 20
    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 21
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    .line 22
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public constructor <init>(ILorg/eclipse/core/runtime/IPath;)V
    .locals 6

    .line 23
    const-string v4, "JavaModelStatus"

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 24
    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 25
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    .line 26
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 27
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method

.method public constructor <init>(ILorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    const/4 v0, 0x1

    .line 28
    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I[Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void
.end method

.method public constructor <init>(ILorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I[Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 30
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I[Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 32
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method

.method public constructor <init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I[Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 34
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    .line 35
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I[Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 6

    .line 8
    const-string v4, "JavaModelStatus"

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    .line 10
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/CoreException;)V
    .locals 6

    const/16 v3, 0x3c6

    .line 42
    const-string v4, "JavaModelStatus"

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 43
    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 44
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    .line 45
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public static newMultiStatus([Lorg/eclipse/jdt/core/IJavaModelStatus;)Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>()V

    iput-object p0, v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    return-object v0
.end method


# virtual methods
.method public getBits()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x21

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x3

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getChildren()[Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    return-object v0
.end method

.method public getElements()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_testOutputFolderMustBeSeparateFromMainOutputFolders:Ljava/lang/String;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    :cond_1
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_testSourceRequiresSeparateOutputFolder:Ljava/lang/String;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->status_timeout_javadoc:Ljava/lang/String;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->status_timeout_javadoc:Ljava/lang/String;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->status_timeout_javadoc:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_deprecated_variable:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v2, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    filled-new-array {v2, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_unknown_javadoc_format:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v1, v1, v4

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_5

    array-length v1, v0

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->status_cannot_retrieve_attached_javadoc:Ljava/lang/String;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->status_cannot_retrieve_attached_javadoc:Ljava/lang/String;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->status_cannot_retrieve_attached_javadoc:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object v2

    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_notOnClasspath:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v1, v1, v4

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    :cond_8
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_disabledMultipleOutputLocations:Ljava/lang/String;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    :cond_9
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_disabledInclusionExclusionPatterns:Ljava/lang/String;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cycle:Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_b
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_noLocalContents:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_c
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidPackage:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_d
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidProject:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_e
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidResourceType:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_f
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidResource:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidSibling:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidSibling:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v1, v1, v4

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_11
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_evaluationError:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_12
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_serializationError:Ljava/lang/String;

    return-object v0

    :pswitch_13
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_initializationError:Ljava/lang/String;

    return-object v0

    :pswitch_14
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_targetException:Ljava/lang/String;

    return-object v0

    :pswitch_15
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_JDOMError:Ljava/lang/String;

    return-object v0

    :pswitch_16
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_IOException:Ljava/lang/String;

    return-object v0

    :pswitch_17
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidContents:Ljava/lang/String;

    return-object v0

    :pswitch_18
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidName:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_19
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_needName:Ljava/lang/String;

    return-object v0

    :pswitch_1a
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_updateConflict:Ljava/lang/String;

    return-object v0

    :pswitch_1b
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_indexOutOfBounds:Ljava/lang/String;

    return-object v0

    :pswitch_1c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidPath:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, "null"

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_invalidDestination:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v1, v1, v4

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1e
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    aget-object v0, v0, v4

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->isDefaultPackage()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_cannotRenameDefaultPackage:Ljava/lang/String;

    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    instance-of v0, v0, Lorg/eclipse/jdt/core/IPackageFragment;

    if-eqz v0, :cond_f

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_defaultPackageReadOnly:Ljava/lang/String;

    return-object v0

    :cond_f
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_readOnly:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_20
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_needString:Ljava/lang/String;

    return-object v0

    :pswitch_21
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_cannotUseDeviceOnPath:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_22
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_needAbsolutePath:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_23
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_pathOutsideProject:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v2, v2, v4

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_24
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_needPath:Ljava/lang/String;

    return-object v0

    :pswitch_25
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_doesNotExist:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v1, v1, v4

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_26
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_needElements:Ljava/lang/String;

    return-object v0

    :pswitch_27
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_notSupported:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v1

    if-lt v4, v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    if-lez v4, :cond_11

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v1, v1, v4

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_28
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_coreException:Ljava/lang/String;

    return-object v0

    :pswitch_29
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundVariablePath:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v2, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/JavaCore;->getClasspathContainerInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/ClasspathContainerInitializer;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->getDescription(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v1

    :cond_12
    if-nez v1, :cond_13

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_13
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundContainerPath:Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/JavaCore;->getClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v2, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/JavaCore;->getClasspathContainerInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/ClasspathContainerInitializer;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->getDescription(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_14
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathContainer;->getDescription()Ljava/lang/String;

    move-result-object v1

    :cond_15
    :goto_4
    if-nez v1, :cond_16

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_16
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_invalidContainer:Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    return-object v1

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3c2
        :pswitch_2b
        :pswitch_2a
        :pswitch_0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->path:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public getSeverity()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/core/runtime/Status;->getSeverity()I

    move-result v0

    return v0

    :cond_0
    array-length v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v3

    if-le v3, v1, :cond_2

    move v1, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->string:Ljava/lang/String;

    return-object v0
.end method

.method public isDoesNotExist()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getCode()I

    move-result v0

    const/16 v1, 0x3c9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiStatus()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->NO_CHILDREN:[Lorg/eclipse/core/runtime/IStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOK()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public matches(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->isMultiStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->matches(Lorg/eclipse/jdt/internal/core/JavaModelStatus;I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->children:[Lorg/eclipse/core/runtime/IStatus;

    aget-object v3, v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->matches(Lorg/eclipse/jdt/internal/core/JavaModelStatus;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public matches(Lorg/eclipse/jdt/internal/core/JavaModelStatus;I)Z
    .locals 1

    and-int/lit8 v0, p2, 0x7

    and-int/lit8 p2, p2, -0x8

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getBits()I

    move-result p1

    if-eqz v0, :cond_0

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    if-ne p0, v0, :cond_0

    const-string v0, "JavaModelStatus[OK]"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Java Model Status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
