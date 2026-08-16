.class public final synthetic Lcom/android/tools/r8/internal/f61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/N4$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/bt0;

.field public final synthetic b:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/bt0;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/f61;->a:Lcom/android/tools/r8/internal/bt0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/f61;->b:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/N4;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/f61;->a:Lcom/android/tools/r8/internal/bt0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f61;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    return-object p1
.end method
