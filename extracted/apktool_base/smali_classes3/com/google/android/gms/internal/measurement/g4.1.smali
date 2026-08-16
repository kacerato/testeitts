.class public final synthetic Lcom/google/android/gms/internal/measurement/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/d4;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/h4;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/h4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g4;->a:Lcom/google/android/gms/internal/measurement/h4;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/g4;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic N1()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g4;->a:Lcom/google/android/gms/internal/measurement/h4;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/g4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/h4;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
