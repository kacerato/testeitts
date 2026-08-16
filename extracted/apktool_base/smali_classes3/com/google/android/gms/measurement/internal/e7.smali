.class public final Lcom/google/android/gms/measurement/internal/e7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lcom/google/android/gms/internal/measurement/l3;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Map;

.field public e:Lcom/google/android/gms/measurement/internal/k5;

.field public f:J

.field public g:J

.field public h:J

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/measurement/internal/f7;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/gms/measurement/internal/f7;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/e7;->a:J

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e7;->b:Lcom/google/android/gms/internal/measurement/l3;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/e7;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/e7;->d:Ljava/util/Map;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/e7;->e:Lcom/google/android/gms/measurement/internal/k5;

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/e7;->f:J

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/e7;->g:J

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/e7;->h:J

    iget v14, v0, Lcom/google/android/gms/measurement/internal/e7;->i:I

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/f7;-><init>(JLcom/google/android/gms/internal/measurement/l3;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;JJJI[B)V

    return-object v16
.end method

.method public final b(J)Lcom/google/android/gms/measurement/internal/e7;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/e7;->a:J

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/measurement/l3;)Lcom/google/android/gms/measurement/internal/e7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e7;->b:Lcom/google/android/gms/internal/measurement/l3;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/e7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e7;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/e7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/e7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e7;->e:Lcom/google/android/gms/measurement/internal/k5;

    return-object p0
.end method

.method public final g(J)Lcom/google/android/gms/measurement/internal/e7;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/e7;->f:J

    return-object p0
.end method

.method public final h(J)Lcom/google/android/gms/measurement/internal/e7;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/e7;->g:J

    return-object p0
.end method

.method public final i(J)Lcom/google/android/gms/measurement/internal/e7;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/e7;->h:J

    return-object p0
.end method

.method public final j(I)Lcom/google/android/gms/measurement/internal/e7;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/measurement/internal/e7;->i:I

    return-object p0
.end method
