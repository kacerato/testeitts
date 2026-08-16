.class public final synthetic Lcom/android/tools/r8/internal/Xp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/oi;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/pi;

.field public final synthetic b:Lcom/android/tools/r8/internal/h80;

.field public final synthetic c:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/pi;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xp1;->a:Lcom/android/tools/r8/internal/pi;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xp1;->b:Lcom/android/tools/r8/internal/h80;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Xp1;->c:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xp1;->a:Lcom/android/tools/r8/internal/pi;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xp1;->b:Lcom/android/tools/r8/internal/h80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Xp1;->c:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/pi;->a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
