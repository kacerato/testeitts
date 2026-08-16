.class public final LD0/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l$c;


# instance fields
.field public final e:I

.field public final f:Lcom/google/android/gms/common/api/l;

.field public final g:Lcom/google/android/gms/common/api/l$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final synthetic h:LD0/P0;


# direct methods
.method public constructor <init>(LD0/P0;ILcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/l$c;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/common/api/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LD0/O0;->h:LD0/P0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LD0/O0;->e:I

    iput-object p3, p0, LD0/O0;->f:Lcom/google/android/gms/common/api/l;

    iput-object p4, p0, LD0/O0;->g:Lcom/google/android/gms/common/api/l$c;

    return-void
.end method


# virtual methods
.method public final t(LB0/c;)V
    .locals 3
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoManageHelper"

    const-string v2, "beginFailureResolution for "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, LD0/O0;->e:I

    iget-object v1, p0, LD0/O0;->h:LD0/P0;

    invoke-virtual {v1, p1, v0}, LD0/U0;->t(LB0/c;I)V

    return-void
.end method
