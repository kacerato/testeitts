.class public Lcom/google/android/gms/internal/auth/z1;
.super Lcom/google/android/gms/internal/auth/U0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/auth/B1<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/auth/z1<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/auth/U0<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/internal/auth/B1;

.field public c:Lcom/google/android/gms/internal/auth/B1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/B1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/U0;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/z1;->b:Lcom/google/android/gms/internal/auth/B1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/B1;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/B1;->c()Lcom/google/android/gms/internal/auth/B1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/z1;->c:Lcom/google/android/gms/internal/auth/B1;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic Q1()Lcom/google/android/gms/internal/auth/d2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/z1;->c()Lcom/google/android/gms/internal/auth/B1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic R1()Lcom/google/android/gms/internal/auth/d2;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic a()Lcom/google/android/gms/internal/auth/U0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/z1;->b()Lcom/google/android/gms/internal/auth/z1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/auth/z1;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/z1;->b:Lcom/google/android/gms/internal/auth/B1;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/B1;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/z1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/z1;->c()Lcom/google/android/gms/internal/auth/B1;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/z1;->c:Lcom/google/android/gms/internal/auth/B1;

    return-object v0
.end method

.method public c()Lcom/google/android/gms/internal/auth/B1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/z1;->c:Lcom/google/android/gms/internal/auth/B1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/B1;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/z1;->c:Lcom/google/android/gms/internal/auth/B1;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/z1;->c:Lcom/google/android/gms/internal/auth/B1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/B1;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/z1;->c:Lcom/google/android/gms/internal/auth/B1;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/z1;->b()Lcom/google/android/gms/internal/auth/z1;

    move-result-object v0

    return-object v0
.end method
