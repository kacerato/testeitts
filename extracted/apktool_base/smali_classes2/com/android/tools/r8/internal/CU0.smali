.class public final synthetic Lcom/android/tools/r8/internal/CU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Gz;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/R00;

.field public final synthetic b:Lcom/android/tools/r8/internal/Gz;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Gz;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/CU0;->a:Lcom/android/tools/r8/internal/R00;

    iput-object p2, p0, Lcom/android/tools/r8/internal/CU0;->b:Lcom/android/tools/r8/internal/Gz;

    iput-object p3, p0, Lcom/android/tools/r8/internal/CU0;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/CU0;->d:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/NW;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU0;->a:Lcom/android/tools/r8/internal/R00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CU0;->b:Lcom/android/tools/r8/internal/Gz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/CU0;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/CU0;->d:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/internal/Gz;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method
