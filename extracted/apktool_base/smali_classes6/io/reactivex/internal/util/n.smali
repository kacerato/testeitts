.class public final enum Lio/reactivex/internal/util/n;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LFe/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/util/n;",
        ">;",
        "LFe/c<",
        "Ljava/util/List;",
        "Ljava/lang/Object;",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/util/n;

.field public static final enum INSTANCE:Lio/reactivex/internal/util/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex/internal/util/n;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/n;->INSTANCE:Lio/reactivex/internal/util/n;

    filled-new-array {v0}, [Lio/reactivex/internal/util/n;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/util/n;->$VALUES:[Lio/reactivex/internal/util/n;

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

.method public static b()LFe/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LFe/c<",
            "Ljava/util/List<",
            "TT;>;TT;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/n;->INSTANCE:Lio/reactivex/internal/util/n;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/n;
    .locals 1

    const-class v0, Lio/reactivex/internal/util/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/util/n;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/util/n;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/n;->$VALUES:[Lio/reactivex/internal/util/n;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/n;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/util/n;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
