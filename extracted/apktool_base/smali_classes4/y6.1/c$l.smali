.class public final enum Ly6/c$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly6/c$l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ly6/c$l;

.field public static final enum MissingEditor:Ly6/c$l;

.field public static final enum MissingJava:Ly6/c$l;

.field public static final enum Welcome:Ly6/c$l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly6/c$l;

    const-string v1, "Welcome"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly6/c$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly6/c$l;->Welcome:Ly6/c$l;

    new-instance v0, Ly6/c$l;

    const-string v1, "MissingJava"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ly6/c$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly6/c$l;->MissingJava:Ly6/c$l;

    new-instance v0, Ly6/c$l;

    const-string v1, "MissingEditor"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ly6/c$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly6/c$l;->MissingEditor:Ly6/c$l;

    invoke-static {}, Ly6/c$l;->a()[Ly6/c$l;

    move-result-object v0

    sput-object v0, Ly6/c$l;->$VALUES:[Ly6/c$l;

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

.method public static synthetic a()[Ly6/c$l;
    .locals 3

    sget-object v0, Ly6/c$l;->Welcome:Ly6/c$l;

    sget-object v1, Ly6/c$l;->MissingJava:Ly6/c$l;

    sget-object v2, Ly6/c$l;->MissingEditor:Ly6/c$l;

    filled-new-array {v0, v1, v2}, [Ly6/c$l;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ly6/c$l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Ly6/c$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly6/c$l;

    return-object p0
.end method

.method public static values()[Ly6/c$l;
    .locals 1

    sget-object v0, Ly6/c$l;->$VALUES:[Ly6/c$l;

    invoke-virtual {v0}, [Ly6/c$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly6/c$l;

    return-object v0
.end method
