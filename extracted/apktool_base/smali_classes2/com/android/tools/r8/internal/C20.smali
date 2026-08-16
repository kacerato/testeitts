.class public final Lcom/android/tools/r8/internal/C20;
.super Lcom/android/tools/r8/internal/B20;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lU;


# instance fields
.field public final synthetic h:Lcom/android/tools/r8/internal/D20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/D20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/C20;->h:Lcom/android/tools/r8/internal/D20;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/B20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    return-void
.end method


# virtual methods
.method public final l()J
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/C20;->h:Lcom/android/tools/r8/internal/D20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/D20;->c:[J

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B20;->a()I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/C20;->h:Lcom/android/tools/r8/internal/D20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/D20;->c:[J

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B20;->a()I

    move-result v1

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
