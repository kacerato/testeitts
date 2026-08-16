.class public Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;
.super Lorg/eclipse/jdt/internal/core/nd/NdNode;
.source "SourceFile"


# static fields
.field public static final FILENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey<",
            "Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

.field public static final FLG_CORRUPT_ZIP_FILE:I = 0x1

.field public static final HASHCODE_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

.field public static final JAVA_ROOT:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final JDK_LEVEL:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

.field public static final MANIFEST_CONTENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final SIZE_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

.field public static final TIME_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

.field public static final TIME_LAST_USED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

.field public static final TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKSPACE_MAPPINGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZIP_ENTRIES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private jdkLevel:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->FILES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->FILENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FILE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;I)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addLong()Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TIME_LAST_USED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addLong()Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TIME_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addLong()Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->SIZE_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addLong()Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->HASHCODE_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;->RESOURCE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->WORKSPACE_MAPPINGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->JAVA_ROOT:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addLong()Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->JDK_LEVEL:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;I)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->ZIP_ENTRIES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->MANIFEST_CONTENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addShort()Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->FILE_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/NdNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method private getHashcodeLastScanned()J
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->HASHCODE_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addZipEntry(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->ZIP_ENTRIES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;->setFilename(Ljava/lang/String;)V

    return-object v0
.end method

.method public allocateZipEntries(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->ZIP_ENTRIES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public getAllWorkspaceLocations()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->WORKSPACE_MAPPINGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    new-instance v5, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$2;

    invoke-direct {v5, p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$2;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->accept(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor;)V

    return-object v0
.end method

.method public getAnyOpenWorkspaceLocation(Lorg/eclipse/core/resources/IWorkspaceRoot;)Lorg/eclipse/core/runtime/IPath;
    .locals 7

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->WORKSPACE_MAPPINGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    sget-object p1, Lorg/eclipse/core/runtime/Path;->EMPTY:Lorg/eclipse/core/runtime/Path;

    return-object p1

    :cond_0
    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->WORKSPACE_MAPPINGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v4

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v3, v4, v5, v6, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;

    new-instance v4, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;->getPath()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4, v1}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;
    .locals 8

    new-instance v7, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getTimeLastScanned()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getSizeLastScanned()J

    move-result-wide v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getHashcodeLastScanned()J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;-><init>(JJJ)V

    return-object v7
.end method

.method public getFirstWorkspaceLocation()Lorg/eclipse/core/runtime/IPath;
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->WORKSPACE_MAPPINGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->isEmpty(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/eclipse/core/runtime/Path;->EMPTY:Lorg/eclipse/core/runtime/Path;

    return-object v0

    :cond_0
    new-instance v1, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;->getPath()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getFlags()I
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->FILE_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v0

    return v0
.end method

.method public getJdkLevel()J
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->jdkLevel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->JDK_LEVEL:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->jdkLevel:J

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->jdkLevel:J

    return-wide v0
.end method

.method public getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->FILENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getManifestContent()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->MANIFEST_CONTENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->JAVA_ROOT:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getFirstWorkspaceLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getSizeLastScanned()J
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->SIZE_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeLastScanned()J
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TIME_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeLastUsed()J
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TIME_LAST_USED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(I)Lorg/eclipse/jdt/internal/core/nd/java/NdType;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    return-object p1
.end method

.method public getTypeCount()I
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v0

    return v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceMappings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->WORKSPACE_MAPPINGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZipEntries()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->ZIP_ENTRIES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAllFlags(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isCorruptedZipFile()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->hasAllFlags(I)Z

    move-result v0

    return v0
.end method

.method public isDoneIndexing()Z
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getTimeLastScanned()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInIndex()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->isValidAddress(J)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getNodeType(Ljava/lang/Class;)S

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->FILENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->FILES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    sget v4, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DATA_AREA_OFFSET:I

    int-to-long v4, v4

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->create([C)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object v6

    new-instance v7, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$1;

    invoke-direct {v7, p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$1;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->findBest(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public markAsInvalid()V
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TIME_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    return-void
.end method

.method public setFingerprint(Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;)V
    .locals 12

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TIME_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->getTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    sget-object v6, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->HASHCODE_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v7

    iget-wide v8, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->getHash()J

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->SIZE_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->getSize()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    return-void
.end method

.method public setFlags(I)V
    .locals 5

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->FILE_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getFlags()I

    move-result v4

    or-int/2addr p1, v4

    int-to-short p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JS)V

    return-void
.end method

.method public setJdkLevel(J)V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getJdkLevel()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->JDK_LEVEL:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    :cond_0
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->FILENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLjava/lang/String;)V

    return-void
.end method

.method public setManifestContent([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->MANIFEST_CONTENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public setPackageFragmentRoot([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->JAVA_ROOT:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public setTimeLastUsed(J)V
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TIME_LAST_USED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->FILENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
