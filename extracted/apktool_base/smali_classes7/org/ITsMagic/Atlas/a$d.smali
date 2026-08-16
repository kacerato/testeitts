.class public final enum Lorg/ITsMagic/Atlas/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ITsMagic/Atlas/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ITsMagic/Atlas/a$d;

.field public static final enum COUNT_ONLY:Lorg/ITsMagic/Atlas/a$d;

.field public static final enum EXECUTE:Lorg/ITsMagic/Atlas/a$d;

.field public static final enum NONE:Lorg/ITsMagic/Atlas/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ITsMagic/Atlas/a$d;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ITsMagic/Atlas/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ITsMagic/Atlas/a$d;->NONE:Lorg/ITsMagic/Atlas/a$d;

    new-instance v0, Lorg/ITsMagic/Atlas/a$d;

    const-string v1, "COUNT_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ITsMagic/Atlas/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ITsMagic/Atlas/a$d;->COUNT_ONLY:Lorg/ITsMagic/Atlas/a$d;

    new-instance v0, Lorg/ITsMagic/Atlas/a$d;

    const-string v1, "EXECUTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/ITsMagic/Atlas/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ITsMagic/Atlas/a$d;->EXECUTE:Lorg/ITsMagic/Atlas/a$d;

    invoke-static {}, Lorg/ITsMagic/Atlas/a$d;->a()[Lorg/ITsMagic/Atlas/a$d;

    move-result-object v0

    sput-object v0, Lorg/ITsMagic/Atlas/a$d;->$VALUES:[Lorg/ITsMagic/Atlas/a$d;

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

.method public static synthetic a()[Lorg/ITsMagic/Atlas/a$d;
    .locals 3

    sget-object v0, Lorg/ITsMagic/Atlas/a$d;->NONE:Lorg/ITsMagic/Atlas/a$d;

    sget-object v1, Lorg/ITsMagic/Atlas/a$d;->COUNT_ONLY:Lorg/ITsMagic/Atlas/a$d;

    sget-object v2, Lorg/ITsMagic/Atlas/a$d;->EXECUTE:Lorg/ITsMagic/Atlas/a$d;

    filled-new-array {v0, v1, v2}, [Lorg/ITsMagic/Atlas/a$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ITsMagic/Atlas/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/ITsMagic/Atlas/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ITsMagic/Atlas/a$d;

    return-object p0
.end method

.method public static values()[Lorg/ITsMagic/Atlas/a$d;
    .locals 1

    sget-object v0, Lorg/ITsMagic/Atlas/a$d;->$VALUES:[Lorg/ITsMagic/Atlas/a$d;

    invoke-virtual {v0}, [Lorg/ITsMagic/Atlas/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ITsMagic/Atlas/a$d;

    return-object v0
.end method
