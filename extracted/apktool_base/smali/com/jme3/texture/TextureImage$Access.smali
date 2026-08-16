.class public final enum Lcom/jme3/texture/TextureImage$Access;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/TextureImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Access"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/texture/TextureImage$Access;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/TextureImage$Access;

.field public static final enum ReadOnly:Lcom/jme3/texture/TextureImage$Access;

.field public static final enum ReadWrite:Lcom/jme3/texture/TextureImage$Access;

.field public static final enum WriteOnly:Lcom/jme3/texture/TextureImage$Access;


# instance fields
.field private final glEnum:I

.field private final read:Z

.field private final write:Z


# direct methods
.method private static synthetic $values()[Lcom/jme3/texture/TextureImage$Access;
    .locals 3

    sget-object v0, Lcom/jme3/texture/TextureImage$Access;->ReadOnly:Lcom/jme3/texture/TextureImage$Access;

    sget-object v1, Lcom/jme3/texture/TextureImage$Access;->WriteOnly:Lcom/jme3/texture/TextureImage$Access;

    sget-object v2, Lcom/jme3/texture/TextureImage$Access;->ReadWrite:Lcom/jme3/texture/TextureImage$Access;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/texture/TextureImage$Access;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/jme3/texture/TextureImage$Access;

    const/4 v4, 0x0

    const v5, 0x88b8

    const-string v1, "ReadOnly"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jme3/texture/TextureImage$Access;-><init>(Ljava/lang/String;IZZI)V

    sput-object v6, Lcom/jme3/texture/TextureImage$Access;->ReadOnly:Lcom/jme3/texture/TextureImage$Access;

    new-instance v0, Lcom/jme3/texture/TextureImage$Access;

    const/4 v11, 0x1

    const v12, 0x88b9

    const-string v8, "WriteOnly"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jme3/texture/TextureImage$Access;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lcom/jme3/texture/TextureImage$Access;->WriteOnly:Lcom/jme3/texture/TextureImage$Access;

    new-instance v0, Lcom/jme3/texture/TextureImage$Access;

    const/4 v5, 0x1

    const v6, 0x88ba

    const-string v2, "ReadWrite"

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jme3/texture/TextureImage$Access;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lcom/jme3/texture/TextureImage$Access;->ReadWrite:Lcom/jme3/texture/TextureImage$Access;

    invoke-static {}, Lcom/jme3/texture/TextureImage$Access;->$values()[Lcom/jme3/texture/TextureImage$Access;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/TextureImage$Access;->$VALUES:[Lcom/jme3/texture/TextureImage$Access;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/jme3/texture/TextureImage$Access;->read:Z

    iput-boolean p4, p0, Lcom/jme3/texture/TextureImage$Access;->write:Z

    iput p5, p0, Lcom/jme3/texture/TextureImage$Access;->glEnum:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/TextureImage$Access;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/texture/TextureImage$Access;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/texture/TextureImage$Access;

    return-object p0
.end method

.method public static values()[Lcom/jme3/texture/TextureImage$Access;
    .locals 1

    sget-object v0, Lcom/jme3/texture/TextureImage$Access;->$VALUES:[Lcom/jme3/texture/TextureImage$Access;

    invoke-virtual {v0}, [Lcom/jme3/texture/TextureImage$Access;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/TextureImage$Access;

    return-object v0
.end method


# virtual methods
.method public getGlEnum()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/TextureImage$Access;->glEnum:I

    return v0
.end method

.method public isRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/texture/TextureImage$Access;->read:Z

    return v0
.end method

.method public isWrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/texture/TextureImage$Access;->write:Z

    return v0
.end method
