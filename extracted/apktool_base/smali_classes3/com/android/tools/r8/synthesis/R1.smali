.class public final synthetic Lcom/android/tools/r8/synthesis/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/bt0;

.field public final synthetic c:Lcom/android/tools/r8/synthesis/v;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/bt0;Lcom/android/tools/r8/synthesis/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/R1;->b:Lcom/android/tools/r8/internal/bt0;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/R1;->c:Lcom/android/tools/r8/synthesis/v;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/R1;->b:Lcom/android/tools/r8/internal/bt0;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/R1;->c:Lcom/android/tools/r8/synthesis/v;

    check-cast p1, Lcom/android/tools/r8/synthesis/w;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/internal/bt0;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/synthesis/w;)V

    return-void
.end method
