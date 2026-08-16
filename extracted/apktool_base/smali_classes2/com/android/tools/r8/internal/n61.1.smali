.class public final synthetic Lcom/android/tools/r8/internal/n61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ft0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/bx0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/bx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/n61;->a:Lcom/android/tools/r8/internal/bx0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/n61;->a:Lcom/android/tools/r8/internal/bx0;

    check-cast p1, Ljava/util/Set;

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/bx0;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
