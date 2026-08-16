.class public final LD0/E;
.super LD0/V;
.source "SourceFile"


# instance fields
.field public final synthetic b:LG0/f$c;


# direct methods
.method public constructor <init>(LD0/F;Lcom/google/android/gms/common/api/internal/r;LG0/f$c;)V
    .locals 0

    iput-object p3, p0, LD0/E;->b:LG0/f$c;

    invoke-direct {p0, p2}, LD0/V;-><init>(Lcom/google/android/gms/common/api/internal/r;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    new-instance v0, LB0/c;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, LD0/E;->b:LG0/f$c;

    invoke-interface {v1, v0}, LG0/f$c;->b(LB0/c;)V

    return-void
.end method
