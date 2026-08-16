.class public abstract LD0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD0/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[LB0/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LD0/r;->a:[LB0/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, LD0/r;->b:Z

    iput v0, p0, LD0/r;->c:I

    return-void
.end method

.method public constructor <init>([LB0/e;ZI)V
    .locals 1
    .param p1    # [LB0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/r;->a:[LB0/e;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, LD0/r;->b:Z

    iput p3, p0, LD0/r;->c:I

    return-void
.end method

.method public static a()LD0/r$a;
    .locals 2
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">()",
            "LD0/r$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    new-instance v0, LD0/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LD0/r$a;-><init>(LD0/E0;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Lcom/google/android/gms/common/api/a$b;Lv1/l;)V
    .param p1    # Lcom/google/android/gms/common/api/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lv1/l<",
            "TResultT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public c()Z
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-boolean v0, p0, LD0/r;->b:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LD0/r;->c:I

    return v0
.end method

.method public final e()[LB0/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LD0/r;->a:[LB0/e;

    return-object v0
.end method
