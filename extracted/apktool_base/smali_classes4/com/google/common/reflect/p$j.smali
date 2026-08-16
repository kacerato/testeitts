.class public abstract enum Lcom/google/common/reflect/p$j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/p$j;",
        ">;",
        "Lw2/I<",
        "Lcom/google/common/reflect/p<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/reflect/p$j;

.field public static final enum IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/p$j;

.field public static final enum INTERFACE_ONLY:Lcom/google/common/reflect/p$j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/reflect/p$j$a;

    const-string v1, "IGNORE_TYPE_VARIABLE_OR_WILDCARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/p$j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/p$j;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/p$j;

    new-instance v0, Lcom/google/common/reflect/p$j$b;

    const-string v1, "INTERFACE_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/p$j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/p$j;->INTERFACE_ONLY:Lcom/google/common/reflect/p$j;

    invoke-static {}, Lcom/google/common/reflect/p$j;->a()[Lcom/google/common/reflect/p$j;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/p$j;->$VALUES:[Lcom/google/common/reflect/p$j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/p$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/p$j;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/reflect/p$j;
    .locals 2

    sget-object v0, Lcom/google/common/reflect/p$j;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/p$j;

    sget-object v1, Lcom/google/common/reflect/p$j;->INTERFACE_ONLY:Lcom/google/common/reflect/p$j;

    filled-new-array {v0, v1}, [Lcom/google/common/reflect/p$j;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/p$j;
    .locals 1

    const-class v0, Lcom/google/common/reflect/p$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/reflect/p$j;

    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/p$j;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/p$j;->$VALUES:[Lcom/google/common/reflect/p$j;

    invoke-virtual {v0}, [Lcom/google/common/reflect/p$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/p$j;

    return-object v0
.end method
