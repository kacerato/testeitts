.class public final synthetic Lcom/google/android/gms/measurement/internal/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/f;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/x2;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/x2;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w2;->a:Lcom/google/android/gms/measurement/internal/x2;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/w2;->b:J

    return-void
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w2;->a:Lcom/google/android/gms/measurement/internal/x2;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/w2;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/x2;->c(JLjava/lang/Exception;)V

    return-void
.end method
