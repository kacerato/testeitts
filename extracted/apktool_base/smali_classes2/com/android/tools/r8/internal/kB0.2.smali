.class public final synthetic Lcom/android/tools/r8/internal/kB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gt0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/gt0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kB0;->a:Lcom/android/tools/r8/internal/gt0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kB0;->a:Lcom/android/tools/r8/internal/gt0;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/internal/f9;

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/C9;->a(Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/f9;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
