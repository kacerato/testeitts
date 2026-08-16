.class public final synthetic Lcom/android/tools/r8/internal/xy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/AA;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/internal/TY;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/TY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xy0;->b:Lcom/android/tools/r8/internal/AA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xy0;->c:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/xy0;->d:Lcom/android/tools/r8/internal/TY;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xy0;->b:Lcom/android/tools/r8/internal/AA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xy0;->c:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/xy0;->d:Lcom/android/tools/r8/internal/TY;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/AA;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/TY;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
