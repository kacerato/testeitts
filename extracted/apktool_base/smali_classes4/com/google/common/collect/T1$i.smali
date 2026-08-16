.class public final enum Lcom/google/common/collect/T1$i;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw2/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/T1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/T1$i;",
        ">;",
        "Lw2/Q<",
        "Ljava/util/List<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/T1$i;

.field public static final enum INSTANCE:Lcom/google/common/collect/T1$i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/T1$i;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/T1$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/T1$i;->INSTANCE:Lcom/google/common/collect/T1$i;

    invoke-static {}, Lcom/google/common/collect/T1$i;->a()[Lcom/google/common/collect/T1$i;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/T1$i;->$VALUES:[Lcom/google/common/collect/T1$i;

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

.method public static synthetic a()[Lcom/google/common/collect/T1$i;
    .locals 1

    sget-object v0, Lcom/google/common/collect/T1$i;->INSTANCE:Lcom/google/common/collect/T1$i;

    filled-new-array {v0}, [Lcom/google/common/collect/T1$i;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lw2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lw2/Q<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/T1$i;->INSTANCE:Lcom/google/common/collect/T1$i;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/T1$i;
    .locals 1

    const-class v0, Lcom/google/common/collect/T1$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/T1$i;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/T1$i;
    .locals 1

    sget-object v0, Lcom/google/common/collect/T1$i;->$VALUES:[Lcom/google/common/collect/T1$i;

    invoke-virtual {v0}, [Lcom/google/common/collect/T1$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/T1$i;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T1$i;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
