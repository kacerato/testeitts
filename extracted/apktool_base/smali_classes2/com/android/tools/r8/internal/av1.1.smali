.class public final synthetic Lcom/android/tools/r8/internal/av1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/I;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/um;

.field public final synthetic b:Lcom/android/tools/r8/internal/Yj;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/internal/Yj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/av1;->a:Lcom/android/tools/r8/internal/um;

    iput-object p2, p0, Lcom/android/tools/r8/internal/av1;->b:Lcom/android/tools/r8/internal/Yj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/av1;->a:Lcom/android/tools/r8/internal/um;

    iget-object v1, p0, Lcom/android/tools/r8/internal/av1;->b:Lcom/android/tools/r8/internal/Yj;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    return-object p1
.end method
