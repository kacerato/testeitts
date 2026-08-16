.class public LPm/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVm/b;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LXm/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LUm/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LXm/a;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LUm/s;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPm/m;->a:Ljava/util/List;

    iput-object p2, p0, LPm/m;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LXm/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LPm/m;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)LUm/s;
    .locals 1

    iget-object v0, p0, LPm/m;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LUm/s;

    return-object p1
.end method
