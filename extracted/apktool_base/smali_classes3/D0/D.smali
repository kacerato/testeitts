.class public final LD0/D;
.super LD0/V;
.source "SourceFile"


# instance fields
.field public final synthetic b:LB0/c;

.field public final synthetic c:LD0/F;


# direct methods
.method public constructor <init>(LD0/F;Lcom/google/android/gms/common/api/internal/r;LB0/c;)V
    .locals 0

    iput-object p1, p0, LD0/D;->c:LD0/F;

    iput-object p3, p0, LD0/D;->b:LB0/c;

    invoke-direct {p0, p2}, LD0/V;-><init>(Lcom/google/android/gms/common/api/internal/r;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, LD0/D;->c:LD0/F;

    iget-object v0, v0, LD0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    iget-object v1, p0, LD0/D;->b:LB0/c;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/o;->C(Lcom/google/android/gms/common/api/internal/o;LB0/c;)V

    return-void
.end method
