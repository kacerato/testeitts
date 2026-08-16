.class public final enum Lw2/S$f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw2/S$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw2/S$f;",
        ">;",
        "Lw2/S$e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lw2/S$f;

.field public static final enum INSTANCE:Lw2/S$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw2/S$f;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw2/S$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/S$f;->INSTANCE:Lw2/S$f;

    invoke-static {}, Lw2/S$f;->a()[Lw2/S$f;

    move-result-object v0

    sput-object v0, Lw2/S$f;->$VALUES:[Lw2/S$f;

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

.method public static synthetic a()[Lw2/S$f;
    .locals 1

    sget-object v0, Lw2/S$f;->INSTANCE:Lw2/S$f;

    filled-new-array {v0}, [Lw2/S$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lw2/S$f;
    .locals 1

    const-class v0, Lw2/S$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw2/S$f;

    return-object p0
.end method

.method public static values()[Lw2/S$f;
    .locals 1

    sget-object v0, Lw2/S$f;->$VALUES:[Lw2/S$f;

    invoke-virtual {v0}, [Lw2/S$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw2/S$f;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    check-cast p1, Lw2/Q;

    invoke-virtual {p0, p1}, Lw2/S$f;->b(Lw2/Q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lw2/Q;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/Q<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-interface {p1}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Suppliers.supplierFunction()"

    return-object v0
.end method
