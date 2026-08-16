.class public Lorg/eclipse/jdt/internal/core/UserLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CURRENT_VERSION:Ljava/lang/String; = "2"

.field private static final TAG_ARCHIVE:Ljava/lang/String; = "archive"

.field private static final TAG_PATH:Ljava/lang/String; = "path"

.field private static final TAG_SOURCEATTACHMENT:Ljava/lang/String; = "sourceattachment"

.field private static final TAG_SOURCEATTACHMENTROOT:Ljava/lang/String; = "sourceattachmentroot"

.field private static final TAG_SYSTEMLIBRARY:Ljava/lang/String; = "systemlibrary"

.field private static final TAG_USERLIBRARY:Ljava/lang/String; = "userlibrary"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION_ONE:Ljava/lang/String; = "1"


# instance fields
.field private entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field private isSystemLibrary:Z


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IClasspathEntry;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/eclipse/core/runtime/Assert;->isNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->isSystemLibrary:Z

    return-void
.end method

.method public static createFromString(Ljava/io/Reader;)Lorg/eclipse/jdt/internal/core/UserLibrary;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p0

    :try_start_1
    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/Reader;->close()V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userlibrary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "version"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "systemlibrary"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v3, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    new-instance v1, Lorg/eclipse/jdt/internal/core/UserLibrary;

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/UserLibrary;-><init>([Lorg/eclipse/jdt/core/IClasspathEntry;Z)V

    return-object v1

    :cond_0
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "archive"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "path"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sourceattachment"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v10

    :goto_1
    const-string v9, "sourceattachmentroot"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v10

    :goto_2
    const-string v11, "1"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v7}, Lorg/eclipse/core/runtime/Path;->fromOSString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    if-eqz v8, :cond_3

    invoke-static {v8}, Lorg/eclipse/core/runtime/Path;->fromOSString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v10

    :goto_3
    if-eqz v9, :cond_4

    invoke-static {v9}, Lorg/eclipse/core/runtime/Path;->fromOSString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    :cond_4
    :goto_4
    move-object v11, v7

    move-object v12, v8

    move-object v13, v10

    goto :goto_6

    :cond_5
    invoke-static {v7}, Lorg/eclipse/core/runtime/Path;->fromPortableString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    if-eqz v8, :cond_6

    invoke-static {v8}, Lorg/eclipse/core/runtime/Path;->fromPortableString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    goto :goto_5

    :cond_6
    move-object v8, v10

    :goto_5
    if-eqz v9, :cond_4

    invoke-static {v9}, Lorg/eclipse/core/runtime/Path;->fromPortableString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    goto :goto_4

    :goto_6
    const-string v7, "*"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    new-array v7, v7, [Z

    const-string v8, "attributes"

    invoke-static {v8, v6, v7}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getChildAttributes(Ljava/lang/String;Lorg/w3c/dom/NodeList;[Z)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->decodeExtraAttributes(Lorg/w3c/dom/NodeList;)[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v15

    const-string v8, "accessrules"

    invoke-static {v8, v6, v7}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getChildAttributes(Ljava/lang/String;Lorg/w3c/dom/NodeList;[Z)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->decodeAccessRules(Lorg/w3c/dom/NodeList;)[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lorg/eclipse/jdt/core/JavaCore;->newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->file_badFormat:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_8

    :goto_7
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->file_badFormat:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_8
    new-instance v1, Ljava/io/IOException;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->file_badFormat:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Ljava/io/Reader;->close()V

    throw v0
.end method

.method public static serialize([Lorg/eclipse/jdt/core/IClasspathEntry;Z)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v10, Lorg/eclipse/jdt/internal/core/XMLWriter;

    const/4 v4, 0x0

    const/4 v11, 0x1

    invoke-direct {v10, v2, v4, v11}, Lorg/eclipse/jdt/internal/core/XMLWriter;-><init>(Ljava/io/Writer;Lorg/eclipse/jdt/core/IJavaProject;Z)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v4, "version"

    const-string v5, "2"

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "systemlibrary"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v5, "userlibrary"

    const/4 v7, 0x1

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    array-length v12, v0

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-lt v14, v12, :cond_0

    const-string v0, "userlibrary"

    invoke-virtual {v10, v0, v11, v11}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->endTag(Ljava/lang/String;ZZ)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v4, v0, v14

    move-object v15, v4

    check-cast v15, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->toPortableString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "sourceattachment"

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->toPortableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "sourceattachmentroot"

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->toPortableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v4, v15, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    if-eqz v4, :cond_3

    array-length v4, v4

    if-eqz v4, :cond_3

    move/from16 v16, v11

    goto :goto_1

    :cond_3
    move/from16 v16, v13

    :goto_1
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v4

    if-eqz v4, :cond_4

    move/from16 v17, v11

    goto :goto_2

    :cond_4
    move/from16 v17, v13

    :goto_2
    if-nez v16, :cond_6

    if-eqz v17, :cond_5

    goto :goto_3

    :cond_5
    move v9, v11

    goto :goto_4

    :cond_6
    :goto_3
    move v9, v13

    :goto_4
    const-string v5, "archive"

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    if-eqz v16, :cond_7

    invoke-virtual {v15, v10, v11, v11}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->encodeExtraAttributes(Lorg/eclipse/jdt/internal/core/XMLWriter;ZZ)V

    :cond_7
    if-eqz v17, :cond_8

    invoke-virtual {v15, v10, v11, v11}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->encodeAccessRules(Lorg/eclipse/jdt/internal/core/XMLWriter;ZZ)V

    :cond_8
    if-nez v16, :cond_9

    if-eqz v17, :cond_a

    :cond_9
    const-string v4, "archive"

    invoke-virtual {v10, v4, v11, v11}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->endTag(Ljava/lang/String;ZZ)V

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/core/UserLibrary;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    array-length v1, v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    array-length v2, v2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->isSystemLibrary:Z

    iget-boolean v2, p1, Lorg/eclipse/jdt/internal/core/UserLibrary;->isSystemLibrary:Z

    if-ne v1, v2, :cond_2

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->isSystemLibrary:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x11

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isSystemLibrary()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->isSystemLibrary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/UserLibrary;->entries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
