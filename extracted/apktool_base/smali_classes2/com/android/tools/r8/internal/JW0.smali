.class public final synthetic Lcom/android/tools/r8/internal/JW0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/android/tools/r8/graph/u1;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:Lcom/android/tools/r8/graph/E0;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/JW0;->a:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/JW0;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/JW0;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/JW0;->d:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 4

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/JW0;->a:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/JW0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/JW0;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/JW0;->d:Lcom/android/tools/r8/graph/E0;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/T2;->a(ZLcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
