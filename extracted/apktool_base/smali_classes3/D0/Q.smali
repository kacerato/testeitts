.class public final LD0/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l$c;


# instance fields
.field public final synthetic e:LD0/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/q;LD0/q;)V
    .locals 0

    iput-object p2, p0, LD0/Q;->e:LD0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final t(LB0/c;)V
    .locals 1
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v0, p0, LD0/Q;->e:LD0/q;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
