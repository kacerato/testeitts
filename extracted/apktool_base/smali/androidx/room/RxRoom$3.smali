.class Landroidx/room/RxRoom$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/E;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RxRoom;->createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)LBe/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBe/E<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$database:Landroidx/room/RoomDatabase;

.field final synthetic val$tableNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$tableNames",
            "val$database"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RxRoom$3;->val$tableNames:[Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/RxRoom$3;->val$database:Landroidx/room/RoomDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(LBe/D;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "emitter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/D<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroidx/room/RxRoom$3$1;

    iget-object v1, p0, Landroidx/room/RxRoom$3;->val$tableNames:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Landroidx/room/RxRoom$3$1;-><init>(Landroidx/room/RxRoom$3;[Ljava/lang/String;LBe/D;)V

    iget-object v1, p0, Landroidx/room/RxRoom$3;->val$database:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    new-instance v1, Landroidx/room/RxRoom$3$2;

    invoke-direct {v1, p0, v0}, Landroidx/room/RxRoom$3$2;-><init>(Landroidx/room/RxRoom$3;Landroidx/room/InvalidationTracker$Observer;)V

    invoke-static {v1}, LDe/d;->c(LFe/a;)LDe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LBe/D;->g(LDe/c;)V

    sget-object v0, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    invoke-interface {p1, v0}, LBe/k;->h(Ljava/lang/Object;)V

    return-void
.end method
