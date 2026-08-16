.class public final enum Lnet/jpountz/util/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/jpountz/util/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/jpountz/util/b$b;

.field public static final enum LINUX:Lnet/jpountz/util/b$b;

.field public static final enum MAC:Lnet/jpountz/util/b$b;

.field public static final enum SOLARIS:Lnet/jpountz/util/b$b;

.field public static final enum WINDOWS:Lnet/jpountz/util/b$b;


# instance fields
.field public final libExtension:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/jpountz/util/b$b;

    const-string v1, "WINDOWS"

    const/4 v2, 0x0

    const-string v3, "win32"

    const-string v4, "so"

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/jpountz/util/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/jpountz/util/b$b;->WINDOWS:Lnet/jpountz/util/b$b;

    new-instance v1, Lnet/jpountz/util/b$b;

    const/4 v2, 0x1

    const-string v3, "linux"

    const-string v5, "LINUX"

    invoke-direct {v1, v5, v2, v3, v4}, Lnet/jpountz/util/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lnet/jpountz/util/b$b;->LINUX:Lnet/jpountz/util/b$b;

    new-instance v2, Lnet/jpountz/util/b$b;

    const-string v3, "darwin"

    const-string v5, "dylib"

    const-string v6, "MAC"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3, v5}, Lnet/jpountz/util/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lnet/jpountz/util/b$b;->MAC:Lnet/jpountz/util/b$b;

    new-instance v3, Lnet/jpountz/util/b$b;

    const/4 v5, 0x3

    const-string v6, "solaris"

    const-string v7, "SOLARIS"

    invoke-direct {v3, v7, v5, v6, v4}, Lnet/jpountz/util/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lnet/jpountz/util/b$b;->SOLARIS:Lnet/jpountz/util/b$b;

    filled-new-array {v0, v1, v2, v3}, [Lnet/jpountz/util/b$b;

    move-result-object v0

    sput-object v0, Lnet/jpountz/util/b$b;->$VALUES:[Lnet/jpountz/util/b$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/jpountz/util/b$b;->name:Ljava/lang/String;

    iput-object p4, p0, Lnet/jpountz/util/b$b;->libExtension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/jpountz/util/b$b;
    .locals 1

    const-class v0, Lnet/jpountz/util/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/jpountz/util/b$b;

    return-object p0
.end method

.method public static values()[Lnet/jpountz/util/b$b;
    .locals 1

    sget-object v0, Lnet/jpountz/util/b$b;->$VALUES:[Lnet/jpountz/util/b$b;

    invoke-virtual {v0}, [Lnet/jpountz/util/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/jpountz/util/b$b;

    return-object v0
.end method
