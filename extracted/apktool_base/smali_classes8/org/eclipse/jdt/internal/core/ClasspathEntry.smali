.class public Lorg/eclipse/jdt/internal/core/ClasspathEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IClasspathEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;,
        Lorg/eclipse/jdt/internal/core/ClasspathEntry$UnknownXmlElements;
    }
.end annotation


# static fields
.field public static final DOT_DOT:Ljava/lang/String; = ".."

.field public static final EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

.field public static final INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

.field public static final K_OUTPUT:I = 0xa

.field public static final NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

.field public static final NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

.field public static final NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

.field private static final NO_PATHS:[Lorg/eclipse/core/runtime/IPath;

.field public static final TAG_ACCESSIBLE:Ljava/lang/String; = "accessible"

.field public static final TAG_ACCESS_RULE:Ljava/lang/String; = "accessrule"

.field public static final TAG_ACCESS_RULES:Ljava/lang/String; = "accessrules"

.field public static final TAG_ATTRIBUTE:Ljava/lang/String; = "attribute"

.field public static final TAG_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field public static final TAG_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field public static final TAG_ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field public static final TAG_CLASSPATH:Ljava/lang/String; = "classpath"

.field public static final TAG_CLASSPATHENTRY:Ljava/lang/String; = "classpathentry"

.field public static final TAG_COMBINE_ACCESS_RULES:Ljava/lang/String; = "combineaccessrules"

.field public static final TAG_DISCOURAGED:Ljava/lang/String; = "discouraged"

.field public static final TAG_EXCLUDING:Ljava/lang/String; = "excluding"

.field public static final TAG_EXPORTED:Ljava/lang/String; = "exported"

.field public static final TAG_IGNORE_IF_BETTER:Ljava/lang/String; = "ignoreifbetter"

.field public static final TAG_INCLUDING:Ljava/lang/String; = "including"

.field public static final TAG_KIND:Ljava/lang/String; = "kind"

.field public static final TAG_NON_ACCESSIBLE:Ljava/lang/String; = "nonaccessible"

.field public static final TAG_OUTPUT:Ljava/lang/String; = "output"

.field public static final TAG_PATH:Ljava/lang/String; = "path"

.field public static final TAG_PATTERN:Ljava/lang/String; = "pattern"

.field public static final TAG_REFERENCED_ENTRY:Ljava/lang/String; = "referencedentry"

.field public static final TAG_ROOTPATH:Ljava/lang/String; = "rootpath"

.field public static final TAG_SOURCEPATH:Ljava/lang/String; = "sourcepath"

.field private static final UNINIT_PATTERNS:[[C

.field private static final workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;


# instance fields
.field private accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

.field private combineAccessRules:Z

.field public contentKind:I

.field public entryKind:I

.field private exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

.field public extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

.field private fullExclusionPatternChars:[[C

.field private fullInclusionPatternChars:[[C

.field private inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

.field public isExported:Z

.field public path:Lorg/eclipse/core/runtime/IPath;

.field public referencingEntry:Lorg/eclipse/jdt/core/IClasspathEntry;

.field private rootID:Ljava/lang/String;

.field public sourceAttachmentPath:Lorg/eclipse/core/runtime/IPath;

.field public sourceAttachmentRootPath:Lorg/eclipse/core/runtime/IPath;

.field public specificOutputLocation:Lorg/eclipse/core/runtime/IPath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Non-initialized yet"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->UNINIT_PATTERNS:[[C

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    sput-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    new-array v1, v0, [Lorg/eclipse/core/runtime/IPath;

    sput-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_PATHS:[Lorg/eclipse/core/runtime/IPath;

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    new-array v1, v0, [Lorg/eclipse/core/runtime/IPath;

    sput-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    new-array v1, v0, [Lorg/eclipse/core/runtime/IPath;

    sput-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    new-array v1, v0, [Lorg/eclipse/jdt/core/IClasspathAttribute;

    sput-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    new-array v0, v0, [Lorg/eclipse/jdt/core/IAccessRule;

    sput-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    return-void
.end method

.method public constructor <init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathEntry;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->contentKind:I

    .line 4
    iput p2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    .line 6
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    .line 7
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    .line 8
    iput-object p9, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->referencingEntry:Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eqz p11, :cond_3

    .line 9
    array-length p1, p11

    if-lez p1, :cond_3

    .line 10
    new-array p2, p1, [Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    const/4 p9, 0x0

    .line 11
    invoke-static {p11, p9, p2, p9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    .line 13
    iget p11, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    const/4 v0, 0x2

    if-eq p11, v0, :cond_2

    const/4 v1, 0x3

    if-ne p11, v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/JavaModel;->getWorkspaceTarget(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p9

    if-nez p9, :cond_1

    .line 15
    invoke-interface {p3}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {p3}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p3

    invoke-interface {p3, p9}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 18
    :goto_1
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {p3, p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;-><init>([Lorg/eclipse/jdt/internal/compiler/env/AccessRule;BLjava/lang/String;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    .line 19
    :cond_3
    iput-boolean p12, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules:Z

    .line 20
    array-length p1, p13

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    sget-object p13, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    :goto_2
    iput-object p13, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    .line 21
    sget-object p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    if-eq p4, p1, :cond_5

    array-length p1, p4

    if-lez p1, :cond_5

    .line 22
    sget-object p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->UNINIT_PATTERNS:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars:[[C

    .line 23
    :cond_5
    array-length p1, p5

    if-lez p1, :cond_6

    .line 24
    sget-object p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->UNINIT_PATTERNS:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars:[[C

    .line 25
    :cond_6
    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentPath:Lorg/eclipse/core/runtime/IPath;

    .line 26
    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentRootPath:Lorg/eclipse/core/runtime/IPath;

    .line 27
    iput-object p8, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->specificOutputLocation:Lorg/eclipse/core/runtime/IPath;

    .line 28
    iput-boolean p10, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported:Z

    return-void
.end method

.method public constructor <init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V
    .locals 14

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 1
    invoke-direct/range {v0 .. v13}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathEntry;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/eclipse/jdt/core/IClasspathAttribute;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->lambda$0(Ljava/lang/String;Lorg/eclipse/jdt/core/IClasspathAttribute;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(I)[Lorg/eclipse/jdt/core/IClasspathAttribute;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->lambda$1(I)[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object p0

    return-object p0
.end method

.method private combine([Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IAccessRule;Z)[Lorg/eclipse/jdt/core/IAccessRule;
    .locals 3

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    if-eqz p2, :cond_2

    array-length p3, p2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    array-length p3, p1

    array-length v0, p2

    add-int v1, p3, v0

    new-array v1, v1, [Lorg/eclipse/jdt/core/IAccessRule;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v2, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static decodeAccessRules(Lorg/w3c/dom/NodeList;)[Lorg/eclipse/jdt/core/IAccessRule;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-array v0, v1, [Lorg/eclipse/jdt/core/IAccessRule;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v1, :cond_3

    if-eq v4, v1, :cond_2

    new-array p0, v4, [Lorg/eclipse/jdt/core/IAccessRule;

    invoke-static {v0, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v6, "pattern"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v8, "kind"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "accessible"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v7, v2

    goto :goto_1

    :cond_5
    const-string v9, "nonaccessible"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    const-string v7, "discouraged"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    :goto_1
    const-string v8, "ignoreifbetter"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    add-int/lit8 v8, v4, 0x1

    new-instance v9, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v9, v6}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_7

    or-int/lit16 v7, v7, 0x100

    :cond_7
    invoke-static {v9, v7}, Lorg/eclipse/jdt/core/JavaCore;->newAccessRule(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v5

    aput-object v5, v0, v4

    move v4, v8

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static decodeExtraAttributes(Lorg/w3c/dom/NodeList;)[Lorg/eclipse/jdt/core/IClasspathAttribute;
    .locals 9

    if-nez p0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    return-object p0

    :cond_1
    new-array v1, v0, [Lorg/eclipse/jdt/core/IClasspathAttribute;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_3

    if-eq v4, v0, :cond_2

    new-array p0, v4, [Lorg/eclipse/jdt/core/IClasspathAttribute;

    invoke-static {v1, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p0

    :cond_2
    return-object v1

    :cond_3
    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v6, "name"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v7, "value"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v4, 0x1

    new-instance v8, Lorg/eclipse/jdt/internal/core/ClasspathAttribute;

    invoke-direct {v8, v6, v5}, Lorg/eclipse/jdt/internal/core/ClasspathAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v1, v4

    move v4, v7

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static decodePatterns(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)[Lorg/eclipse/core/runtime/IPath;
    .locals 8

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->removeAttribute(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x7c

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p0

    array-length p1, p0

    if-lez p1, :cond_3

    new-array v0, p1, [Lorg/eclipse/core/runtime/IPath;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, p1, :cond_1

    if-ge v3, p1, :cond_0

    new-array p0, v3, [Lorg/eclipse/core/runtime/IPath;

    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    :cond_0
    return-object v0

    :cond_1
    aget-object v4, p0, v2

    array-length v5, v4

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v3, 0x1

    new-instance v6, Lorg/eclipse/core/runtime/Path;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v6, v7}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v3

    move v3, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static decodeUnknownNode(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 5

    .line 1
    const-string v0, "UTF8"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lorg/eclipse/jdt/internal/core/XMLWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p2, v4}, Lorg/eclipse/jdt/internal/core/XMLWriter;-><init>(Ljava/io/Writer;Lorg/eclipse/jdt/core/IJavaProject;Z)V

    const/4 p2, 0x1

    .line 4
    invoke-static {p0, v3, p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->decodeUnknownNode(Lorg/w3c/dom/Node;Lorg/eclipse/jdt/internal/core/XMLWriter;Z)V

    .line 5
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 6
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 7
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static decodeUnknownNode(Lorg/w3c/dom/Node;Lorg/eclipse/jdt/internal/core/XMLWriter;Z)V
    .locals 11

    .line 8
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_5

    .line 9
    :cond_0
    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {p1, p0, v2, v2}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printString(Ljava/lang/String;ZZ)V

    goto :goto_5

    .line 11
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-lez v3, :cond_3

    .line 13
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v2

    :goto_0
    if-lt v5, v3, :cond_2

    :goto_1
    move-object v7, v4

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 15
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 16
    :goto_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 18
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    if-nez v3, :cond_4

    move v10, v1

    goto :goto_3

    :cond_4
    move v10, v2

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p0

    .line 19
    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    if-lez v3, :cond_6

    move v1, v2

    :goto_4
    if-lt v1, v3, :cond_5

    .line 20
    invoke-virtual {p1, p0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->endTag(Ljava/lang/String;ZZ)V

    goto :goto_5

    .line 21
    :cond_5
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4, p1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->decodeUnknownNode(Lorg/w3c/dom/Node;Lorg/eclipse/jdt/internal/core/XMLWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public static elementDecode(Lorg/w3c/dom/Element;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    new-array v6, v5, [Z

    const-string v7, "kind"

    invoke-static {v7, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->removeAttribute(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "path"

    invoke-static {v8, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->removeAttribute(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v9, v8}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->kindFromString(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x4

    if-eq v8, v12, :cond_1

    if-eq v8, v10, :cond_1

    invoke-interface {v9}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v9}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v13

    if-lez v13, :cond_0

    invoke-interface {v9, v11}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    invoke-interface {v2, v9}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    :cond_1
    const-string v13, "sourcepath"

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v14, Lorg/eclipse/core/runtime/Path;

    invoke-static {v13, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->removeAttribute(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    if-eq v8, v12, :cond_3

    if-eqz v14, :cond_3

    invoke-interface {v14}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-interface {v2, v14}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    move-object v14, v13

    :cond_3
    const-string v13, "rootpath"

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    new-instance v11, Lorg/eclipse/core/runtime/Path;

    invoke-static {v13, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->removeAttribute(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    const-string v13, "exported"

    invoke-static {v13, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->removeAttribute(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "true"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v13, "including"

    invoke-static {v3, v13}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->decodePatterns(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    if-nez v13, :cond_5

    sget-object v13, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    :cond_5
    const-string v10, "excluding"

    invoke-static {v3, v10}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->decodePatterns(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    if-nez v10, :cond_6

    sget-object v10, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    :cond_6
    const-string v12, "accessrules"

    invoke-static {v12, v4, v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getChildAttributes(Ljava/lang/String;Lorg/w3c/dom/NodeList;[Z)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-static {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->decodeAccessRules(Lorg/w3c/dom/NodeList;)[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v12

    if-nez v12, :cond_7

    invoke-static {v13, v10}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRules([Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v12

    :cond_7
    move-object/from16 v20, v10

    const-string v10, "combineaccessrules"

    invoke-static {v10, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->removeAttribute(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v21, v13

    const-string v13, "false"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v13, 0x1

    xor-int/2addr v10, v13

    const-string v13, "attributes"

    invoke-static {v13, v4, v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getChildAttributes(Ljava/lang/String;Lorg/w3c/dom/NodeList;[Z)Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-static {v13}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->decodeExtraAttributes(Lorg/w3c/dom/NodeList;)[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v13

    move/from16 v24, v10

    const-string v10, "output"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v10, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->removeAttribute(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-eqz v1, :cond_f

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-eqz v2, :cond_a

    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_3
    if-lt v1, v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    mul-int/lit8 v25, v1, 0x2

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v10, v25

    const/16 v22, 0x1

    add-int/lit8 v25, v25, 0x1

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v10, v25

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-lt v1, v5, :cond_b

    move-object/from16 v5, p1

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    aget-boolean v3, v6, v1

    if-nez v3, :cond_e

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v23, v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    move/from16 v25, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    :goto_6
    move-object/from16 v5, p1

    goto :goto_7

    :cond_c
    if-nez v2, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v5, p1

    invoke-static {v3, v4, v5}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->decodeUnknownNode(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaProject;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    move-object/from16 v23, v4

    move/from16 v25, v5

    goto :goto_6

    :goto_7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v23

    move/from16 v5, v25

    goto :goto_5

    :cond_f
    move-object/from16 v5, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_8
    if-eq v8, v1, :cond_18

    const/4 v1, 0x2

    if-eq v8, v1, :cond_17

    const/4 v1, 0x3

    if-eq v8, v1, :cond_14

    const/4 v1, 0x4

    if-eq v8, v1, :cond_13

    const/4 v0, 0x5

    if-eq v8, v0, :cond_12

    const/16 v0, 0xa

    if-ne v8, v0, :cond_11

    invoke-interface {v9}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    sget-object v17, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    sget-object v18, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    const/16 v24, 0x0

    sget-object v25, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    const/16 v14, 0xa

    const/4 v15, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v13, v0

    move-object/from16 v16, v9

    invoke-direct/range {v13 .. v25}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    goto/16 :goto_9

    :cond_11
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unknownKind:Ljava/lang/String;

    invoke-static {v1, v7}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {v9, v12, v13, v15}, Lorg/eclipse/jdt/core/JavaCore;->newContainerEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    goto/16 :goto_9

    :cond_13
    move-object v1, v13

    move-object v13, v9

    move v3, v15

    move-object v15, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v1

    move/from16 v18, v3

    invoke-static/range {v13 .. v18}, Lorg/eclipse/jdt/core/JavaCore;->newVariableEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    goto/16 :goto_9

    :cond_14
    move-object v1, v13

    move v3, v15

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v4, v20

    move-object/from16 v13, v21

    invoke-static {v9, v13, v4, v0, v1}, Lorg/eclipse/jdt/core/JavaCore;->newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathAttribute;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    goto :goto_9

    :cond_15
    move-object/from16 v4, v20

    move-object/from16 v13, v21

    invoke-interface {v9}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    move/from16 v5, v24

    invoke-static {v9, v12, v5, v1, v3}, Lorg/eclipse/jdt/core/JavaCore;->newProjectEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    goto :goto_9

    :cond_16
    invoke-static {v9, v13, v4, v0, v1}, Lorg/eclipse/jdt/core/JavaCore;->newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathAttribute;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    goto :goto_9

    :cond_17
    move-object v1, v13

    move v3, v15

    move/from16 v5, v24

    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    sget-object v17, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    sget-object v18, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v19, 0x0

    move-object v13, v0

    move-object/from16 v16, v9

    move/from16 v22, v3

    move-object/from16 v23, v12

    move-object/from16 v25, v1

    invoke-direct/range {v13 .. v25}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    goto :goto_9

    :cond_18
    move-object v1, v13

    move v3, v15

    move-object v13, v9

    move-object v15, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v1

    move/from16 v18, v3

    invoke-static/range {v13 .. v18}, Lorg/eclipse/jdt/core/JavaCore;->newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    :goto_9
    if-nez v10, :cond_19

    if-eqz v2, :cond_1a

    :cond_19
    new-instance v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry$UnknownXmlElements;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$UnknownXmlElements;-><init>()V

    iput-object v10, v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry$UnknownXmlElements;->attributes:[Ljava/lang/String;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry$UnknownXmlElements;->children:Ljava/util/ArrayList;

    move-object/from16 v2, p2

    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-object v0
.end method

.method private encodeAccessRule(Lorg/eclipse/jdt/internal/compiler/env/AccessRule;Lorg/eclipse/jdt/internal/core/XMLWriter;ZZ)V
    .locals 6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->pattern:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "pattern"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->getProblemId()I

    move-result v0

    const v1, 0x1000118

    const-string v3, "kind"

    if-eq v0, v1, :cond_1

    const v1, 0x1000133

    if-eq v0, v1, :cond_0

    const-string v0, "accessible"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "nonaccessible"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "discouraged"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->ignoreIfBetter()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ignoreifbetter"

    const-string v0, "true"

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "accessrule"

    const/4 v5, 0x1

    move-object v0, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    return-void
.end method

.method private static encodePatterns([Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    if-eqz p0, :cond_2

    array-length v0, p0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private encodeUnknownChildren(Lorg/eclipse/jdt/internal/core/XMLWriter;ZZLjava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, p2, v0}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printString(Ljava/lang/String;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static equalAttributes([Lorg/eclipse/jdt/core/IClasspathAttribute;[Lorg/eclipse/jdt/core/IClasspathAttribute;)Z
    .locals 5

    if-eq p0, p1, :cond_5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    if-eqz p1, :cond_4

    array-length v2, p1

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private static equalPatterns([Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Z
    .locals 5

    if-eq p0, p1, :cond_5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    if-eqz p1, :cond_4

    array-length v2, p1

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getAccessRules([Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)[Lorg/eclipse/jdt/core/IAccessRule;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 7
    :cond_0
    array-length v1, p0

    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    .line 8
    :cond_1
    array-length v2, p1

    :goto_1
    add-int v3, v1, v2

    if-nez v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_2
    new-array v3, v3, [Lorg/eclipse/jdt/core/IAccessRule;

    move v4, v0

    :goto_2
    if-lt v4, v1, :cond_4

    :goto_3
    if-lt v0, v2, :cond_3

    return-object v3

    :cond_3
    add-int p0, v1, v0

    .line 10
    aget-object v4, p1, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/JavaCore;->newAccessRule(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v4

    aput-object v4, v3, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 11
    :cond_4
    aget-object v5, p0, v4

    invoke-static {v5, v0}, Lorg/eclipse/jdt/core/JavaCore;->newAccessRule(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private static getCalledFileNames(Lorg/eclipse/core/runtime/IPath;)Ljava/util/List;
    .locals 6

    const-string v0, "Could not read Class-Path header in manifest of jar file: "

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/eclipse/core/resources/IFile;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    instance-of v2, v2, Ljava/io/File;

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getManifestContents(Lorg/eclipse/core/runtime/IPath;)[C

    move-result-object v2

    if-nez v2, :cond_1

    return-object v4

    :cond_1
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;-><init>()V

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->analyzeManifestContents([C)Z

    move-result v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->getCalledFileNames()Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->getClasspathSectionsCount()I

    move-result v2

    if-ne v2, v1, :cond_2

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->getClasspathSectionsCount()I

    move-result v2

    if-le v2, v1, :cond_7

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple Class-Path headers in manifest of jar file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v5

    goto :goto_4

    :cond_3
    :goto_0
    return-object v4

    :cond_4
    :goto_1
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Class-Path header in manifest of jar file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    return-object v4

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :goto_2
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    move-object v5, v4

    goto :goto_5

    :goto_4
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    goto :goto_3

    :cond_7
    :goto_5
    return-object v5
.end method

.method public static getChildAttributes(Ljava/lang/String;Lorg/w3c/dom/NodeList;[Z)Lorg/w3c/dom/NodeList;
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    aput-boolean p0, p2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/runtime/IPath;
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getRawExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, p0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->invalidExternalAnnotationPath(Lorg/eclipse/core/resources/IProject;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IProject;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->invalidExternalAnnotationPath(Lorg/eclipse/core/resources/IProject;)V

    goto :goto_0

    :cond_6
    new-instance p0, Lorg/eclipse/core/runtime/Path;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/core/runtime/Path;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->makeAbsolute()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExtraAttribute(Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getManifestContents(Lorg/eclipse/core/runtime/IPath;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex()Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLocalFile(Lorg/eclipse/core/runtime/IPath;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getResourceFile([C)Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isUpToDate(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getManifestContent()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object p0

    array-length v0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_2
    return-object p0

    :catchall_1
    move-exception p0

    move-object v1, p0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_3

    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_4
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v1, :cond_6

    if-eq v1, p0, :cond_5

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    move-object p0, v1

    :cond_6
    throw p0

    :cond_7
    :goto_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    :try_start_3
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v2, :cond_8

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object v1

    :cond_8
    :try_start_5
    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    const/4 v3, -0x1

    invoke-static {v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsCharArray(Ljava/io/InputStream;ILjava/lang/String;)[C

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_9

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_9
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object v2

    :catchall_2
    move-exception v2

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object p0, v1

    :goto_4
    if-eqz v1, :cond_a

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :cond_a
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw v2
.end method

.method public static getRawExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/lang/String;
    .locals 1

    const-string v0, "annotationpath"

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExtraAttribute(Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasDotDot(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 5

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    const-string v3, ".."

    invoke-interface {p0, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static invalidExternalAnnotationPath(Lorg/eclipse/core/resources/IProject;)V
    .locals 6

    :try_start_0
    const-string v0, "org.eclipse.jdt.core.buildpath_problem"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Lorg/eclipse/core/resources/IProject;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    array-length v2, v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-lt v1, v2, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->validate()V

    return-void

    :cond_0
    :try_start_1
    aget-object v3, v0, v1

    const-string v4, "severity"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return-void
.end method

.method public static kindFromString(Ljava/lang/String;)I
    .locals 1

    const-string v0, "prj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-string v0, "con"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    const-string v0, "src"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-string v0, "lib"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string v0, "output"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xa

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static kindToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    const-string v1, "src"

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "output"

    return-object p0

    :cond_1
    const-string p0, "con"

    return-object p0

    :cond_2
    const-string p0, "var"

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    const-string p0, "lib"

    return-object p0
.end method

.method private static synthetic lambda$0(Ljava/lang/String;Lorg/eclipse/jdt/core/IClasspathAttribute;)Z
    .locals 0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$1(I)[Lorg/eclipse/jdt/core/IClasspathAttribute;
    .locals 0

    new-array p0, p0, [Lorg/eclipse/jdt/core/IClasspathAttribute;

    return-object p0
.end method

.method private static removeAttribute(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->removeNode(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeNode(Ljava/lang/String;Lorg/w3c/dom/NamedNodeMap;)Lorg/w3c/dom/Node;
    .locals 1

    :try_start_0
    invoke-interface {p1, p0}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    iget-short p1, p0, Lorg/w3c/dom/DOMException;->code:S

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p0
.end method

.method public static resolveDotDot(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;
    .locals 7

    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const-string v1, ".."

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_5

    invoke-interface {v0, p0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v5

    :goto_0
    if-lt v2, v5, :cond_1

    goto :goto_5

    :cond_1
    invoke-interface {p1, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v4, :cond_2

    move-object v4, p0

    :cond_2
    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v4, v3}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4, v0}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p0

    :goto_4
    if-lt v2, p0, :cond_7

    :goto_5
    if-nez v4, :cond_6

    return-object p1

    :cond_6
    return-object v4

    :cond_7
    invoke-interface {p1, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v4, :cond_9

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {p1, v2}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    goto :goto_7

    :cond_9
    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v5

    if-lez v5, :cond_a

    invoke-interface {v4, v3}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    goto :goto_7

    :cond_a
    :goto_6
    move-object v4, v0

    goto :goto_7

    :cond_b
    if-eqz v4, :cond_d

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {v6, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v4, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v4, v5}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/eclipse/core/runtime/Path;->makeAbsolute()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    goto :goto_7

    :cond_c
    invoke-interface {v4, v5}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    :cond_d
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private static resolvedChainedLibraries(Lorg/eclipse/core/runtime/IPath;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 7

    .line 6
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isNonChainingJar(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getCalledFileNames(Lorg/eclipse/core/runtime/IPath;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->addNonChainingJar(Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    .line 13
    invoke-interface {p0, v1}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    .line 14
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    return-void

    .line 15
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/IPath;->isValidPath(Ljava/lang/String;)Z

    move-result v3

    const-string v4, " in manifest of jar file: "

    const-string v5, "Invalid Class-Path entry "

    if-nez v3, :cond_5

    .line 17
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v3, :cond_3

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_5
    new-instance v3, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v3, v2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    .line 20
    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 21
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v3, :cond_3

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-static {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedChainedLibraries(Lorg/eclipse/core/runtime/IPath;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    .line 24
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static resolvedChainedLibraries(Lorg/eclipse/core/runtime/IPath;)[Lorg/eclipse/core/runtime/IPath;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedChainedLibraries(Lorg/eclipse/core/runtime/IPath;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_PATHS:[Lorg/eclipse/core/runtime/IPath;

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/core/runtime/IPath;

    return-object p0
.end method

.method public static validateClasspath(Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3ca

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v3, v2}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v5

    const/16 v7, 0x3cb

    if-nez v5, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    return-object v1

    :cond_1
    if-nez v1, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_2
    array-length v5, v1

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v5}, Ljava/util/HashSet;-><init>(I)V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/4 v11, 0x1

    if-lt v10, v5, :cond_4c

    :try_start_0
    move-object v5, v0

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v5, v1, v9, v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;ZZ)Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_2

    array-length v5, v1

    add-int/2addr v5, v11

    new-array v5, v5, [Lorg/eclipse/core/runtime/IPath;

    array-length v8, v1

    add-int/2addr v8, v11

    new-array v8, v8, [Z

    aput-object v2, v5, v9

    const-string v10, "org.eclipse.jdt.core.classpath.exclusionPatterns"

    invoke-interface {v0, v10, v11}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const-string v12, "disabled"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v13, "org.eclipse.jdt.core.classpath.multipleOutputLocations"

    invoke-interface {v0, v13, v11}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    array-length v15, v1

    move v6, v9

    move v7, v11

    :goto_1
    const/4 v11, 0x3

    if-lt v6, v15, :cond_40

    const/16 v17, 0x0

    move-object/from16 v12, v17

    const/4 v6, 0x1

    :goto_2
    const/16 v15, 0x3c4

    if-lt v6, v7, :cond_3d

    add-int/lit8 v6, v7, -0x1

    if-gt v9, v6, :cond_3

    const/4 v6, 0x0

    const/16 v16, 0x1

    aput-boolean v16, v8, v6

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    if-eqz v12, :cond_4

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotNestOutputInOutput:Ljava/lang/String;

    invoke-interface {v12}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v5, v6

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v9, v12, :cond_5

    aget-object v12, v5, v6

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3a

    array-length v6, v1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_5
    if-lt v9, v6, :cond_35

    if-nez v12, :cond_7

    if-nez v14, :cond_7

    const/4 v6, 0x0

    :goto_6
    if-lt v6, v7, :cond_6

    goto :goto_7

    :cond_6
    const/4 v9, 0x1

    aput-boolean v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    array-length v6, v1

    const/4 v9, 0x0

    :goto_8
    const/4 v14, 0x2

    if-lt v9, v6, :cond_1e

    array-length v3, v1

    const/4 v5, 0x0

    :goto_9
    const-string v6, "ignore"

    if-lt v5, v3, :cond_10

    if-eqz v12, :cond_e

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "org.eclipse.jdt.core.classpath.mainOnlyProjectHasTestOnlyDependency"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    array-length v0, v1

    const/4 v2, 0x0

    :goto_a
    if-lt v2, v0, :cond_8

    goto/16 :goto_f

    :cond_8
    aget-object v3, v1, v2

    if-nez v3, :cond_9

    goto :goto_e

    :cond_9
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v3

    if-ne v3, v14, :cond_d

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    sget-object v3, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    :try_start_1
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v4

    array-length v5, v4
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_b
    if-lt v6, v5, :cond_a

    goto :goto_d

    :cond_a
    :try_start_2
    aget-object v9, v4, v6

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v10

    if-ne v10, v11, :cond_c

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v9
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v9, :cond_b

    const/4 v7, 0x1

    goto :goto_c

    :cond_b
    const/4 v8, 0x1

    :goto_c
    if-eqz v7, :cond_c

    if-eqz v8, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :catch_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :catch_1
    :goto_d
    if-eqz v7, :cond_d

    if-nez v8, :cond_d

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_main_only_project_depends_on_test_only_project:Ljava/lang/String;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f9

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_d
    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    :goto_f
    if-eqz v17, :cond_f

    return-object v17

    :cond_f
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_10
    aget-object v7, v1, v5

    if-nez v7, :cond_11

    goto :goto_13

    :cond_11
    invoke-interface {v7}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    :goto_10
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_12
    invoke-interface {v8}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    goto :goto_10

    :goto_11
    if-ne v9, v11, :cond_14

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    if-nez v9, :cond_13

    move-object v9, v2

    :cond_13
    array-length v10, v1

    const/4 v14, 0x0

    :goto_12
    if-lt v14, v10, :cond_15

    :cond_14
    :goto_13
    move/from16 v16, v3

    goto/16 :goto_1a

    :cond_15
    aget-object v15, v1, v14

    if-ne v15, v7, :cond_17

    move/from16 v16, v3

    :cond_16
    :goto_14
    move-object/from16 v18, v6

    goto/16 :goto_19

    :cond_17
    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v11

    move/from16 v16, v3

    const/4 v3, 0x1

    if-eq v11, v3, :cond_1b

    const/4 v3, 0x3

    if-eq v11, v3, :cond_18

    goto :goto_14

    :cond_18
    const-string v3, "org.eclipse.jdt.core.classpath.outputOverlappingAnotherSource"

    const/4 v11, 0x1

    invoke-interface {v0, v3, v11}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v11

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    const/4 v11, 0x1

    invoke-interface {v6, v11}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    :goto_15
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    :cond_19
    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    goto :goto_15

    :goto_16
    const-string v11, "error"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v11, 0x3f5

    if-eqz v3, :cond_1a

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotUseDistinctSourceFolderAsOutput:Ljava/lang/String;

    filled-new-array {v8, v6, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v11, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(IILjava/lang/String;)V

    return-object v0

    :cond_1a
    if-nez v17, :cond_1d

    new-instance v3, Lorg/eclipse/jdt/internal/core/ClasspathEntry$1;

    sget-object v15, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotUseDistinctSourceFolderAsOutput:Ljava/lang/String;

    filled-new-array {v8, v6, v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    invoke-direct {v3, v15, v11, v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$1;-><init>(IILjava/lang/String;)V

    move-object/from16 v17, v3

    goto :goto_19

    :cond_1b
    move-object/from16 v18, v6

    const/4 v3, 0x0

    if-eq v9, v2, :cond_1d

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_1c
    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_17

    :goto_18
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotUseLibraryAsOutput:Ljava/lang/String;

    filled-new-array {v8, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c4

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_1d
    :goto_19
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    move-object/from16 v6, v18

    const/4 v11, 0x3

    const/16 v15, 0x3c4

    goto/16 :goto_12

    :goto_1a
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v16

    const/4 v11, 0x3

    const/4 v14, 0x2

    const/16 v15, 0x3c4

    goto/16 :goto_9

    :cond_1e
    aget-object v11, v1, v9

    if-nez v11, :cond_20

    move-object/from16 v18, v3

    :cond_1f
    move/from16 v16, v6

    goto :goto_1f

    :cond_20
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v15

    invoke-interface {v11}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v14

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21

    move-object/from16 v18, v3

    const/4 v3, 0x2

    if-ne v14, v3, :cond_1f

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotReferToItself:Ljava/lang/String;

    invoke-interface {v15}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d3

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_21
    move-object/from16 v18, v3

    const/4 v3, 0x3

    if-eq v14, v3, :cond_22

    const/4 v3, 0x1

    move/from16 v16, v6

    if-ne v14, v3, :cond_23

    const/4 v3, 0x0

    invoke-static {v15, v3}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v6

    instance-of v3, v6, Lorg/eclipse/core/resources/IContainer;

    if-eqz v3, :cond_23

    goto :goto_1b

    :cond_22
    move/from16 v16, v6

    :goto_1b
    array-length v3, v1

    const/4 v6, 0x0

    :goto_1c
    if-lt v6, v3, :cond_2c

    :cond_23
    check-cast v11, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v3

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v6

    const/4 v11, 0x0

    :goto_1d
    if-lt v11, v7, :cond_27

    const/4 v3, 0x0

    :goto_1e
    if-lt v3, v7, :cond_24

    :goto_1f
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v16

    move-object/from16 v3, v18

    const/4 v11, 0x3

    const/16 v15, 0x3c4

    goto/16 :goto_8

    :cond_24
    aget-boolean v6, v8, v3

    if-eqz v6, :cond_25

    goto :goto_20

    :cond_25
    aget-object v6, v5, v3

    invoke-interface {v6, v15}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v11

    if-eqz v11, :cond_26

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotNestEntryInOutput:Ljava/lang/String;

    invoke-interface {v15}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c4

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_26
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_27
    move/from16 p1, v9

    aget-object v9, v5, v11

    invoke-virtual {v15, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    :cond_28
    move/from16 v19, v12

    goto :goto_21

    :cond_29
    invoke-interface {v15, v9}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v19

    if-eqz v19, :cond_28

    move/from16 v19, v12

    const/4 v12, 0x3

    if-ne v14, v12, :cond_2a

    const/4 v12, 0x1

    invoke-static {v9, v3, v6, v12}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v20

    if-nez v20, :cond_2b

    :cond_2a
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotNestOutputInEntry:Ljava/lang/String;

    invoke-interface {v9}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c4

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2b
    :goto_21
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, p1

    move/from16 v12, v19

    goto/16 :goto_1d

    :cond_2c
    move/from16 p1, v9

    move/from16 v19, v12

    aget-object v9, v1, v6

    if-nez v9, :cond_2e

    move/from16 v20, v3

    :cond_2d
    move-object/from16 v23, v4

    move-object/from16 v21, v11

    move/from16 v22, v14

    goto/16 :goto_23

    :cond_2e
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v12

    move/from16 v20, v3

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-eq v11, v9, :cond_2d

    move-object/from16 v21, v11

    const/4 v11, 0x3

    if-eq v12, v11, :cond_30

    const/4 v11, 0x1

    move/from16 v22, v14

    if-ne v12, v11, :cond_2f

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v14

    instance-of v11, v14, Lorg/eclipse/core/resources/IContainer;

    if-eqz v11, :cond_2f

    goto :goto_22

    :cond_2f
    move-object/from16 v23, v4

    goto/16 :goto_23

    :cond_30
    move/from16 v22, v14

    :goto_22
    invoke-interface {v3, v15}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v11

    if-eqz v11, :cond_2f

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    const-string v11, "*"

    invoke-interface {v15, v11}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v11

    move-object v14, v9

    check-cast v14, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v2

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v14

    move-object/from16 v23, v4

    const/4 v4, 0x0

    invoke-static {v11, v2, v14, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v11

    if-nez v11, :cond_34

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    invoke-interface {v15, v0}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v2, v14, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_mustEndWithSlash:Ljava/lang/String;

    invoke-interface {v15}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c4

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_31
    const/4 v1, 0x3

    if-ne v12, v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v10, :cond_32

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotNestEntryInEntry:Ljava/lang/String;

    invoke-interface {v15}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c4

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_32
    const/16 v2, 0x3c4

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotNestEntryInEntryNoExclusion:Ljava/lang/String;

    invoke-interface {v15}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_33
    const/16 v2, 0x3c4

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotNestEntryInLibrary:Ljava/lang/String;

    invoke-interface {v15}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_34
    :goto_23
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, p1

    move-object/from16 v2, p2

    move/from16 v12, v19

    move/from16 v3, v20

    move-object/from16 v11, v21

    move/from16 v14, v22

    move-object/from16 v4, v23

    goto/16 :goto_1c

    :cond_35
    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move/from16 v19, v12

    aget-object v2, v1, v9

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_38

    const/4 v11, 0x3

    if-eq v2, v11, :cond_36

    :goto_24
    move/from16 v12, v19

    goto :goto_25

    :cond_36
    invoke-static {v3, v5, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->indexOfMatchingPath(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;I)I

    move-result v2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_37

    aput-boolean v4, v8, v2

    :cond_37
    move v12, v4

    goto :goto_25

    :cond_38
    const/4 v2, 0x0

    const/4 v11, -0x1

    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v12

    instance-of v2, v12, Lorg/eclipse/core/resources/IContainer;

    or-int/2addr v2, v14

    invoke-static {v3, v5, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->indexOfMatchingPath(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;I)I

    move-result v3

    if-eq v3, v11, :cond_39

    aput-boolean v4, v8, v3

    :cond_39
    move v14, v2

    goto :goto_24

    :goto_25
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    const/4 v11, 0x3

    const/16 v15, 0x3c4

    goto/16 :goto_5

    :cond_3a
    move-object/from16 v18, v3

    move-object/from16 v23, v4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v14, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v3, 0x3f8

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    return-object v1

    :cond_3b
    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    const/4 v11, 0x3

    const/16 v15, 0x3c4

    goto/16 :goto_4

    :cond_3c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v9, v3, :cond_3b

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v3, 0x3f7

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    return-object v1

    :cond_3d
    move-object/from16 v18, v3

    move-object/from16 v23, v4

    aget-object v2, v5, v6

    invoke-static {v2, v5, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->indexOfEnclosingPath(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3f

    if-eq v3, v6, :cond_3f

    if-nez v3, :cond_3e

    if-nez v12, :cond_3f

    move-object v12, v2

    goto :goto_26

    :cond_3e
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotNestOutputInOutput:Ljava/lang/String;

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v5, v3

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c4

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_3f
    :goto_26
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    const/4 v11, 0x3

    goto/16 :goto_2

    :cond_40
    move-object/from16 v18, v3

    move-object/from16 v23, v4

    aget-object v2, v1, v6

    if-eqz v10, :cond_43

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_42

    :cond_41
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_43

    :cond_42
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v3, 0x3ea

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    return-object v1

    :cond_43
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_45

    :cond_44
    const/16 v11, 0x3cb

    goto :goto_27

    :cond_45
    add-int/lit8 v9, v9, 0x1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    if-eqz v4, :cond_44

    if-eqz v12, :cond_47

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v3, 0x3eb

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    return-object v1

    :cond_47
    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-nez v2, :cond_48

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x3cb

    invoke-direct {v1, v11, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    return-object v1

    :cond_48
    const/16 v11, 0x3cb

    if-nez v3, :cond_49

    invoke-virtual {v14, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_49
    invoke-static {v4, v5, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->indexOfMatchingPath(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4a

    goto :goto_27

    :cond_4a
    add-int/lit8 v2, v7, 0x1

    aput-object v4, v5, v7

    move v7, v2

    goto :goto_27

    :cond_4b
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3cc

    invoke-direct {v0, v1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/core/runtime/IPath;)V

    return-object v0

    :goto_27
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    return-object v0

    :cond_4c
    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move v11, v7

    aget-object v2, v1, v10

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_4d
    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_28

    :goto_29
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_duplicateEntryPath:Ljava/lang/String;

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3d1

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_4e
    move-object/from16 v4, v23

    const/4 v3, 0x0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p2

    move v9, v3

    move v7, v11

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_4f
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-object/from16 v1, p2

    const/16 v2, 0x3cc

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/core/runtime/IPath;)V

    return-object v0
.end method

.method private static validateClasspathEntry(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathContainer;ZZ)Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 7
    const-string v3, "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    .line 8
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 9
    invoke-interface {v5, v8}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v5, v6}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v9, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 10
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v4

    const/16 v10, 0x3d1

    const/4 v11, 0x0

    if-eq v4, v6, :cond_20

    const/4 v1, 0x2

    const/16 v12, 0x3c4

    if-eq v4, v1, :cond_1b

    const/4 v1, 0x3

    if-eq v4, v1, :cond_14

    const/4 v3, 0x4

    if-eq v4, v3, :cond_f

    const/4 v13, 0x5

    if-eq v4, v13, :cond_1

    goto/16 :goto_b

    .line 11
    :cond_1
    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v4

    if-lt v4, v6, :cond_e

    .line 12
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 13
    array-length v12, v4

    .line 14
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v12}, Ljava/util/HashSet;-><init>(I)V

    move v15, v8

    :goto_2
    if-lt v15, v12, :cond_2

    goto :goto_3

    .line 15
    :cond_2
    aget-object v16, v4, v15

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v14, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 17
    new-instance v11, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_duplicateEntryExtraAttribute:Ljava/lang/String;

    filled-new-array {v8, v9, v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v10, v4}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    :goto_3
    if-nez v11, :cond_4

    .line 18
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getRawExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 19
    move-object/from16 v8, p1

    check-cast v8, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    new-instance v11, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v11, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v0, v11}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateExternalAnnotationPath(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v11

    if-eqz v11, :cond_4

    return-object v11

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_2

    .line 20
    :cond_4
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v4

    if-nez v4, :cond_6

    if-eqz v11, :cond_5

    return-object v11

    .line 21
    :cond_5
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c3

    invoke-direct {v1, v2, v0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    return-object v1

    .line 22
    :cond_6
    sget-object v8, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

    if-ne v4, v8, :cond_7

    .line 23
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    .line 24
    :cond_7
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathContainer;->getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 25
    array-length v11, v8

    const/4 v12, 0x0

    :goto_4
    if-lt v12, v11, :cond_9

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 26
    :cond_9
    aget-object v14, v8, v12

    if-nez v14, :cond_a

    const/4 v15, 0x0

    goto :goto_5

    .line 27
    :cond_a
    invoke-interface {v14}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v15

    :goto_5
    if-eqz v14, :cond_d

    if-eq v15, v1, :cond_d

    if-eq v15, v3, :cond_d

    if-ne v15, v13, :cond_b

    goto :goto_6

    .line 28
    :cond_b
    invoke-static {v0, v14, v4, v2, v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateClasspathEntry(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathContainer;ZZ)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v14

    .line 29
    invoke-interface {v14}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v15

    if-nez v15, :cond_c

    return-object v14

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 30
    :cond_d
    :goto_6
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c2

    invoke-direct {v1, v2, v0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 31
    :goto_7
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    return-object v1

    .line 32
    :cond_e
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_illegalContainerPath:Ljava/lang/String;

    filled-new-array {v9, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 33
    :cond_f
    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    if-lt v1, v6, :cond_13

    .line 34
    :try_start_1
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/core/JavaCore;->getResolvedClasspathEntry(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_10

    .line 35
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c5

    invoke-direct {v1, v2, v0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    return-object v1

    :cond_10
    const/4 v3, 0x0

    .line 36
    invoke-static {v0, v1, v11, v2, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateClasspathEntry(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathContainer;ZZ)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v1

    .line 37
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v2

    if-nez v2, :cond_11

    return-object v1

    .line 38
    :cond_11
    invoke-interface {v5, v3}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v2}, Lorg/eclipse/jdt/core/JavaCore;->getClasspathVariableDeprecationMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 40
    new-instance v7, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/4 v2, 0x2

    const/16 v3, 0x3f2

    move-object v1, v7

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(IILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    return-object v7

    :cond_12
    return-object v1

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 41
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3d3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 42
    :cond_13
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_illegalVariablePath:Ljava/lang/String;

    filled-new-array {v9, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 43
    :cond_14
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const-string v2, "disabled"

    if-eqz v1, :cond_15

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_16

    .line 44
    :cond_15
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_17

    .line 45
    :cond_16
    const-string v1, "org.eclipse.jdt.core.classpath.exclusionPatterns"

    invoke-interface {v0, v1, v6}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 46
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3ea

    invoke-direct {v1, v2, v0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    return-object v1

    .line 47
    :cond_17
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string v1, "org.eclipse.jdt.core.classpath.multipleOutputLocations"

    invoke-interface {v0, v1, v6}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 48
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3eb

    invoke-direct {v1, v2, v0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    return-object v1

    .line 49
    :cond_18
    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 50
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 51
    invoke-interface {v0, v5}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 52
    :cond_19
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundSourceFolder:Ljava/lang/String;

    filled-new-array {v9, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 53
    :cond_1a
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_illegalSourceFolderPath:Ljava/lang/String;

    filled-new-array {v9, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 54
    :cond_1b
    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    if-ne v1, v6, :cond_1f

    .line 55
    sget-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    .line 57
    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->exists()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "org.eclipse.jdt.core.javanature"

    invoke-interface {v1, v4}, Lorg/eclipse/core/resources/IProject;->hasNature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_8

    .line 58
    :cond_1c
    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 59
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_closedProject:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 60
    :cond_1d
    const-string v1, "ignore"

    const-string v4, "org.eclipse.jdt.core.incompatibleJDKLevel"

    invoke-interface {v0, v4, v6}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 61
    invoke-interface {v0, v3, v6}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v13

    .line 62
    invoke-interface {v2, v3, v6}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-lez v3, :cond_8

    .line 63
    new-instance v3, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    .line 64
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_incompatibleLibraryJDKLevel:Ljava/lang/String;

    .line 65
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-static {v13, v14}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v8

    .line 67
    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 68
    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v8, v9, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v4, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ec

    .line 70
    invoke-direct {v3, v2, v0, v5, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    return-object v3

    .line 71
    :cond_1e
    :goto_8
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundProject:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 72
    :catch_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundProject:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 73
    :cond_1f
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_illegalProjectPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 74
    :cond_20
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolveDotDot(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-eqz v1, :cond_22

    .line 75
    instance-of v4, v1, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;

    if-eqz v4, :cond_21

    .line 76
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_userLibraryInfo:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IClasspathContainer;->getDescription()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    move-object v4, v1

    goto :goto_a

    .line 77
    :cond_21
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_containerInfo:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IClasspathContainer;->getDescription()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_22
    move-object v4, v11

    :goto_a
    if-eqz v2, :cond_23

    .line 78
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    move-object v11, v1

    :cond_23
    move-object/from16 v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isOptional()Z

    move-result v6

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v4, v11

    move-object v5, v9

    invoke-static/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Z)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_24

    return-object v0

    .line 80
    :cond_24
    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 81
    array-length v1, v0

    .line 82
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    :goto_c
    if-lt v8, v1, :cond_25

    goto :goto_d

    .line 83
    :cond_25
    aget-object v3, v0, v8

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 85
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_duplicateEntryExtraAttribute:Ljava/lang/String;

    filled-new-array {v3, v9, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_26
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 86
    :cond_27
    :goto_d
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method

.method public static validateClasspathEntry(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathEntry;ZZ)Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removeFromInvalidArchiveCache(Lorg/eclipse/core/runtime/IPath;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateClasspathEntry(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathContainer;ZZ)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->getCode()I

    move-result p2

    const/16 p3, 0x3c4

    if-eq p2, p3, :cond_1

    const/16 p3, 0x3c3

    if-eq p2, p3, :cond_1

    const/16 p3, 0x3c5

    if-eq p2, p3, :cond_1

    const/16 p3, 0x3d3

    if-ne p2, p3, :cond_2

    .line 5
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isOptional()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    :cond_2
    return-object p0
.end method

.method private validateExternalAnnotationPath(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->exists(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    return-object v2

    :cond_1
    invoke-static {p2}, Lorg/eclipse/jdt/core/JavaCore;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-interface {v0, p2}, Lorg/eclipse/core/resources/IProject;->exists(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_invalidExternalAnnotationPath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2, v0, v3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3f6

    invoke-direct {v1, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_0
    return-object v2
.end method

.method private static validateLibraryContents(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verifyArchiveContent(Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IStatus;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_IOException:Ljava/lang/String;

    if-ne p0, v0, :cond_0

    new-instance p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_archiveReadError:Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3c4

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p0
.end method

.method private static validateLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Z)Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x3c4

    if-eqz v5, :cond_16

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "org.eclipse.jdt.core.incompatibleJDKLevel"

    invoke-interface {v1, v5, v7}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v9, "ignore"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p5, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_0
    invoke-static {v0, v7}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    sget-object v10, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {v10}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    invoke-interface {v10, v0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v0, v10}, Lorg/eclipse/core/runtime/IPath;->makeRelativeTo(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-interface {v9}, Lorg/eclipse/core/runtime/IPath;->makeAbsolute()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-static {v9, v7}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v9

    :cond_1
    if-eqz v9, :cond_3

    if-nez v5, :cond_3

    const-string v5, "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

    invoke-interface {v1, v5, v7}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v9}, Lorg/eclipse/jdt/internal/core/util/Util;->getJdkLevel(Ljava/lang/Object;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-eqz v5, :cond_3

    cmp-long v5, v12, v10

    if-lez v5, :cond_3

    const/16 v3, 0x3ec

    if-eqz v2, :cond_2

    new-instance v4, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_incompatibleLibraryJDKLevelInContainer:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v13}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v6, v7, v8, v2, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    return-object v4

    :cond_2
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_incompatibleLibraryJDKLevel:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v13}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    return-object v2

    :cond_3
    if-eqz p5, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_4
    instance-of v5, v9, Lorg/eclipse/core/resources/IResource;

    if-eqz v5, :cond_a

    check-cast v9, Lorg/eclipse/core/resources/IResource;

    invoke-interface {v9}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v5

    if-eq v5, v7, :cond_7

    const/4 v4, 0x2

    if-eq v5, v4, :cond_5

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_f

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v3, v7}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_f

    if-eqz v2, :cond_6

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundSourceAttachmentInContainedLibrary:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_6
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundSourceAttachment:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_7
    if-eqz v3, :cond_9

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v3, v7}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    if-eqz v2, :cond_8

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundSourceAttachmentInContainedLibrary:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_8
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundSourceAttachment:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_9
    invoke-static {v0, v1, v4}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateLibraryContents(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_a
    instance-of v5, v9, Ljava/io/File;

    if-eqz v5, :cond_10

    invoke-static {v9}, Lorg/eclipse/jdt/internal/core/JavaModel;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_c

    if-eqz v2, :cond_b

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_illegalExternalFolderInContainer:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_b
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_illegalExternalFolder:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_c
    if-eqz v3, :cond_e

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v3, v7}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_e

    if-eqz v2, :cond_d

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundSourceAttachmentInContainedLibrary:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_d
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundSourceAttachment:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_e
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v0, v1, v4}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateLibraryContents(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_10
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v3

    invoke-interface {v0, v6}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->exists()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v4, :cond_12

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0, v7}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_12
    move-object v0, v4

    :goto_1
    if-eqz v2, :cond_13

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundLibraryInContainer:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_13
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundLibrary:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_14
    if-eqz v2, :cond_15

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundLibraryInContainer:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_15
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_unboundLibrary:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_16
    if-nez v4, :cond_18

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0, v7}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_17
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_18
    move-object v0, v4

    :goto_2
    if-eqz v2, :cond_19

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_illegalLibraryPathInContainer:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_19
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_illegalLibraryPath:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public combineAccessRules()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules:Z

    return v0
.end method

.method public combineWith(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v3

    if-nez v3, :cond_2

    array-length v3, v2

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    iget v3, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    array-length v7, v2

    if-lez v7, :cond_5

    array-length v8, v4

    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    iget-object v10, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v9, v10}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int v9, v8, v7

    new-array v9, v9, [Lorg/eclipse/jdt/core/IClasspathAttribute;

    invoke-static {v4, v6, v9, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v6, v9, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    move-object/from16 v22, v9

    goto :goto_3

    :cond_4
    add-int v9, v8, v7

    new-array v9, v9, [Lorg/eclipse/jdt/core/IClasspathAttribute;

    invoke-static {v4, v6, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v6, v9, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_5
    move-object/from16 v22, v4

    :goto_3
    new-instance v2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getContentKind()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    iget-object v14, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    iget-object v15, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported()Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported:Z

    if-nez v4, :cond_6

    move/from16 v19, v6

    goto :goto_4

    :cond_6
    move/from16 v19, v5

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v4

    invoke-direct {v0, v1, v4, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combine([Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IAccessRule;Z)[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v20

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules:Z

    move-object v10, v2

    move/from16 v21, v1

    invoke-direct/range {v10 .. v22}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    return-object v2
.end method

.method public elementEncode(Lorg/eclipse/jdt/internal/core/XMLWriter;Lorg/eclipse/core/runtime/IPath;ZZLjava/util/Map;Z)V
    .locals 9

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->kindToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v3}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v6}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->makeAbsolute()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentPath:Lorg/eclipse/core/runtime/IPath;

    if-eqz v0, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    if-eq v1, v4, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v3}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {v0, v6}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "sourcepath"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentRootPath:Lorg/eclipse/core/runtime/IPath;

    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "rootpath"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported:Z

    if-eqz p2, :cond_5

    const-string p2, "exported"

    const-string v0, "true"

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    const-string v0, "including"

    invoke-static {p2, v0, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->encodePatterns([Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    const-string v0, "excluding"

    invoke-static {p2, v0, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->encodePatterns([Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/util/Map;)V

    iget p2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules:Z

    if-nez p2, :cond_6

    const-string p2, "combineaccessrules"

    const-string v0, "false"

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/4 p2, 0x0

    if-nez p5, :cond_7

    move-object p5, p2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/eclipse/jdt/internal/core/ClasspathEntry$UnknownXmlElements;

    :goto_1
    if-eqz p5, :cond_9

    iget-object v0, p5, Lorg/eclipse/jdt/internal/core/ClasspathEntry$UnknownXmlElements;->attributes:[Ljava/lang/String;

    if-eqz v0, :cond_9

    array-length v1, v0

    move v4, v3

    :goto_2
    if-lt v4, v1, :cond_8

    goto :goto_3

    :cond_8
    aget-object v5, v0, v4

    add-int/lit8 v7, v4, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->specificOutputLocation:Lorg/eclipse/core/runtime/IPath;

    if-eqz v0, :cond_a

    invoke-interface {v0, v6}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "output"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    array-length v0, v0

    if-eqz v0, :cond_b

    move v7, v6

    goto :goto_4

    :cond_b
    move v7, v3

    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v0

    if-eqz v0, :cond_c

    move v8, v6

    goto :goto_5

    :cond_c
    move v8, v3

    :goto_5
    if-eqz p5, :cond_d

    iget-object p2, p5, Lorg/eclipse/jdt/internal/core/ClasspathEntry$UnknownXmlElements;->children:Ljava/util/ArrayList;

    :cond_d
    if-eqz p2, :cond_e

    move p5, v6

    goto :goto_6

    :cond_e
    move p5, v3

    :goto_6
    if-eqz p6, :cond_f

    const-string p6, "referencedentry"

    goto :goto_7

    :cond_f
    const-string p6, "classpathentry"

    :goto_7
    if-nez v7, :cond_10

    if-nez v8, :cond_10

    if-nez p5, :cond_10

    move v5, v6

    goto :goto_8

    :cond_10
    move v5, v3

    :goto_8
    move-object v0, p1

    move-object v1, p6

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    if-eqz v7, :cond_11

    invoke-virtual {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->encodeExtraAttributes(Lorg/eclipse/jdt/internal/core/XMLWriter;ZZ)V

    :cond_11
    if-eqz v8, :cond_12

    invoke-virtual {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->encodeAccessRules(Lorg/eclipse/jdt/internal/core/XMLWriter;ZZ)V

    :cond_12
    if-eqz p5, :cond_13

    invoke-direct {p0, p1, p3, p4, p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->encodeUnknownChildren(Lorg/eclipse/jdt/internal/core/XMLWriter;ZZLjava/util/ArrayList;)V

    :cond_13
    if-nez v7, :cond_14

    if-nez v8, :cond_14

    if-eqz p5, :cond_15

    :cond_14
    invoke-virtual {p1, p6, p3, v6}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->endTag(Ljava/lang/String;ZZ)V

    :cond_15
    return-void
.end method

.method public encodeAccessRules(Lorg/eclipse/jdt/internal/core/XMLWriter;ZZ)V
    .locals 5

    const-string v0, "accessrules"

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->startTag(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getAccessRules()[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->endTag(Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    aget-object v4, v1, v3

    invoke-direct {p0, v4, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->encodeAccessRule(Lorg/eclipse/jdt/internal/compiler/env/AccessRule;Lorg/eclipse/jdt/internal/core/XMLWriter;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public encodeExtraAttributes(Lorg/eclipse/jdt/internal/core/XMLWriter;ZZ)V
    .locals 9

    const-string v0, "attributes"

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->startTag(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->endTag(Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    aget-object v2, v2, v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "value"

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "attribute"

    const/4 v8, 0x1

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->contentKind:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getContentKind()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported:Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentPath:Lorg/eclipse/core/runtime/IPath;

    if-nez v3, :cond_5

    if-eqz v1, :cond_6

    return v2

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentRootPath:Lorg/eclipse/core/runtime/IPath;

    if-nez v3, :cond_7

    if-eqz v1, :cond_8

    return v2

    :cond_7
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->equalPatterns([Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->equalPatterns([Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_b
    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules:Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->specificOutputLocation:Lorg/eclipse/core/runtime/IPath;

    if-nez v3, :cond_e

    if-eqz v1, :cond_f

    return v2

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->equalAttributes([Lorg/eclipse/jdt/core/IClasspathAttribute;[Lorg/eclipse/jdt/core/IClasspathAttribute;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0

    :cond_11
    return v2
.end method

.method public fullExclusionPatternChars()[[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->UNINIT_PATTERNS:[[C

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    array-length v0, v0

    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars:[[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->removeTrailingSeparator()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars:[[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars:[[C

    return-object v0
.end method

.method public fullInclusionPatternChars()[[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->UNINIT_PATTERNS:[[C

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    array-length v0, v0

    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars:[[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->removeTrailingSeparator()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars:[[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars:[[C

    return-object v0
.end method

.method public getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    return-object v0
.end method

.method public getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getAccessRules()[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    move-result-object v0

    .line 3
    array-length v1, v0

    if-nez v1, :cond_1

    .line 4
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    return-object v0

    .line 5
    :cond_1
    new-array v2, v1, [Lorg/eclipse/jdt/core/IAccessRule;

    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getContentKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->contentKind:I

    return v0
.end method

.method public getEntryKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    return v0
.end method

.method public getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    return-object v0
.end method

.method public getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public getLibraryIndexLocation()Ljava/net/URL;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    array-length v3, v1

    if-lt v0, v3, :cond_2

    return-object v2

    :cond_2
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "index_location"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getOutputLocation()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->specificOutputLocation:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public getReferencingEntry()Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->referencingEntry:Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object v0
.end method

.method public getResolvedEntry()Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->getResolvedClasspathEntry(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSourceAttachmentEncoding()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "source_encoding"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentPath:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentRootPath:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public ignoreOptionalProblems()Z
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    array-length v3, v1

    if-lt v0, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ignore_optional_problems"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "true"

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public isExported()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported:Z

    return v0
.end method

.method public isModular()Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "module"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "true"

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isOptional()Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "optional"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "true"

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public resolvedChainedLibraries()[Lorg/eclipse/jdt/internal/core/ClasspathEntry;
    .locals 21

    move-object/from16 v14, p0

    .line 25
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedChainedLibraries(Lorg/eclipse/core/runtime/IPath;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object v15

    .line 26
    array-length v13, v15

    if-nez v13, :cond_0

    .line 27
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    return-object v0

    .line 28
    :cond_0
    new-array v12, v13, [Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-lt v11, v13, :cond_1

    return-object v12

    .line 29
    :cond_1
    new-instance v16, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    .line 30
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getContentKind()I

    move-result v1

    .line 31
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v2

    .line 32
    aget-object v3, v15, v11

    .line 33
    iget-object v4, v14, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    .line 34
    iget-object v5, v14, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    .line 36
    iget-boolean v10, v14, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported:Z

    .line 37
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v17

    .line 38
    iget-boolean v9, v14, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules:Z

    .line 39
    sget-object v18, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move/from16 v19, v9

    move-object/from16 v9, p0

    move/from16 v20, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move/from16 v12, v19

    move/from16 v19, v13

    move-object/from16 v13, v18

    invoke-direct/range {v0 .. v13}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathEntry;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    .line 40
    aput-object v16, v17, v20

    add-int/lit8 v11, v20, 0x1

    move-object/from16 v12, v17

    move/from16 v13, v19

    goto :goto_0
.end method

.method public resolvedDotDot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolveDotDot(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    if-ne v5, v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getContentKind()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v4

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getReferencingEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v11

    iget-boolean v12, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported:Z

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v13

    iget-boolean v14, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules:Z

    iget-object v15, v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathEntry;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    return-object v1
.end method

.method public rootID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID:Ljava/lang/String;

    if-nez v0, :cond_5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CON]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[VAR]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SRC]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PRJ]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LIB]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID:Ljava/lang/String;

    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v2, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "CPE_CONTAINER"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v3, "CPE_VARIABLE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string v3, "CPE_SOURCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string v3, "CPE_PROJECT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string v3, "CPE_LIBRARY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v3, "]["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getContentKind()I

    move-result v3

    if-eq v3, v2, :cond_8

    if-eq v3, v4, :cond_7

    const/16 v2, 0xa

    if-eq v3, v2, :cond_6

    goto :goto_2

    :cond_6
    const-string v2, "K_OUTPUT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    const-string v2, "K_BINARY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    const-string v2, "K_SOURCE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "[sourcePath:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v3, "[rootPath:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    const-string v3, "[isExported:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->inclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    const/4 v5, 0x0

    if-nez v3, :cond_b

    move v6, v5

    goto :goto_3

    :cond_b
    array-length v6, v3

    :goto_3
    const/16 v7, 0x7c

    if-lez v6, :cond_e

    const-string v8, "[including:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v5

    :goto_4
    if-lt v8, v6, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_c
    aget-object v9, v3, v8

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->exclusionPatterns:[Lorg/eclipse/core/runtime/IPath;

    if-nez v3, :cond_f

    move v6, v5

    goto :goto_6

    :cond_f
    array-length v6, v3

    :goto_6
    if-lez v6, :cond_12

    const-string v8, "[excluding:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v5

    :goto_7
    if-lt v8, v6, :cond_10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_10
    aget-object v9, v3, v8

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_11

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eqz v3, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_13
    iget v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->entryKind:I

    if-ne v1, v4, :cond_14

    const-string v1, "[combine access rules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v1, "[output:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_15
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    if-nez v1, :cond_16

    move v1, v5

    goto :goto_9

    :cond_16
    array-length v1, v1

    :goto_9
    if-lez v1, :cond_19

    const-string v3, "[attributes:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a
    if-lt v5, v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_17
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-eq v5, v3, :cond_18

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_19
    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withExtraAttributeRemoved(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;
    .locals 14

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/c;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/d;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/d;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    move-object v13, p1

    check-cast v13, [Lorg/eclipse/jdt/core/IClasspathAttribute;

    new-instance p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getContentKind()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getReferencingEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported()Z

    move-result v10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineAccessRules()Z

    move-result v12

    move-object v0, p1

    invoke-direct/range {v0 .. v13}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathEntry;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    return-object p1
.end method
