.class public final enum LOe/p0$g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LFe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOe/p0$g;",
        ">;",
        "LFe/o<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LOe/p0$g;

.field public static final enum INSTANCE:LOe/p0$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LOe/p0$g;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LOe/p0$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOe/p0$g;->INSTANCE:LOe/p0$g;

    filled-new-array {v0}, [LOe/p0$g;

    move-result-object v0

    sput-object v0, LOe/p0$g;->$VALUES:[LOe/p0$g;

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

.method public static valueOf(Ljava/lang/String;)LOe/p0$g;
    .locals 1

    const-class v0, LOe/p0$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOe/p0$g;

    return-object p0
.end method

.method public static values()[LOe/p0$g;
    .locals 1

    sget-object v0, LOe/p0$g;->$VALUES:[LOe/p0$g;

    invoke-virtual {v0}, [LOe/p0$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOe/p0$g;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
