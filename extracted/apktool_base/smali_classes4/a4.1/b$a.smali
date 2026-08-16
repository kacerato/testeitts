.class public final enum La4/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La4/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[La4/b$a;

.field public static final enum DOWN:La4/b$a;

.field public static final enum PRESSED:La4/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La4/b$a;

    const-string v1, "DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La4/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La4/b$a;->DOWN:La4/b$a;

    new-instance v0, La4/b$a;

    const-string v1, "PRESSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, La4/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La4/b$a;->PRESSED:La4/b$a;

    invoke-static {}, La4/b$a;->a()[La4/b$a;

    move-result-object v0

    sput-object v0, La4/b$a;->$VALUES:[La4/b$a;

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

.method public static synthetic a()[La4/b$a;
    .locals 2

    sget-object v0, La4/b$a;->DOWN:La4/b$a;

    sget-object v1, La4/b$a;->PRESSED:La4/b$a;

    filled-new-array {v0, v1}, [La4/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La4/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, La4/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La4/b$a;

    return-object p0
.end method

.method public static values()[La4/b$a;
    .locals 1

    sget-object v0, La4/b$a;->$VALUES:[La4/b$a;

    invoke-virtual {v0}, [La4/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La4/b$a;

    return-object v0
.end method
