.class public final synthetic Lcom/android/tools/r8/internal/Eo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nR;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Y9;

.field public final synthetic b:Lcom/android/tools/r8/internal/D9;

.field public final synthetic c:Lcom/android/tools/r8/internal/ea;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;

.field public final synthetic e:Lcom/android/tools/r8/internal/Df;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Eo1;->a:Lcom/android/tools/r8/internal/Y9;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Eo1;->b:Lcom/android/tools/r8/internal/D9;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Eo1;->c:Lcom/android/tools/r8/internal/ea;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Eo1;->d:Lcom/android/tools/r8/graph/H5;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Eo1;->e:Lcom/android/tools/r8/internal/Df;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/Eo1;->a:Lcom/android/tools/r8/internal/Y9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Eo1;->b:Lcom/android/tools/r8/internal/D9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Eo1;->c:Lcom/android/tools/r8/internal/ea;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Eo1;->d:Lcom/android/tools/r8/graph/H5;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Eo1;->e:Lcom/android/tools/r8/internal/Df;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/android/tools/r8/internal/oR;->a(Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
