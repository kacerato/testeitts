.class public final enum LLi/A$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLi/A$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLi/A$c;

.field public static final enum DecAad:LLi/A$c;

.field public static final enum DecData:LLi/A$c;

.field public static final enum DecFinal:LLi/A$c;

.field public static final enum DecInit:LLi/A$c;

.field public static final enum EncAad:LLi/A$c;

.field public static final enum EncData:LLi/A$c;

.field public static final enum EncFinal:LLi/A$c;

.field public static final enum EncInit:LLi/A$c;

.field public static final enum Uninitialized:LLi/A$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLi/A$c;

    const-string v1, "Uninitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLi/A$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$c;->Uninitialized:LLi/A$c;

    new-instance v0, LLi/A$c;

    const-string v1, "EncInit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LLi/A$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$c;->EncInit:LLi/A$c;

    new-instance v0, LLi/A$c;

    const-string v1, "EncAad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LLi/A$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$c;->EncAad:LLi/A$c;

    new-instance v0, LLi/A$c;

    const-string v1, "EncData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LLi/A$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$c;->EncData:LLi/A$c;

    new-instance v0, LLi/A$c;

    const-string v1, "EncFinal"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LLi/A$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$c;->EncFinal:LLi/A$c;

    new-instance v0, LLi/A$c;

    const-string v1, "DecInit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LLi/A$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$c;->DecInit:LLi/A$c;

    new-instance v0, LLi/A$c;

    const-string v1, "DecAad"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LLi/A$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$c;->DecAad:LLi/A$c;

    new-instance v0, LLi/A$c;

    const-string v1, "DecData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LLi/A$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$c;->DecData:LLi/A$c;

    new-instance v0, LLi/A$c;

    const-string v1, "DecFinal"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LLi/A$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$c;->DecFinal:LLi/A$c;

    invoke-static {}, LLi/A$c;->a()[LLi/A$c;

    move-result-object v0

    sput-object v0, LLi/A$c;->$VALUES:[LLi/A$c;

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

.method public static synthetic a()[LLi/A$c;
    .locals 9

    sget-object v0, LLi/A$c;->Uninitialized:LLi/A$c;

    sget-object v1, LLi/A$c;->EncInit:LLi/A$c;

    sget-object v2, LLi/A$c;->EncAad:LLi/A$c;

    sget-object v3, LLi/A$c;->EncData:LLi/A$c;

    sget-object v4, LLi/A$c;->EncFinal:LLi/A$c;

    sget-object v5, LLi/A$c;->DecInit:LLi/A$c;

    sget-object v6, LLi/A$c;->DecAad:LLi/A$c;

    sget-object v7, LLi/A$c;->DecData:LLi/A$c;

    sget-object v8, LLi/A$c;->DecFinal:LLi/A$c;

    filled-new-array/range {v0 .. v8}, [LLi/A$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLi/A$c;
    .locals 1

    const-class v0, LLi/A$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLi/A$c;

    return-object p0
.end method

.method public static values()[LLi/A$c;
    .locals 1

    sget-object v0, LLi/A$c;->$VALUES:[LLi/A$c;

    invoke-virtual {v0}, [LLi/A$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLi/A$c;

    return-object v0
.end method
