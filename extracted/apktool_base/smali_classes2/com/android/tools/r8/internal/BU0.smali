.class public final synthetic Lcom/android/tools/r8/internal/BU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Fz;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/R00;

.field public final synthetic b:Lcom/android/tools/r8/internal/Fz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Fz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/BU0;->a:Lcom/android/tools/r8/internal/R00;

    iput-object p2, p0, Lcom/android/tools/r8/internal/BU0;->b:Lcom/android/tools/r8/internal/Fz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/BU0;->a:Lcom/android/tools/r8/internal/R00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/BU0;->b:Lcom/android/tools/r8/internal/Fz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/internal/Fz;Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    return-object p1
.end method
