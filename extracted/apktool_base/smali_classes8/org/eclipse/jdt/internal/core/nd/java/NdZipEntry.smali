.class public Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;
.super Lorg/eclipse/jdt/internal/core/nd/NdStruct;
.source "SourceFile"


# static fields
.field public static final FILE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;->FILE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method


# virtual methods
.method public getFileName()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;->FILE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;->FILE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLjava/lang/String;)V

    return-void
.end method
