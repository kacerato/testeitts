.class public final enum Lw2/v$f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw2/v$f;",
        ">;",
        "Lw2/t<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lw2/v$f;

.field public static final enum INSTANCE:Lw2/v$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw2/v$f;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw2/v$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/v$f;->INSTANCE:Lw2/v$f;

    invoke-static {}, Lw2/v$f;->a()[Lw2/v$f;

    move-result-object v0

    sput-object v0, Lw2/v$f;->$VALUES:[Lw2/v$f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lw2/v$f;
    .locals 1

    sget-object v0, Lw2/v$f;->INSTANCE:Lw2/v$f;

    filled-new-array {v0}, [Lw2/v$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lw2/v$f;
    .locals 1

    const-class v0, Lw2/v$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw2/v$f;

    return-object p0
.end method

.method public static values()[Lw2/v$f;
    .locals 1

    sget-object v0, Lw2/v$f;->$VALUES:[Lw2/v$f;

    invoke-virtual {v0}, [Lw2/v$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw2/v$f;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Functions.identity()"

    return-object v0
.end method
