.class public final synthetic Lcom/android/tools/r8/internal/CD0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gt0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/EM;

.field public final synthetic b:Lcom/android/tools/r8/internal/DO;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/DO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/CD0;->a:Lcom/android/tools/r8/internal/EM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/CD0;->b:Lcom/android/tools/r8/internal/DO;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/CD0;->a:Lcom/android/tools/r8/internal/EM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CD0;->b:Lcom/android/tools/r8/internal/DO;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/internal/DO;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
