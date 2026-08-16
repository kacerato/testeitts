.class public final enum Lof/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lof/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lof/b;

.field public static final enum ANNOTATION_CLASS:Lof/b;

.field public static final enum CLASS:Lof/b;

.field public static final enum CONSTRUCTOR:Lof/b;

.field public static final enum EXPRESSION:Lof/b;

.field public static final enum FIELD:Lof/b;

.field public static final enum FILE:Lof/b;

.field public static final enum FUNCTION:Lof/b;

.field public static final enum LOCAL_VARIABLE:Lof/b;

.field public static final enum PROPERTY:Lof/b;

.field public static final enum PROPERTY_GETTER:Lof/b;

.field public static final enum PROPERTY_SETTER:Lof/b;

.field public static final enum TYPE:Lof/b;

.field public static final enum TYPEALIAS:Lof/b;
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation
.end field

.field public static final enum TYPE_PARAMETER:Lof/b;

.field public static final enum VALUE_PARAMETER:Lof/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lof/b;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->CLASS:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "ANNOTATION_CLASS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->ANNOTATION_CLASS:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "TYPE_PARAMETER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->TYPE_PARAMETER:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "PROPERTY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->PROPERTY:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "FIELD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->FIELD:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "LOCAL_VARIABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->LOCAL_VARIABLE:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "VALUE_PARAMETER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->VALUE_PARAMETER:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "CONSTRUCTOR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->CONSTRUCTOR:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "FUNCTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->FUNCTION:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "PROPERTY_GETTER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->PROPERTY_GETTER:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "PROPERTY_SETTER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->PROPERTY_SETTER:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "TYPE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->TYPE:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "EXPRESSION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->EXPRESSION:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "FILE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->FILE:Lof/b;

    new-instance v0, Lof/b;

    const-string v1, "TYPEALIAS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lof/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lof/b;->TYPEALIAS:Lof/b;

    invoke-static {}, Lof/b;->a()[Lof/b;

    move-result-object v0

    sput-object v0, Lof/b;->$VALUES:[Lof/b;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lof/b;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Lof/b;
    .locals 15

    sget-object v0, Lof/b;->CLASS:Lof/b;

    sget-object v1, Lof/b;->ANNOTATION_CLASS:Lof/b;

    sget-object v2, Lof/b;->TYPE_PARAMETER:Lof/b;

    sget-object v3, Lof/b;->PROPERTY:Lof/b;

    sget-object v4, Lof/b;->FIELD:Lof/b;

    sget-object v5, Lof/b;->LOCAL_VARIABLE:Lof/b;

    sget-object v6, Lof/b;->VALUE_PARAMETER:Lof/b;

    sget-object v7, Lof/b;->CONSTRUCTOR:Lof/b;

    sget-object v8, Lof/b;->FUNCTION:Lof/b;

    sget-object v9, Lof/b;->PROPERTY_GETTER:Lof/b;

    sget-object v10, Lof/b;->PROPERTY_SETTER:Lof/b;

    sget-object v11, Lof/b;->TYPE:Lof/b;

    sget-object v12, Lof/b;->EXPRESSION:Lof/b;

    sget-object v13, Lof/b;->FILE:Lof/b;

    sget-object v14, Lof/b;->TYPEALIAS:Lof/b;

    filled-new-array/range {v0 .. v14}, [Lof/b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lof/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lof/b;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lof/b;
    .locals 1

    const-class v0, Lof/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lof/b;

    return-object p0
.end method

.method public static values()[Lof/b;
    .locals 1

    sget-object v0, Lof/b;->$VALUES:[Lof/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lof/b;

    return-object v0
.end method
