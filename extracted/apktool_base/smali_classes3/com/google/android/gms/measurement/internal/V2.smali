.class public final Lcom/google/android/gms/measurement/internal/V2;
.super Landroidx/collection/LruCache;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/c3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c3;I)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/V2;->a:Lcom/google/android/gms/measurement/internal/c3;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/V2;->a:Lcom/google/android/gms/measurement/internal/c3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e0;

    move-result-object p1

    return-object p1
.end method
