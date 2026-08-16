.class public final enum LDc/d$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDc/d$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDc/d$c;

.field public static final enum CpuOnly:LDc/d$c;

.field public static final enum Dynamic:LDc/d$c;

.field public static final enum Static:LDc/d$c;

.field public static final enum Stream:LDc/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LDc/d$c;

    const-string v1, "Static"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LDc/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$c;->Static:LDc/d$c;

    new-instance v0, LDc/d$c;

    const-string v1, "Dynamic"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LDc/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$c;->Dynamic:LDc/d$c;

    new-instance v0, LDc/d$c;

    const-string v1, "Stream"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LDc/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$c;->Stream:LDc/d$c;

    new-instance v0, LDc/d$c;

    const-string v1, "CpuOnly"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LDc/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$c;->CpuOnly:LDc/d$c;

    invoke-static {}, LDc/d$c;->a()[LDc/d$c;

    move-result-object v0

    sput-object v0, LDc/d$c;->$VALUES:[LDc/d$c;

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

.method public static synthetic a()[LDc/d$c;
    .locals 4

    sget-object v0, LDc/d$c;->Static:LDc/d$c;

    sget-object v1, LDc/d$c;->Dynamic:LDc/d$c;

    sget-object v2, LDc/d$c;->Stream:LDc/d$c;

    sget-object v3, LDc/d$c;->CpuOnly:LDc/d$c;

    filled-new-array {v0, v1, v2, v3}, [LDc/d$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LDc/d$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LDc/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDc/d$c;

    return-object p0
.end method

.method public static values()[LDc/d$c;
    .locals 1

    sget-object v0, LDc/d$c;->$VALUES:[LDc/d$c;

    invoke-virtual {v0}, [LDc/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDc/d$c;

    return-object v0
.end method
