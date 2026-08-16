.class public final synthetic Lcom/android/tools/r8/internal/Zu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/um;

.field public final synthetic b:Lcom/android/tools/r8/internal/cu;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Lcom/android/tools/r8/internal/rm;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/rm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zu1;->a:Lcom/android/tools/r8/internal/um;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zu1;->b:Lcom/android/tools/r8/internal/cu;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Zu1;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Zu1;->d:Lcom/android/tools/r8/internal/rm;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Zu1;->a:Lcom/android/tools/r8/internal/um;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zu1;->b:Lcom/android/tools/r8/internal/cu;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Zu1;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Zu1;->d:Lcom/android/tools/r8/internal/rm;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/rm;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
