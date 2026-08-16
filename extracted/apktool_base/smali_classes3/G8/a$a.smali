.class public final enum LG8/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LG8/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LG8/a$a;

.field public static final enum Folder:LG8/a$a;

.field public static final enum Shader:LG8/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LG8/a$a;

    const-string v1, "Folder"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LG8/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG8/a$a;->Folder:LG8/a$a;

    new-instance v0, LG8/a$a;

    const-string v1, "Shader"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LG8/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG8/a$a;->Shader:LG8/a$a;

    invoke-static {}, LG8/a$a;->a()[LG8/a$a;

    move-result-object v0

    sput-object v0, LG8/a$a;->$VALUES:[LG8/a$a;

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
            "$enum$name",
            "$enum$ordinal"
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

.method public static synthetic a()[LG8/a$a;
    .locals 2

    sget-object v0, LG8/a$a;->Folder:LG8/a$a;

    sget-object v1, LG8/a$a;->Shader:LG8/a$a;

    filled-new-array {v0, v1}, [LG8/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LG8/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LG8/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG8/a$a;

    return-object p0
.end method

.method public static values()[LG8/a$a;
    .locals 1

    sget-object v0, LG8/a$a;->$VALUES:[LG8/a$a;

    invoke-virtual {v0}, [LG8/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG8/a$a;

    return-object v0
.end method
