.class public final enum LI2/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LI2/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LI2/o;

.field public static final enum ABSTRACT:LI2/o;

.field public static final enum DEFAULT:LI2/o;

.field public static final enum FINAL:LI2/o;

.field public static final enum NATIVE:LI2/o;

.field public static final enum PRIVATE:LI2/o;

.field public static final enum PROTECTED:LI2/o;

.field public static final enum PUBLIC:LI2/o;

.field public static final enum STATIC:LI2/o;

.field public static final enum STRICTFP:LI2/o;

.field public static final enum SYNCHRONIZED:LI2/o;

.field public static final enum TRANSIENT:LI2/o;

.field public static final enum VOLATILE:LI2/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LI2/o;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->PUBLIC:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "PROTECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->PROTECTED:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "PRIVATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->PRIVATE:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "ABSTRACT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->ABSTRACT:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "DEFAULT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->DEFAULT:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "STATIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->STATIC:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "FINAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->FINAL:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "TRANSIENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->TRANSIENT:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "VOLATILE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->VOLATILE:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "SYNCHRONIZED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->SYNCHRONIZED:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "NATIVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->NATIVE:LI2/o;

    new-instance v0, LI2/o;

    const-string v1, "STRICTFP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LI2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI2/o;->STRICTFP:LI2/o;

    invoke-static {}, LI2/o;->a()[LI2/o;

    move-result-object v0

    sput-object v0, LI2/o;->$VALUES:[LI2/o;

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

.method public static synthetic a()[LI2/o;
    .locals 12

    sget-object v0, LI2/o;->PUBLIC:LI2/o;

    sget-object v1, LI2/o;->PROTECTED:LI2/o;

    sget-object v2, LI2/o;->PRIVATE:LI2/o;

    sget-object v3, LI2/o;->ABSTRACT:LI2/o;

    sget-object v4, LI2/o;->DEFAULT:LI2/o;

    sget-object v5, LI2/o;->STATIC:LI2/o;

    sget-object v6, LI2/o;->FINAL:LI2/o;

    sget-object v7, LI2/o;->TRANSIENT:LI2/o;

    sget-object v8, LI2/o;->VOLATILE:LI2/o;

    sget-object v9, LI2/o;->SYNCHRONIZED:LI2/o;

    sget-object v10, LI2/o;->NATIVE:LI2/o;

    sget-object v11, LI2/o;->STRICTFP:LI2/o;

    filled-new-array/range {v0 .. v11}, [LI2/o;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LI2/o;
    .locals 1

    const-class v0, LI2/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LI2/o;

    return-object p0
.end method

.method public static values()[LI2/o;
    .locals 1

    sget-object v0, LI2/o;->$VALUES:[LI2/o;

    invoke-virtual {v0}, [LI2/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LI2/o;

    return-object v0
.end method
