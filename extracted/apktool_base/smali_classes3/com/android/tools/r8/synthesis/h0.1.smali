.class public final synthetic Lcom/android/tools/r8/synthesis/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Yx;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/synthesis/J;

.field public final synthetic b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/h0;->a:Lcom/android/tools/r8/synthesis/J;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/h0;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/h0;->a:Lcom/android/tools/r8/synthesis/J;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/h0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void
.end method
