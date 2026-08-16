.class public final synthetic Lcom/android/tools/r8/internal/XV0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/S8;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ib;

.field public final synthetic d:Lcom/android/tools/r8/internal/RR;

.field public final synthetic e:Lcom/android/tools/r8/internal/he;

.field public final synthetic f:Lcom/android/tools/r8/internal/nC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/S8;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XV0;->b:Lcom/android/tools/r8/internal/S8;

    iput-object p2, p0, Lcom/android/tools/r8/internal/XV0;->c:Lcom/android/tools/r8/internal/Ib;

    iput-object p3, p0, Lcom/android/tools/r8/internal/XV0;->d:Lcom/android/tools/r8/internal/RR;

    iput-object p4, p0, Lcom/android/tools/r8/internal/XV0;->e:Lcom/android/tools/r8/internal/he;

    iput-object p5, p0, Lcom/android/tools/r8/internal/XV0;->f:Lcom/android/tools/r8/internal/nC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/XV0;->b:Lcom/android/tools/r8/internal/S8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XV0;->c:Lcom/android/tools/r8/internal/Ib;

    iget-object v2, p0, Lcom/android/tools/r8/internal/XV0;->d:Lcom/android/tools/r8/internal/RR;

    iget-object v3, p0, Lcom/android/tools/r8/internal/XV0;->e:Lcom/android/tools/r8/internal/he;

    iget-object v4, p0, Lcom/android/tools/r8/internal/XV0;->f:Lcom/android/tools/r8/internal/nC;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/S8;->b(Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
