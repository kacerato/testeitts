.class public final synthetic Lcom/android/tools/r8/internal/sb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/bq0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/fq0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sb1;->a:Lcom/android/tools/r8/internal/fq0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/L2;I)Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sb1;->a:Lcom/android/tools/r8/internal/fq0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/graph/L2;I)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method
