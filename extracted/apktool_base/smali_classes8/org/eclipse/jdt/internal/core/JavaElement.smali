.class public abstract Lorg/eclipse/jdt/internal/core/JavaElement;
.super Lorg/eclipse/core/runtime/PlatformObject;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaElement;


# static fields
.field private static final CHARSET:[B

.field private static final CHARSET_HTML5:[B

.field private static final CLOSING_DOUBLE_QUOTE:[B

.field public static final JEM_ANNOTATION:C = '}'

.field public static final JEM_CLASSFILE:C = '('

.field public static final JEM_COMPILATIONUNIT:C = '{'

.field public static final JEM_COUNT:C = '!'

.field public static final JEM_DELIMITER_ESCAPE:C = '='

.field public static final JEM_ESCAPE:C = '\\'

.field public static final JEM_FIELD:C = '^'

.field public static final JEM_IMPORTDECLARATION:C = '#'

.field public static final JEM_INITIALIZER:C = '|'

.field public static final JEM_JAVAPROJECT:C = '='

.field public static final JEM_LAMBDA_EXPRESSION:C = ')'

.field public static final JEM_LAMBDA_METHOD:C = '&'

.field public static final JEM_LOCALVARIABLE:C = '@'

.field public static final JEM_METHOD:C = '~'

.field public static final JEM_MODULAR_CLASSFILE:C = '\''

.field public static final JEM_MODULE:C = '`'

.field public static final JEM_PACKAGEDECLARATION:C = '%'

.field public static final JEM_PACKAGEFRAGMENT:C = '<'

.field public static final JEM_PACKAGEFRAGMENTROOT:C = '/'

.field public static final JEM_STRING:C = '\"'

.field public static final JEM_TYPE:C = '['

.field public static final JEM_TYPE_PARAMETER:C = ']'

.field private static final META_END:[B

.field private static final META_START:[B

.field protected static final NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

.field protected static final NO_INFO:Ljava/lang/Object;

.field protected static final NO_STRINGS:[Ljava/lang/String;

.field private static invalidURLs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static validURLs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected parent:Lorg/eclipse/jdt/internal/core/JavaElement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x22

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaElement;->CLOSING_DOUBLE_QUOTE:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->CHARSET:[B

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->CHARSET_HTML5:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->META_START:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->META_END:[B

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_STRINGS:[Ljava/lang/String;

    new-array v0, v2, [Lorg/eclipse/jdt/internal/core/JavaElement;

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->invalidURLs:Ljava/util/Set;

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->validURLs:Ljava/util/Set;

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x68t
        0x61t
        0x72t
        0x73t
        0x65t
        0x74t
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x63t
        0x68t
        0x61t
        0x72t
        0x73t
        0x65t
        0x74t
        0x3dt
        0x22t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3ct
        0x6dt
        0x65t
        0x74t
        0x61t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x22t
        0x3et
    .end array-data
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/core/runtime/PlatformObject;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    return-void
.end method

.method public static getLibraryJavadocLocation(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Entry must be of kind CPE_LIBRARY or CPE_VARIABLE"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    aget-object v1, p0, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "javadoc_location"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3f0

    invoke-direct {v1, v2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public appendEscapedDelimiter(Ljava/lang/StringBuffer;C)V
    .locals 1

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removeInfoAndChildren(Lorg/eclipse/jdt/internal/core/JavaElement;)Ljava/lang/Object;

    return-void
.end method

.method public abstract closing(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract createElementInfo()Ljava/lang/Object;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-eq v2, v3, :cond_1

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :cond_1
    :pswitch_0
    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public exists()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public findNode(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract generateInfos(Ljava/lang/Object;Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object v0
.end method

.method public getChildrenOfType(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v2

    :cond_0
    aget-object v4, v0, v3

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getClassFile()Lorg/eclipse/jdt/core/IClassFile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->createElementInfo()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->openWhenClosed(Ljava/lang/Object;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public abstract getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandleMemento()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento(Ljava/lang/StringBuffer;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento(Ljava/lang/StringBuffer;)V

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMementoDelimiter()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public abstract getHandleMementoDelimiter()C
.end method

.method public getIndexOf([B[BII)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    array-length v1, p2

    if-eq p4, v0, :cond_1

    array-length v2, p1

    if-ge p4, v2, :cond_1

    goto :goto_0

    :cond_1
    array-length p4, p1

    :goto_0
    if-ge p4, v1, :cond_2

    return v0

    :cond_2
    sub-int/2addr p4, v1

    const/4 v2, 0x1

    add-int/2addr p4, v2

    :goto_1
    if-lt p3, p4, :cond_3

    return v0

    :cond_3
    aget-byte v3, p1, p3

    const/4 v4, 0x0

    aget-byte v4, p2, v4

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->isSameCharacter(BB)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    :goto_2
    if-lt v3, v1, :cond_4

    return p3

    :cond_4
    add-int v4, p3, v3

    aget-byte v4, p1, v4

    aget-byte v5, p2, v3

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->isSameCharacter(BB)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    return v0
.end method

.method public getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/IJavaModel;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/IJavaModel;

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/IJavaProject;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/IJavaProject;

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavadocBaseLocation()Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getResolvedClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getLibraryJavadocLocation(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/net/URL;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v2

    :catch_0
    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    return-object v1

    :cond_2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getLibraryJavadocLocation(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/net/URL;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getOpenable()Lorg/eclipse/jdt/core/IOpenable;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    return-object v0
.end method

.method public getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast v0, Lorg/eclipse/jdt/core/IOpenable;

    return-object v0
.end method

.method public getParent()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object v0
.end method

.method public getPrimaryElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getResource()Lorg/eclipse/core/resources/IResource;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/core/runtime/IPath;)V

    :cond_0
    return-object v0
.end method

.method public getSourceElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    instance-of v0, p0, Lorg/eclipse/jdt/core/ISourceReference;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    aget-object v2, v0, v1

    instance-of v3, v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    if-eqz v3, :cond_8

    check-cast v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v4

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v3

    add-int/2addr v3, v4

    if-gt v4, p1, :cond_8

    if-gt p1, v3, :cond_8

    instance-of v3, v2, Lorg/eclipse/jdt/core/IField;

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    move-object v5, v3

    :goto_1
    move-object v6, v2

    check-cast v6, Lorg/eclipse/jdt/core/IField;

    invoke-interface {v6}, Lorg/eclipse/jdt/core/ISourceReference;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v7

    invoke-interface {v6}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v6

    add-int/2addr v7, v6

    if-gt p1, v7, :cond_4

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    aget-object v5, v0, v1

    check-cast v5, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    goto :goto_2

    :cond_1
    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v6

    if-eq v6, v4, :cond_2

    goto :goto_3

    :cond_2
    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez v5, :cond_5

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto :goto_4

    :cond_5
    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    :goto_4
    return-object p1

    :cond_6
    instance-of v0, v2, Lorg/eclipse/jdt/core/IParent;

    if-eqz v0, :cond_7

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v2

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    :goto_5
    return-object p0
.end method

.method public getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    return-object v0
.end method

.method public getURLContents(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    const/4 v4, 0x5

    const/16 v5, 0x3f0

    if-lt v2, v4, :cond_1

    :cond_0
    move-object p2, v1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/16 p2, 0x2710

    invoke-virtual {v3, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of p2, v3, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_2

    move-object p2, v3

    check-cast p2, Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v6, 0x12d

    if-ne v4, v6, :cond_0

    const-string v4, "location"

    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto/16 :goto_f

    :catch_0
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    goto/16 :goto_6

    :catch_1
    move-exception p1

    move-object p2, v1

    goto/16 :goto_7

    :catch_2
    move-exception p1

    move-object p2, v1

    goto/16 :goto_8

    :catch_3
    move-exception p1

    move-object p2, v1

    goto/16 :goto_9

    :catch_4
    move-exception p1

    move-object p2, v1

    goto/16 :goto_a

    :catch_5
    move-exception p2

    move-object v0, v1

    move-object v2, v0

    goto/16 :goto_b

    :cond_2
    instance-of p2, v3, Ljava/net/JarURLConnection;

    if-eqz p2, :cond_0

    move-object p2, v3

    check-cast p2, Ljava/net/JarURLConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_26
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_22
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_20
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_f

    :catch_6
    move-exception p1

    move-object v2, v1

    goto/16 :goto_6

    :catch_7
    move-exception p1

    goto/16 :goto_7

    :catch_8
    move-exception p1

    goto/16 :goto_8

    :catch_9
    move-exception p1

    goto/16 :goto_9

    :catch_a
    move-exception p1

    goto/16 :goto_a

    :catch_b
    move-exception v0

    move-object v2, v1

    :goto_1
    move-object v10, v0

    move-object v0, p2

    move-object p2, v10

    goto/16 :goto_b

    :catch_c
    move-object v2, v1

    goto/16 :goto_10

    :catch_d
    move-object v2, v1

    goto/16 :goto_11

    :goto_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_23
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsByteArray(Ljava/io/InputStream;I)[B

    move-result-object v3

    if-nez v4, :cond_6

    sget-object v6, Lorg/eclipse/jdt/internal/core/JavaElement;->META_START:[B

    const/4 v7, -0x1

    invoke-virtual {p0, v3, v6, v0, v7}, Lorg/eclipse/jdt/internal/core/JavaElement;->getIndexOf([B[BII)I

    move-result v0

    if-eq v0, v7, :cond_6

    sget-object v6, Lorg/eclipse/jdt/internal/core/JavaElement;->META_END:[B

    invoke-virtual {p0, v3, v6, v0, v7}, Lorg/eclipse/jdt/internal/core/JavaElement;->getIndexOf([B[BII)I

    move-result v6

    if-eq v6, v7, :cond_6

    add-int/lit8 v8, v6, 0x1

    array-length v9, v3

    if-gt v8, v9, :cond_3

    move v6, v8

    :cond_3
    sget-object v8, Lorg/eclipse/jdt/internal/core/JavaElement;->CHARSET_HTML5:[B

    invoke-virtual {p0, v3, v8, v0, v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getIndexOf([B[BII)I

    move-result v9

    if-ne v9, v7, :cond_4

    sget-object v8, Lorg/eclipse/jdt/internal/core/JavaElement;->CHARSET:[B

    invoke-virtual {p0, v3, v8, v0, v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getIndexOf([B[BII)I

    move-result v0

    if-eq v0, v7, :cond_5

    array-length v8, v8

    add-int/2addr v0, v8

    goto :goto_4

    :catchall_2
    move-exception p1

    :goto_3
    move-object v1, v2

    goto/16 :goto_f

    :catch_e
    move-exception p1

    goto/16 :goto_6

    :catch_f
    move-exception p1

    move-object v1, v2

    goto/16 :goto_7

    :catch_10
    move-exception p1

    move-object v1, v2

    goto/16 :goto_8

    :catch_11
    move-exception p1

    move-object v1, v2

    goto/16 :goto_9

    :catch_12
    move-exception p1

    move-object v1, v2

    goto/16 :goto_a

    :catch_13
    move-exception v0

    goto :goto_1

    :cond_4
    array-length v0, v8

    add-int/2addr v0, v9

    :cond_5
    :goto_4
    if-eq v0, v7, :cond_6

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavaElement;->CLOSING_DOUBLE_QUOTE:[B

    invoke-virtual {p0, v3, v4, v0, v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getIndexOf([B[BII)I

    move-result v4

    new-instance v6, Ljava/lang/String;

    sub-int/2addr v4, v0

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v0, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v6

    :cond_6
    if-nez v4, :cond_7

    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getDefaultCharset()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_14
    :cond_7
    if-eqz v3, :cond_b

    if-eqz v4, :cond_9

    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_15

    :catch_15
    if-eqz p2, :cond_8

    :try_start_6
    invoke-virtual {p2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_16

    :catch_16
    :cond_8
    return-object v0

    :cond_9
    :try_start_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_17

    :catch_17
    if-eqz p2, :cond_a

    :try_start_9
    invoke-virtual {p2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_18

    :catch_18
    :cond_a
    return-object v0

    :cond_b
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_19

    :catch_19
    if-eqz p2, :cond_10

    :try_start_b
    invoke-virtual {p2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1f

    goto :goto_c

    :catch_1a
    move-object v1, v2

    goto :goto_d

    :catch_1b
    move-object v1, v2

    goto :goto_e

    :goto_6
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/IllegalArgumentException;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v0, :cond_e

    if-eqz v2, :cond_c

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1c

    :catch_1c
    :cond_c
    if-eqz p2, :cond_d

    :try_start_e
    invoke-virtual {p2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1d

    :catch_1d
    :cond_d
    return-object v1

    :cond_e
    :try_start_f
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1, v5}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :goto_7
    :try_start_10
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3d9

    invoke-direct {v0, p1, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :goto_8
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1, v5}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :goto_9
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1, v5}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :goto_a
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1, v5}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_b
    :try_start_11
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->validateAndCache(Ljava/net/URL;Ljava/io/FileNotFoundException;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v2, :cond_f

    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1e

    :catch_1e
    :cond_f
    if-eqz v0, :cond_10

    :try_start_13
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1f

    goto :goto_5

    :catch_1f
    :cond_10
    :goto_c
    return-object v1

    :catchall_3
    move-exception p1

    move-object p2, v0

    goto/16 :goto_3

    :catch_20
    move-object p2, v1

    :catch_21
    :goto_d
    :try_start_14
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v0, v5, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :catch_22
    move-object p2, v1

    :catch_23
    :goto_e
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3f4

    invoke-direct {v0, v2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :goto_f
    if-eqz v1, :cond_11

    :try_start_15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_24

    :catch_24
    :cond_11
    if-eqz p2, :cond_12

    :try_start_16
    invoke-virtual {p2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_25
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_25

    :catch_25
    :cond_12
    throw p1

    :catch_26
    move-object p2, v1

    move-object v2, p2

    :catch_27
    :goto_10
    if-eqz v2, :cond_13

    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_28

    :catch_28
    :cond_13
    if-eqz p2, :cond_14

    :try_start_18
    invoke-virtual {p2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_29
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_29

    :catch_29
    :cond_14
    return-object v1

    :catch_2a
    move-object p2, v1

    move-object v2, p2

    :catch_2b
    :goto_11
    if-eqz v2, :cond_15

    :try_start_19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2c

    :catch_2c
    :cond_15
    if-eqz p2, :cond_16

    :try_start_1a
    invoke-virtual {p2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_2d

    :catch_2d
    :cond_16
    return-object v1
.end method

.method public hasChildren()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    return v0
.end method

.method public isAncestorOf(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSameCharacter(BB)Z
    .locals 0

    if-eq p1, p2, :cond_1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3c9

    invoke-direct {v0, v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v0
.end method

.method public newJavaModelException(Lorg/eclipse/core/runtime/IStatus;)Lorg/eclipse/jdt/core/JavaModelException;
    .locals 4

    instance-of v0, p1, Lorg/eclipse/jdt/core/IJavaModelStatus;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    check-cast p1, Lorg/eclipse/jdt/core/IJavaModelStatus;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v2

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result v3

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    return-object v0
.end method

.method public newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    return-object v0
.end method

.method public openWhenClosed(Ljava/lang/Object;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->hasTemporaryCache()Z

    move-result v1

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getTemporaryCache()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->generateInfos(Ljava/lang/Object;Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    if-nez p1, :cond_0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getOpenable()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->closeBuffer()V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object p1

    throw p1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v0, p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->putInfos(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/Object;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetTemporaryCache()V

    :cond_4
    return-object p1

    :goto_1
    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetTemporaryCache()V

    :cond_5
    throw p1
.end method

.method public readableName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 0

    return-object p0
.end method

.method public abstract resource()Lorg/eclipse/core/resources/IResource;
.end method

.method public tabString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-gtz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toString(ILjava/lang/StringBuffer;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ILjava/lang/StringBuffer;)V
    .locals 1

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringInfo(ILjava/lang/StringBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringAncestors(Ljava/lang/StringBuffer;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringChildren(ILjava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public toStringAncestors(Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, " [in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringAncestors(Ljava/lang/StringBuffer;)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public toStringChildren(ILjava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 3

    if-eqz p3, :cond_2

    instance-of v0, p3, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p3, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toString(ILjava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->peekAtInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringName(Ljava/lang/StringBuffer;)V

    if-nez p3, :cond_0

    .line 5
    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public toStringName(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toStringWithAncestors()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringWithAncestors(Z)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringAncestors(Ljava/lang/StringBuffer;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unresolved()Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 0

    return-object p0
.end method

.method public validateAndCache(Ljava/net/URL;Ljava/io/FileNotFoundException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaElement;->validURLs:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaElement;->invalidURLs:Ljava/util/Set;

    const/16 v2, 0x3f0

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p2, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->validURLs:Ljava/util/Set;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->validURLs:Ljava/util/Set;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->validURLs:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    return-void

    :catch_1
    :try_start_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->invalidURLs:Ljava/util/Set;

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->invalidURLs:Ljava/util/Set;

    :cond_5
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->invalidURLs:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p2, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v3, :cond_6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_6
    throw p1
.end method
