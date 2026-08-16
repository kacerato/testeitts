.class public final enum Lcom/jme3/system/Platform;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/system/Platform$Os;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/system/Platform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/system/Platform;

.field public static final enum Android_ARM8:Lcom/jme3/system/Platform;

.field public static final enum Android_X86_64:Lcom/jme3/system/Platform;

.field public static final enum Linux64:Lcom/jme3/system/Platform;

.field public static final enum Linux_ARM64:Lcom/jme3/system/Platform;

.field public static final enum MacOSX64:Lcom/jme3/system/Platform;

.field public static final enum MacOSX_ARM64:Lcom/jme3/system/Platform;

.field public static final enum Web:Lcom/jme3/system/Platform;

.field public static final enum Windows64:Lcom/jme3/system/Platform;

.field public static final enum Windows_ARM64:Lcom/jme3/system/Platform;

.field public static final enum iOS_ARM:Lcom/jme3/system/Platform;

.field public static final enum iOS_X86:Lcom/jme3/system/Platform;


# instance fields
.field private final is64bit:Z

.field private final os:Lcom/jme3/system/Platform$Os;


# direct methods
.method private static synthetic $values()[Lcom/jme3/system/Platform;
    .locals 11

    sget-object v0, Lcom/jme3/system/Platform;->Windows64:Lcom/jme3/system/Platform;

    sget-object v1, Lcom/jme3/system/Platform;->Windows_ARM64:Lcom/jme3/system/Platform;

    sget-object v2, Lcom/jme3/system/Platform;->Linux64:Lcom/jme3/system/Platform;

    sget-object v3, Lcom/jme3/system/Platform;->Linux_ARM64:Lcom/jme3/system/Platform;

    sget-object v4, Lcom/jme3/system/Platform;->MacOSX64:Lcom/jme3/system/Platform;

    sget-object v5, Lcom/jme3/system/Platform;->MacOSX_ARM64:Lcom/jme3/system/Platform;

    sget-object v6, Lcom/jme3/system/Platform;->Android_ARM8:Lcom/jme3/system/Platform;

    sget-object v7, Lcom/jme3/system/Platform;->Android_X86_64:Lcom/jme3/system/Platform;

    sget-object v8, Lcom/jme3/system/Platform;->iOS_ARM:Lcom/jme3/system/Platform;

    sget-object v9, Lcom/jme3/system/Platform;->iOS_X86:Lcom/jme3/system/Platform;

    sget-object v10, Lcom/jme3/system/Platform;->Web:Lcom/jme3/system/Platform;

    filled-new-array/range {v0 .. v10}, [Lcom/jme3/system/Platform;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/jme3/system/Platform;

    sget-object v1, Lcom/jme3/system/Platform$Os;->Windows:Lcom/jme3/system/Platform$Os;

    const-string v2, "Windows64"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->Windows64:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    const-string v2, "Windows_ARM64"

    invoke-direct {v0, v2, v4, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->Windows_ARM64:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    sget-object v1, Lcom/jme3/system/Platform$Os;->Linux:Lcom/jme3/system/Platform$Os;

    const-string v2, "Linux64"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->Linux64:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    const-string v2, "Linux_ARM64"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->Linux_ARM64:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    sget-object v1, Lcom/jme3/system/Platform$Os;->MacOS:Lcom/jme3/system/Platform$Os;

    const-string v2, "MacOSX64"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->MacOSX64:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    const-string v2, "MacOSX_ARM64"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->MacOSX_ARM64:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    sget-object v1, Lcom/jme3/system/Platform$Os;->Android:Lcom/jme3/system/Platform$Os;

    const-string v2, "Android_ARM8"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->Android_ARM8:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    const-string v2, "Android_X86_64"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->Android_X86_64:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    sget-object v1, Lcom/jme3/system/Platform$Os;->iOS:Lcom/jme3/system/Platform$Os;

    const-string v2, "iOS_ARM"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->iOS_ARM:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    const-string v2, "iOS_X86"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->iOS_X86:Lcom/jme3/system/Platform;

    new-instance v0, Lcom/jme3/system/Platform;

    const/16 v1, 0xa

    sget-object v2, Lcom/jme3/system/Platform$Os;->Web:Lcom/jme3/system/Platform$Os;

    const-string v3, "Web"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    sput-object v0, Lcom/jme3/system/Platform;->Web:Lcom/jme3/system/Platform;

    invoke-static {}, Lcom/jme3/system/Platform;->$values()[Lcom/jme3/system/Platform;

    move-result-object v0

    sput-object v0, Lcom/jme3/system/Platform;->$VALUES:[Lcom/jme3/system/Platform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/system/Platform$Os;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/system/Platform;-><init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/jme3/system/Platform$Os;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/system/Platform$Os;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/jme3/system/Platform;->os:Lcom/jme3/system/Platform$Os;

    .line 3
    iput-boolean p4, p0, Lcom/jme3/system/Platform;->is64bit:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/system/Platform;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/system/Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/system/Platform;

    return-object p0
.end method

.method public static values()[Lcom/jme3/system/Platform;
    .locals 1

    sget-object v0, Lcom/jme3/system/Platform;->$VALUES:[Lcom/jme3/system/Platform;

    invoke-virtual {v0}, [Lcom/jme3/system/Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/system/Platform;

    return-object v0
.end method


# virtual methods
.method public getOs()Lcom/jme3/system/Platform$Os;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/Platform;->os:Lcom/jme3/system/Platform$Os;

    return-object v0
.end method

.method public is64Bit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/system/Platform;->is64bit:Z

    return v0
.end method
