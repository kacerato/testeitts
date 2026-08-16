.class public final enum Lef/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lef/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lef/a$b;

.field public static final enum CreateMissingBuffers:Lef/a$b;

.field public static final enum RemoveUnalignedBuffers:Lef/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lef/a$b;

    const-string v1, "RemoveUnalignedBuffers"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lef/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lef/a$b;->RemoveUnalignedBuffers:Lef/a$b;

    new-instance v0, Lef/a$b;

    const-string v1, "CreateMissingBuffers"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lef/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lef/a$b;->CreateMissingBuffers:Lef/a$b;

    invoke-static {}, Lef/a$b;->a()[Lef/a$b;

    move-result-object v0

    sput-object v0, Lef/a$b;->$VALUES:[Lef/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lef/a$b;
    .locals 2

    sget-object v0, Lef/a$b;->RemoveUnalignedBuffers:Lef/a$b;

    sget-object v1, Lef/a$b;->CreateMissingBuffers:Lef/a$b;

    filled-new-array {v0, v1}, [Lef/a$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lef/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lef/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lef/a$b;

    return-object p0
.end method

.method public static values()[Lef/a$b;
    .locals 1

    sget-object v0, Lef/a$b;->$VALUES:[Lef/a$b;

    invoke-virtual {v0}, [Lef/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lef/a$b;

    return-object v0
.end method
