.class public final LD0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/gms/common/api/internal/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/u;I)V
    .locals 0

    iput-object p1, p0, LD0/a0;->c:Lcom/google/android/gms/common/api/internal/u;

    iput p2, p0, LD0/a0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LD0/a0;->c:Lcom/google/android/gms/common/api/internal/u;

    iget v1, p0, LD0/a0;->b:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/u;->B(Lcom/google/android/gms/common/api/internal/u;I)V

    return-void
.end method
