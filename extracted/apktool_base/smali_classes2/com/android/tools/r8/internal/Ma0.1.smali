.class public final Lcom/android/tools/r8/internal/Ma0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Tf0;

.field public final synthetic c:Lcom/android/tools/r8/internal/Na0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Tf0;Lcom/android/tools/r8/internal/Na0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ma0;->b:Lcom/android/tools/r8/internal/Tf0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ma0;->c:Lcom/android/tools/r8/internal/Na0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/tools/r8/internal/lu;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/tools/r8/internal/lu;->a:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/lu;->d:Lcom/android/tools/r8/internal/Ug0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ma0;->b:Lcom/android/tools/r8/internal/Tf0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ig0;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ng0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ma0;->c:Lcom/android/tools/r8/internal/Na0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ma0;->b:Lcom/android/tools/r8/internal/Tf0;

    new-instance v3, Lcom/android/tools/r8/internal/se0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Na0;->a:Lcom/android/tools/r8/internal/Gf0;

    invoke-direct {v3, v1, v2, p1, v0}, Lcom/android/tools/r8/internal/se0;-><init>(Lcom/android/tools/r8/internal/Gf0;Lcom/android/tools/r8/internal/Tf0;Lcom/android/tools/r8/internal/Ug0;Lcom/android/tools/r8/internal/ng0;)V

    return-object v3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
