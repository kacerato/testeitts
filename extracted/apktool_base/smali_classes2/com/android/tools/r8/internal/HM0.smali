.class public final synthetic Lcom/android/tools/r8/internal/HM0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ft0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/MV;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/MV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HM0;->a:Lcom/android/tools/r8/internal/MV;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HM0;->a:Lcom/android/tools/r8/internal/MV;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    check-cast p2, Lcom/android/tools/r8/graph/Z4$c;

    check-cast p3, Lcom/android/tools/r8/internal/m80;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/MV;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;)V

    return-void
.end method
