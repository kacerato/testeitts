.class public final synthetic Lcom/android/tools/r8/internal/pH0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZH;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/proto/c;

.field public final synthetic b:Lcom/android/tools/r8/internal/FF;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/FF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pH0;->a:Lcom/android/tools/r8/graph/proto/c;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pH0;->b:Lcom/android/tools/r8/internal/FF;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/pH0;->a:Lcom/android/tools/r8/graph/proto/c;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pH0;->b:Lcom/android/tools/r8/internal/FF;

    check-cast p2, Lcom/android/tools/r8/internal/u50;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Hg;->a(Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/FF;ILcom/android/tools/r8/internal/u50;)V

    return-void
.end method
