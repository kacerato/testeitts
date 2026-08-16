.class public final LD0/D0;
.super LD0/r;
.source "SourceFile"


# instance fields
.field public final synthetic d:LD0/r$a;


# direct methods
.method public constructor <init>(LD0/r$a;[LB0/e;ZI)V
    .locals 0

    iput-object p1, p0, LD0/D0;->d:LD0/r$a;

    invoke-direct {p0, p2, p3, p4}, LD0/r;-><init>([LB0/e;ZI)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/a$b;Lv1/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LD0/D0;->d:LD0/r$a;

    invoke-static {v0}, LD0/r$a;->g(LD0/r$a;)LD0/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LD0/n;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
