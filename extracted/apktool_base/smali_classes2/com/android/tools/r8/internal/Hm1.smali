.class public final synthetic Lcom/android/tools/r8/internal/Hm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/sJ;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/references/ClassReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hm1;->a:Lcom/android/tools/r8/references/ClassReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hm1;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/nJ$k;->a(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    return p1
.end method
