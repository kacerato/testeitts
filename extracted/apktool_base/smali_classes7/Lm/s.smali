.class public final enum LLm/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLm/s;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLm/s;

.field public static final enum ALL:LLm/s;

.field public static final enum BOOLEAN:LLm/s;

.field public static final enum CHAR:LLm/s;

.field public static final enum DOUBLE:LLm/s;

.field public static final enum FLOAT:LLm/s;

.field public static final enum INT:LLm/s;

.field public static final enum LONG:LLm/s;

.field public static final enum NULL:LLm/s;

.field public static final enum PRIMITIVE:LLm/s;

.field public static final enum STRING:LLm/s;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, LLm/s;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLm/s;->NULL:LLm/s;

    new-instance v1, LLm/s;

    const-string v2, "INT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v1, LLm/s;->INT:LLm/s;

    new-instance v2, LLm/s;

    const-string v3, "LONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v2, LLm/s;->LONG:LLm/s;

    new-instance v3, LLm/s;

    const-string v4, "FLOAT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v3, LLm/s;->FLOAT:LLm/s;

    new-instance v4, LLm/s;

    const-string v5, "DOUBLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v4, LLm/s;->DOUBLE:LLm/s;

    new-instance v5, LLm/s;

    const-string v6, "BOOLEAN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v5, LLm/s;->BOOLEAN:LLm/s;

    new-instance v6, LLm/s;

    const-string v7, "CHAR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v6, LLm/s;->CHAR:LLm/s;

    new-instance v7, LLm/s;

    const-string v8, "STRING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v7, LLm/s;->STRING:LLm/s;

    new-instance v8, LLm/s;

    const-string v9, "ALL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v8, LLm/s;->ALL:LLm/s;

    new-instance v9, LLm/s;

    const-string v10, "PRIMITIVE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, LLm/s;-><init>(Ljava/lang/String;I)V

    sput-object v9, LLm/s;->PRIMITIVE:LLm/s;

    filled-new-array/range {v0 .. v9}, [LLm/s;

    move-result-object v0

    sput-object v0, LLm/s;->$VALUES:[LLm/s;

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

.method public static a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LLm/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, LLm/s;->values()[LLm/s;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, LLm/s;->ALL:LLm/s;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, LLm/s;->PRIMITIVE:LLm/s;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LLm/s;",
            ">;"
        }
    .end annotation

    sget-object v0, LLm/s;->INT:LLm/s;

    sget-object v1, LLm/s;->LONG:LLm/s;

    sget-object v2, LLm/s;->FLOAT:LLm/s;

    sget-object v3, LLm/s;->DOUBLE:LLm/s;

    sget-object v4, LLm/s;->BOOLEAN:LLm/s;

    sget-object v5, LLm/s;->CHAR:LLm/s;

    filled-new-array/range {v0 .. v5}, [LLm/s;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLm/s;
    .locals 1

    const-class v0, LLm/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLm/s;

    return-object p0
.end method

.method public static values()[LLm/s;
    .locals 1

    sget-object v0, LLm/s;->$VALUES:[LLm/s;

    invoke-virtual {v0}, [LLm/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLm/s;

    return-object v0
.end method
