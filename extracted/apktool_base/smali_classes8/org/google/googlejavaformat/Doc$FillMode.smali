.class public final enum Lorg/google/googlejavaformat/Doc$FillMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/Doc$FillMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/Doc$FillMode;

.field public static final enum FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

.field public static final enum INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

.field public static final enum UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/Doc$FillMode;
    .locals 3

    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    sget-object v1, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    sget-object v2, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    filled-new-array {v0, v1, v2}, [Lorg/google/googlejavaformat/Doc$FillMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, "UNIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/Doc$FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    new-instance v0, Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, "INDEPENDENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/Doc$FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    new-instance v0, Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, "FORCED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/Doc$FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    invoke-static {}, Lorg/google/googlejavaformat/Doc$FillMode;->$values()[Lorg/google/googlejavaformat/Doc$FillMode;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->$VALUES:[Lorg/google/googlejavaformat/Doc$FillMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/Doc$FillMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/google/googlejavaformat/Doc$FillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/Doc$FillMode;

    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/Doc$FillMode;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->$VALUES:[Lorg/google/googlejavaformat/Doc$FillMode;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/Doc$FillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/Doc$FillMode;

    return-object v0
.end method
