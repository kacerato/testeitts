.class public final synthetic Lcom/android/tools/r8/internal/U21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/a6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/a6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/U21;->a:Lcom/android/tools/r8/graph/a6;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/U21;->a:Lcom/android/tools/r8/graph/a6;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
