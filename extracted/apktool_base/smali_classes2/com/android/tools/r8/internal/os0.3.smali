.class public final enum Lcom/android/tools/r8/internal/os0;
.super Lcom/android/tools/r8/internal/ss0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "DOUBLE"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ss0;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
