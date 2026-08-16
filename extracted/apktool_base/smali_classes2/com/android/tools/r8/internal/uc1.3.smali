.class public final synthetic Lcom/android/tools/r8/internal/uc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/w5;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/qa;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/qa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uc1;->a:Lcom/android/tools/r8/internal/qa;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uc1;->a:Lcom/android/tools/r8/internal/qa;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/h7;->a(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;

    move-result-object p1

    return-object p1
.end method
