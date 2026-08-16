.class public final synthetic Lcom/android/tools/r8/internal/OP0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ft0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/OV;

.field public final synthetic b:Lcom/android/tools/r8/internal/kK;

.field public final synthetic c:Lcom/android/tools/r8/internal/ft0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/OV;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/ft0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/OP0;->a:Lcom/android/tools/r8/internal/OV;

    iput-object p2, p0, Lcom/android/tools/r8/internal/OP0;->b:Lcom/android/tools/r8/internal/kK;

    iput-object p3, p0, Lcom/android/tools/r8/internal/OP0;->c:Lcom/android/tools/r8/internal/ft0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/OP0;->a:Lcom/android/tools/r8/internal/OV;

    iget-object v1, p0, Lcom/android/tools/r8/internal/OP0;->b:Lcom/android/tools/r8/internal/kK;

    iget-object v2, p0, Lcom/android/tools/r8/internal/OP0;->c:Lcom/android/tools/r8/internal/ft0;

    move-object v3, p1

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    move-object v4, p2

    check-cast v4, Lcom/android/tools/r8/graph/Z4$c;

    move-object v5, p3

    check-cast v5, Lcom/android/tools/r8/internal/m80;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/OV;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;)V

    return-void
.end method
