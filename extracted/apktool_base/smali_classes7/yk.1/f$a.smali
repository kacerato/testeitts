.class public final enum Lyk/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyk/f$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyk/f$a;

.field public static final enum BIT_STRING:Lyk/f$a;

.field public static final enum BMPString:Lyk/f$a;

.field public static final enum BOOLEAN:Lyk/f$a;

.field public static final enum CHOICE:Lyk/f$a;

.field public static final enum ENUM:Lyk/f$a;

.field public static final enum ENUM_ITEM:Lyk/f$a;

.field public static final enum EXTENSION:Lyk/f$a;

.field public static final enum IA5String:Lyk/f$a;

.field public static final enum INT:Lyk/f$a;

.field public static final enum IS0646String:Lyk/f$a;

.field public static final enum NULL:Lyk/f$a;

.field public static final enum NumericString:Lyk/f$a;

.field public static final enum OCTET_STRING:Lyk/f$a;

.field public static final enum OPAQUE:Lyk/f$a;

.field public static final enum PrintableString:Lyk/f$a;

.field public static final enum SEQ:Lyk/f$a;

.field public static final enum SEQ_OF:Lyk/f$a;

.field public static final enum Supplier:Lyk/f$a;

.field public static final enum Switch:Lyk/f$a;

.field public static final enum UTF8_STRING:Lyk/f$a;

.field public static final enum UniversalString:Lyk/f$a;

.field public static final enum VisibleString:Lyk/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyk/f$a;

    const-string v1, "SEQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->SEQ:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "SEQ_OF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->SEQ_OF:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "CHOICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->CHOICE:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "ENUM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->ENUM:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "INT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->INT:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "OCTET_STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->OCTET_STRING:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "OPAQUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->OPAQUE:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "UTF8_STRING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->UTF8_STRING:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "BIT_STRING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->BIT_STRING:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "NULL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->NULL:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "EXTENSION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->EXTENSION:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "ENUM_ITEM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->ENUM_ITEM:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "BOOLEAN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->BOOLEAN:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "IS0646String"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->IS0646String:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "PrintableString"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->PrintableString:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "NumericString"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->NumericString:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "BMPString"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->BMPString:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "UniversalString"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->UniversalString:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "IA5String"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->IA5String:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "VisibleString"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->VisibleString:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "Switch"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->Switch:Lyk/f$a;

    new-instance v0, Lyk/f$a;

    const-string v1, "Supplier"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lyk/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk/f$a;->Supplier:Lyk/f$a;

    invoke-static {}, Lyk/f$a;->a()[Lyk/f$a;

    move-result-object v0

    sput-object v0, Lyk/f$a;->$VALUES:[Lyk/f$a;

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

.method public static synthetic a()[Lyk/f$a;
    .locals 22

    sget-object v0, Lyk/f$a;->SEQ:Lyk/f$a;

    sget-object v1, Lyk/f$a;->SEQ_OF:Lyk/f$a;

    sget-object v2, Lyk/f$a;->CHOICE:Lyk/f$a;

    sget-object v3, Lyk/f$a;->ENUM:Lyk/f$a;

    sget-object v4, Lyk/f$a;->INT:Lyk/f$a;

    sget-object v5, Lyk/f$a;->OCTET_STRING:Lyk/f$a;

    sget-object v6, Lyk/f$a;->OPAQUE:Lyk/f$a;

    sget-object v7, Lyk/f$a;->UTF8_STRING:Lyk/f$a;

    sget-object v8, Lyk/f$a;->BIT_STRING:Lyk/f$a;

    sget-object v9, Lyk/f$a;->NULL:Lyk/f$a;

    sget-object v10, Lyk/f$a;->EXTENSION:Lyk/f$a;

    sget-object v11, Lyk/f$a;->ENUM_ITEM:Lyk/f$a;

    sget-object v12, Lyk/f$a;->BOOLEAN:Lyk/f$a;

    sget-object v13, Lyk/f$a;->IS0646String:Lyk/f$a;

    sget-object v14, Lyk/f$a;->PrintableString:Lyk/f$a;

    sget-object v15, Lyk/f$a;->NumericString:Lyk/f$a;

    sget-object v16, Lyk/f$a;->BMPString:Lyk/f$a;

    sget-object v17, Lyk/f$a;->UniversalString:Lyk/f$a;

    sget-object v18, Lyk/f$a;->IA5String:Lyk/f$a;

    sget-object v19, Lyk/f$a;->VisibleString:Lyk/f$a;

    sget-object v20, Lyk/f$a;->Switch:Lyk/f$a;

    sget-object v21, Lyk/f$a;->Supplier:Lyk/f$a;

    filled-new-array/range {v0 .. v21}, [Lyk/f$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyk/f$a;
    .locals 1

    const-class v0, Lyk/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyk/f$a;

    return-object p0
.end method

.method public static values()[Lyk/f$a;
    .locals 1

    sget-object v0, Lyk/f$a;->$VALUES:[Lyk/f$a;

    invoke-virtual {v0}, [Lyk/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyk/f$a;

    return-object v0
.end method
