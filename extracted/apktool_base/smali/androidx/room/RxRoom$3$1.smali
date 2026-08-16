.class Landroidx/room/RxRoom$3$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RxRoom$3;->subscribe(LBe/D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/RxRoom$3;

.field final synthetic val$emitter:LBe/D;


# direct methods
.method public constructor <init>(Landroidx/room/RxRoom$3;[Ljava/lang/String;LBe/D;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "tables",
            "val$emitter"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RxRoom$3$1;->this$0:Landroidx/room/RxRoom$3;

    iput-object p3, p0, Landroidx/room/RxRoom$3$1;->val$emitter:LBe/D;

    invoke-direct {p0, p2}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Landroidx/room/RxRoom$3$1;->val$emitter:LBe/D;

    sget-object v0, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    invoke-interface {p1, v0}, LBe/k;->h(Ljava/lang/Object;)V

    return-void
.end method
