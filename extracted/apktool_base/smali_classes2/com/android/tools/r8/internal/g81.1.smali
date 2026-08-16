.class public final synthetic Lcom/android/tools/r8/internal/g81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/zT;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/d40;

.field public final synthetic b:Lcom/android/tools/r8/internal/c40;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/internal/c40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/g81;->a:Lcom/android/tools/r8/internal/d40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/g81;->b:Lcom/android/tools/r8/internal/c40;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/g81;->a:Lcom/android/tools/r8/internal/d40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/g81;->b:Lcom/android/tools/r8/internal/c40;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/d40;->a(Lcom/android/tools/r8/internal/c40;Lcom/android/tools/r8/graph/H5;I)V

    return-void
.end method
