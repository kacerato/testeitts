.class public final enum Lec/h$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lec/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lec/h$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lec/h$c;

.field public static final enum FRAG:Lec/h$c;

.field public static final enum SUBMAT:Lec/h$c;

.field public static final enum VERTEX:Lec/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lec/h$c;

    const-string v1, "FRAG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lec/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lec/h$c;->FRAG:Lec/h$c;

    new-instance v0, Lec/h$c;

    const-string v1, "VERTEX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lec/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lec/h$c;->VERTEX:Lec/h$c;

    new-instance v0, Lec/h$c;

    const-string v1, "SUBMAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lec/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lec/h$c;->SUBMAT:Lec/h$c;

    invoke-static {}, Lec/h$c;->a()[Lec/h$c;

    move-result-object v0

    sput-object v0, Lec/h$c;->$VALUES:[Lec/h$c;

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

.method public static synthetic a()[Lec/h$c;
    .locals 3

    sget-object v0, Lec/h$c;->FRAG:Lec/h$c;

    sget-object v1, Lec/h$c;->VERTEX:Lec/h$c;

    sget-object v2, Lec/h$c;->SUBMAT:Lec/h$c;

    filled-new-array {v0, v1, v2}, [Lec/h$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lec/h$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lec/h$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lec/h$c;

    return-object p0
.end method

.method public static values()[Lec/h$c;
    .locals 1

    sget-object v0, Lec/h$c;->$VALUES:[Lec/h$c;

    invoke-virtual {v0}, [Lec/h$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lec/h$c;

    return-object v0
.end method
