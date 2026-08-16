.class public final synthetic Lcom/google/android/gms/internal/measurement/Z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/d4;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/a4;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/a4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Z3;->a:Lcom/google/android/gms/internal/measurement/a4;

    return-void
.end method


# virtual methods
.method public final synthetic N1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z3;->a:Lcom/google/android/gms/internal/measurement/a4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a4;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
