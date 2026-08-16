.class public final LM0/d;
.super LM0/j;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/common/api/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/f;)V
    .locals 0

    invoke-direct {p0}, LM0/j;-><init>()V

    iput-object p1, p0, LM0/d;->e:Lcom/google/android/gms/common/api/internal/f;

    return-void
.end method


# virtual methods
.method public final X0(LL0/i;)V
    .locals 1

    new-instance v0, LM0/c;

    invoke-direct {v0, p0, p1}, LM0/c;-><init>(LM0/d;LL0/i;)V

    iget-object p1, p0, LM0/d;->e:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/f;->d(Lcom/google/android/gms/common/api/internal/f$b;)V

    return-void
.end method
