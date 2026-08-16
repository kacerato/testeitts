.class public final synthetic Lcom/android/tools/r8/internal/qz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/u70;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/y70;

.field public final synthetic b:Lcom/android/tools/r8/internal/l40;

.field public final synthetic c:Lcom/android/tools/r8/internal/P60;

.field public final synthetic d:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/P60;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qz1;->a:Lcom/android/tools/r8/internal/y70;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qz1;->b:Lcom/android/tools/r8/internal/l40;

    iput-object p3, p0, Lcom/android/tools/r8/internal/qz1;->c:Lcom/android/tools/r8/internal/P60;

    iput-object p4, p0, Lcom/android/tools/r8/internal/qz1;->d:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/ns0;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/qz1;->a:Lcom/android/tools/r8/internal/y70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qz1;->b:Lcom/android/tools/r8/internal/l40;

    iget-object v2, p0, Lcom/android/tools/r8/internal/qz1;->c:Lcom/android/tools/r8/internal/P60;

    iget-object v3, p0, Lcom/android/tools/r8/internal/qz1;->d:Lcom/android/tools/r8/graph/y;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/y70;->a(Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/P60;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method
